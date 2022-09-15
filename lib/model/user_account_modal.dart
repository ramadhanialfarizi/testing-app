class UserAccountModal {
  int? id;
  String? email;
  String? name;

  UserAccountModal({
    this.id,
    this.email,
    this.name,
  });

  UserAccountModal.fromJson(Map json) {
    id = json['data']['id'];
    email = json['data']['email'];
    name = json['data']['first_name'] + json['data']['last_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = email;
    return data;
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
