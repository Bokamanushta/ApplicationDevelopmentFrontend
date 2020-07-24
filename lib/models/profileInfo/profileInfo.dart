class ProfileInfo {
  String id;
  String image;
  String name;
  String university;
  String country;
  String description;
  String semester;
  String faculty;
  bool registerStatus;

  ProfileInfo(
      {this.id,
      this.image,
      this.name,
      this.university,
      this.country,
      this.description,
      this.semester,
      this.faculty,
      this.registerStatus});

  // ProfileInfo.fromJson(Map<String, dynamic> json)
  //     : this(
  //           id: json['id'].toString(),
  //           title: json['title'],
  //           description: json['description'],
  //           date: json['date'],
  //           type: json['type'],
  //           attatchment: json['attatchment']);

  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'title': title,
  //       'description': description,
  //       'date': date,
  //       'type': type,
  //       'attatchment': attatchment
  //     };
}
