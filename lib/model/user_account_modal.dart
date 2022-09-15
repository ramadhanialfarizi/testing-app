class UserAccountModal {
  String? id;
  String? email;
  String? name;
  String? image;

  UserAccountModal({this.id, this.email, this.name, this.image});

  UserAccountModal.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    email = json['email'];
    name = json['first_name'] + " " + json['last_name'];
    image = json['avatar'];
  }
}

/* 

{
    "data": {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    "support": {
        "url": "https://reqres.in/#support-heading",
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
}

*/
