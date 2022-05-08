import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String profilPhoto;
  String email;
  String uid;
  // String age;
  // String interest;

  User({
    required this.name,
    required this.profilPhoto,
    required this.email,
    required this.uid,
    // required this.age,
    // required this.interest,
  });
  Map<String, dynamic> toJson() => {
        "name": name,
        "profilePhoto": profilPhoto,
        'email': email,
        "uid": uid,
        // "age": age,
        // "interest": interest,
      };
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      name: snapshot['name'],
      profilPhoto: snapshot['profilPhoto'],
      email: snapshot['email'],
      uid: snapshot['uid'],
      // age: snapshot['age'],
      // interest: snapshot['interest'],
    );
  }
}
