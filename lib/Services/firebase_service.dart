import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class FirebaseServices {
  Future<void> updateUserInfo(String userId,
      List<String> documents,
      String githubUsername,
      String linkedinUsername,
      String website,
  ) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // Check if the document exists
        DocumentSnapshot snapshot = await FirebaseFirestore.instance
            .collection('Mentors')
            .doc(userId)
            .get(

        );

        if (snapshot.exists) {
          // Document exists, perform update
          await FirebaseFirestore.instance
              .collection('Mentors')
              .doc(userId)
              .update({
            'documents': documents,
            'github':githubUsername,
            'linkedin':linkedinUsername,
            'website':website,

          });
        } else {
          // Document does not exist, create it
          await FirebaseFirestore.instance
              .collection('Mentors')
              .doc(userId)
              .set({
            'documents': documents,
            'github':githubUsername,
            'linkedin':linkedinUsername,
            'website':website,
          }, SetOptions(merge: true));
        }
      } else {
        // User is not authenticated
        print('User is not authenticated');
      }
    } catch (e) {
      print('Error updating user info: $e');
      rethrow;
    }
  }
}
