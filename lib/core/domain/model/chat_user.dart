class ChatUser {
  final String uid;
  final String name;
  final String email;
  final String imageUrl;
  late DateTime lastActive;

  ChatUser(
      {required this.name,
      required this.email,
      required this.imageUrl,
      required this.lastActive,
      required this.uid});

  factory ChatUser.fromJSON(Map<String, dynamic> json) {
    return ChatUser(
        name: json['name'],
        email: json['email'],
        imageUrl: json['imageUrl'],
        lastActive: json['lastActive'].toDate(),
        uid: json['imageUrl']);
  }

  Map<String, dynamic> toMap() {
    return {
      "email": email,
      "name": name,
      "uid": uid,
      "last_active": lastActive,
      "image": imageUrl
    };
  }

  String lastDayActive() {
    return "${lastActive.month}/${lastActive.day}/${lastActive.year}";
  }

  bool wasRecentlyActive() {
    return DateTime.now().difference(lastActive).inHours < 2;
  }
}
