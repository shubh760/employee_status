import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  int workingPeriod;
  int age;

  User(
      {required this.name,
      required this.workingPeriod,
      required this.age,});

  Map<String, dynamic> toJason() =>
      {"name": name, "workingPeriod": workingPeriod, "age": age,};
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
        name: snapshot['name'],
        workingPeriod: snapshot['workingPeriod'],
        age: snapshot['age'],);
  }
}
