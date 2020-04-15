class EpisodeItemModel {
  final String title;
  final String id;
  final String imageUrl;

  EpisodeItemModel({
    this.title,
    this.id,
    this.imageUrl,
  });

  EpisodeItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        id = map['id'],
        imageUrl = map['thumbnailUrl'];
}
