

class Picture {
  Picture(
      {required this.id,
      required this.imageUrl,
      required this.likes,
      required this.comments});

  final String id;
  final String imageUrl;
  final int likes;
  final List<String> comments;
}
