class DetailItemModel {
  final String subtitle;
  final startTime;
  final endTime; 
  final String url;

  DetailItemModel({
    this.subtitle,
    this.startTime,
    this.endTime,
    this.url,
  });

  DetailItemModel.fromJson(Map<String, dynamic> map)
      : subtitle = map['subtitle'],
        startTime = map['startTime'],
        endTime = map['endTime'],
        url = map['url'];
}
