import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../Providers/user_data_provider.dart';

class FirebaseServices extends ChangeNotifier {
  Future<void> updateUserInfo(BuildContext context, Map<String, dynamic> userData) async {
    var userDataProvider = Provider.of<UserDataProvider>(
      context,
      listen: false,
    );

    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        await FirebaseFirestore.instance.collection('Mentors').doc(user.uid).update({
          'documents': userData,
        });

        print('Data saved to Firestore successfully!');
      } else {
        print('User is not authenticated');
      }
    } catch (e) {
      print('Error saving data to Firestore: $e');
    }
  }
}




