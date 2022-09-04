import 'package:vred/models/card_model.dart';

class UserModel {
  final String uid; // unique id for each user
  final String firstName;
  final String lastName;
  final int age;
  final String phoneNumber;
  final int points; // vred points for each user
  final List<CardModel> cards; // list of cards for each user
  UserModel({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.phoneNumber,
    required this.points,
    required this.cards,
  });
  // final List<CardModel>

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
      'phoneNumber': phoneNumber,
      'points': points,
      'cards': cards.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      age: map['age']?.toInt() ?? 0,
      phoneNumber: map['phoneNumber'] ?? '',
      points: map['points']?.toInt() ?? 0,
      cards: List<CardModel>.from(map['cards']?.map((x) => CardModel.fromMap(x))),
    );
  }
}
