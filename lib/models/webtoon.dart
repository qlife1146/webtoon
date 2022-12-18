class WebtoonModel {
  final String title, thumb, id;
  WebtoonModel.fromJson(Map<String, dynamic> json)  //fromJson 매우 중요
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
