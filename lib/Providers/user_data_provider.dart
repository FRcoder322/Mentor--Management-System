import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Mentors/Model/mentor.dart';



class UserDataProvider extends ChangeNotifier {
  UserData _userData = UserData(
    userId: '',
    firstName: '',
    lastName: '',
    bio: '',
    country: '',
    city: '',
    avatarUrl: '',
    displayName: '',
    programInterest: '',
    yearOfExperience: '',
    mentorBefore: '',
    technicalProficiency: '',
    previousRoleHeld: '',
    documents: '',
    socialMedia: '',
    username: '',
    githubUsername: '',
    linkedinUsername: '',
  );

  UserData get userData => _userData;


  void getUserDataById(String userId) {


    FirebaseFirestore.instance.collection('Mentors').doc(userId).get().then((doc) {
      if (doc.exists) {
        _userData = UserData(
          userId: doc.id,
          firstName: doc['firstName'],
          lastName: doc['lastName'],
          bio: doc['bio'],
          country: doc['country'],
          city: doc['city'],
          avatarUrl: doc['avatar'],
          displayName: doc ['Name'],
          programInterest:doc ['programInterest'],
          yearOfExperience:doc ['yearOfExperience'],
          mentorBefore: doc['mentorBefore'],
          technicalProficiency:doc ['technicalProficiency'],
          previousRoleHeld:doc ['previousRoleHeld'],
          documents:doc ['documents'],
          socialMedia:doc ['socialMedia'],
          username:doc ['username'],
          githubUsername:doc ['githubUsername'],
          linkedinUsername:doc ['linkedinUsername'],
        );

        notifyListeners();
      } else {
        print('Document does not exist');
      }
    }).catchError((error) {
      print('Error getting user data: $error');
    });
  }
}

final _userDataController = StreamController<UserData>();
Stream<UserData> get userDataStream => _userDataController.stream;
