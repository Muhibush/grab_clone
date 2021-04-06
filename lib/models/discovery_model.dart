class DiscoveryModel {
  String id;
  String image;
  String title;
  String date;

  DiscoveryModel({this.id, this.image, this.title, this.date});

  DiscoveryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['title'] = this.title;
    data['date'] = this.date;
    return data;
  }
}
