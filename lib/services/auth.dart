import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'auth_notifier.dart';

class Authentication {
  FirebaseAuth auth = FirebaseAuth.instance;

  void toast(args) {
    FlutterToast.showToast(
      msg: msg,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      backGroundColor: Colors.grey,
      gravity: ToastGravity.BOTTOM,
    );
  }

  //login
  Future<void> login(Users users, AuthNotifier authNotifier, BuildContext context) async {
    UserCredential result;

    try {
      result = await auth.signInWithEmailAndPassword(email: users.email, password: users.password);
    } catch (e) {
      toast(e.message.toString());
    }
    //check verification
    try {
      if (result != null) {
        User user = auth.currentUser;
        if (!user.emailVerified) {
          auth.signOut();
          toast('Email ID not Verified Plz Verify it through email sent to you by us');
        } else if (user != null) {
          print('Logged In : $user');
          authNotifier.setUser(user);

          await getUserDetails(authNotifier);
          print('done');

          //admin or user navigation
          if (authNotifier.userDetails.role == 'admin') {
            Navigator.push(context, MaterialPageRoute(builder: (_) => AdminHomeScreen()));
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (_) => AdminHomeScreen()));
          }
        }
      }
    } catch (e) {
      toast(e.message.toString());
    }
  }

  //sign up
  Future<void> signup(Users users, AuthNotifier authNotifier, BuildContext context) async {
    UserCredential result;
    bool userDataUploaded = false;

    try {
      result = await auth.signInWithEmailAndPassword(email: users.email, password: users.password);
    } catch (e) {
      toast(e.message.toString());
    }
    try {
      if (result != null) {
        await auth.currentUser.updateProfile(displayName: users.displayName);

        User user = result.user;
        await user.sendEmailVerification();

        if (user != null) {
          await user.reload();
          print("Sign up : $user");

          uploadUserData(users, userDataUploaded);
          await auth.signOut();
          authNotifier.setUser(null);

          toast('Verification link is sent to ${user.email}');
          Navigator.pop(context);
        }
      }
    } catch (e) {
      toast(e.message.toString());
    }
  }

  //to upload user data
  Future<void> uploadUserData(Users users, bool userDataUploaded) async {
    bool userDataUploadVar = userDataUploaded;

    User currentUser = auth.currentUser;
    users.uuid = currentUser.uid;
    CollectionReference userRef = FirebaseFirestore.instance.collection('users');

    //check data uploaded or not
    if (userDataUploadVar != true) {
      await userRef.doc(currentUser.uid).set(users.toMap()).catchEror((e) => print(e)).then((value) => userDataUploadVar = true);
    }
  }

  //to get user details
  Future<void> getUserDetails(AuthNotifier authNotifier) {
    FirebaseFirestore.instance.collection('users').doc(authNotifier.user.uid).get().catchEror((e) => print(e)).then((value) => (value != null) ? authNotifier.setUserDetails(Users.fromMap(value.data())) : print(value));
  }

  //initialize current user
  Future<void> initializeCurrentUser() {
    User user = auth.currentUser;

    if (user != null) {
      authNotifier.setUser(user);
      await getUserDetails(authNotifier);
    }
  }

  //signOut
  Future<void> signOut(AuthNotifier authNotifier, BuildContext context) async {
    await auth.signOut();

    authNotifier.setUser(null);
    print('Log Out');
    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
  }
}
