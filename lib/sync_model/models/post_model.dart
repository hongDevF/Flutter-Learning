class PostModel{
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;
  PostModel( {
    this.albumId = 0,
  this.id = 0,
  this.title = "no title",
    this.url = "no url",
    this.thumbnailUrl = "no url",
});
  factory PostModel.fromMap(Map<String, dynamic> map){
    return PostModel(
        albumId: map['albumId'],
        id:map['id'],
        title:map['title'],
        url:map['url'],
        thumbnailUrl: map['thumbnailUrl']
    );
  }
}