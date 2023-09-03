class User {
  final int id;
  final String username;
  final String email;
  final String color;
  final String? profilePicture;
  final String initials;
  final int? weekStartDay;
  final bool globalFontSupport;
  final String timezone;

  User.empty()
      : id = 0,
        username = "",
        email = "",
        color = "",
        profilePicture = "",
        initials = "",
        weekStartDay = 0,
        globalFontSupport = false,
        timezone = "";

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.color,
    this.profilePicture,
    required this.initials,
    this.weekStartDay,
    required this.globalFontSupport,
    required this.timezone,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final userData = json['user'];
    return User(
      id: userData['id'],
      username: userData['username'],
      email: userData['email'],
      color: userData['color'],
      profilePicture: userData['profilePicture'],
      initials: userData['initials'],
      weekStartDay: userData['week_start_day'],
      globalFontSupport: userData['global_font_support'],
      timezone: userData['timezone'],
    );
  }
}
