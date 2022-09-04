class CardModel {
  final String userId; // asscoiated userId to combine the 2 models
  final String cardId; // unique id for each card
  final String cardCompany;
  final String cardNumber;
  final DateTime expiry; // when the card will expire
  // final int cvv; // 3 digit code on the back of the card
  // default cardType is visa as a choice
  final String bankBalance; // how much money is in the bank account
  CardModel({
    required this.userId,
    required this.cardId,
    required this.cardCompany,
    required this.cardNumber,
    required this.expiry,
    required this.bankBalance,
  });
  // should make this req to bank api but here we will just use a random number

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'cardId': cardId,
      'cardCompany': cardCompany,
      'cardNumber': cardNumber,
      'expiry': expiry.millisecondsSinceEpoch,
      'bankBalance': bankBalance,
    };
  }

  factory CardModel.fromMap(Map<String, dynamic> map) {
    return CardModel(
      userId: map['userId'] ?? '',
      cardId: map['cardId'] ?? '',
      cardCompany: map['cardCompany'] ?? '',
      cardNumber: map['cardNumber'] ?? '',
      expiry: DateTime.fromMillisecondsSinceEpoch(map['expiry']),
      bankBalance: map['bankBalance'] ?? '',
    );
  }
}
