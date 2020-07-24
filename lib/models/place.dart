class Place {
  String id;
  String title;
  String review;
  String imageLocation;
  String distance;
  String description;

  Place(
      {this.id,
      this.title,
      this.review,
      this.imageLocation,
      this.distance,
      this.description});

  Place.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'].toString(),
            title: json['title'],
            description: json['description'],
            imageLocation: json['imageLocation'],
            distance: json['distance'],
            review: json['review']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'imageLocation': imageLocation,
        'distance': distance,
        'review': review
      };
}
