class OfferModel {
  final String username;
  final String email;
  final String bio;
  final String senderId;
  final String receiverId;

  OfferModel({
    required this.senderId,
    required this.receiverId,
    required this.username,
    required this.email,
    required this.bio,
  });

  Map<String, dynamic> toMap() {
    return {
      "username": username,
      "senderId": senderId,
      "receiverId": receiverId,
      "email": email,
      "bio": bio,
    };
  }
}
