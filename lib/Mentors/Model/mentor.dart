import 'dart:typed_data';

class UserData {
  String userId;
  String firstName;
  String lastName;
  String bio;
  String country;
  String city;
  String avatarUrl;
  String displayName;
  String programInterest;
  String yearOfExperience;
  String mentorBefore;
  String technicalProficiency;
  String previousRoleHeld;
  String documents;
  String socialMedia;
  String username;
  String website;
  String githubUsername;
  String linkedinUsername;
  Uint8List avatarBytes;


  UserData({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.country,
    required this.city,
    required this.avatarUrl,
    required this.displayName,
    required this.programInterest,
    required this.yearOfExperience,
    required this.mentorBefore,
    required this.technicalProficiency,
    required this.previousRoleHeld,
    required this.documents,
    required this.socialMedia,
    required this.username,
    required this.githubUsername,
    required this.linkedinUsername,
    required this.website,
    required this.avatarBytes,
  });
}