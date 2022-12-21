class WebtoonEpisodeModel {
  final String id, title, rating, date, thumb;
  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        date = json['date'],
        thumb = json['thumb'];
}
