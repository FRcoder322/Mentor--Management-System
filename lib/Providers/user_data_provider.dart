import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Model/mentor.dart';


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
    // Here you should implement the logic to fetch user data from your data source
    // For example, you might use Firebase Firestore or any other data source
    // Replace the following lines with your actual implementation

    // Assuming you have a Firestore collection 'Users'
    FirebaseFirestore.instance.collection('Mentors').doc(userId).get().then((doc) {
      if (doc.exists) {
        // Update the _userData with the fetched data
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

        // Notify listeners to update the UI
        notifyListeners();
      } else {
        print('Document does not exist');
      }
    }).catchError((error) {
      print('Error getting user data: $error');
    });
  }
}
