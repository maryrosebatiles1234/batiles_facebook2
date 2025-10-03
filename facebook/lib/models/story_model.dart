class StoryModel {
  final String id;
  final String userName;
  final String profileImagePath;
  final String storyImagePath;
  final DateTime timestamp;
  final bool isViewed;

  StoryModel({
    required this.id,
    required this.userName,
    required this.profileImagePath,
    required this.storyImagePath,
    required this.timestamp,
    this.isViewed = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'profileImagePath': profileImagePath,
      'storyImagePath': storyImagePath,
      'timestamp': timestamp.toIso8601String(),
      'isViewed': isViewed,
    };
  }
}