class Chat {
  int id;
  String profilePictureUrl;
  String fullName;
  String message;
  String time;
  bool seen;
  bool online;

  Chat({
    required this.id,
    required this.profilePictureUrl,
    required this.fullName,
    required this.message,
    required this.time,
    required this.seen,
    required this.online,
  });
}
