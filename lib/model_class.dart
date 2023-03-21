class Info {
  String name;
  String password;
  String email;
  String address;
  num phone;

  Info(
      {required this.name,
      required this.password,
      required this.address,
      required this.email,
      required this.phone});

  factory Info.fromJson(Map<String, dynamic> json) => Info(
      name: json['name'],
      password: json['password'],
      address: json['address'],
      email: json['email'],
      phone: json['phone']);

  Map<String, dynamic> toJson() => {
        'name': name,
        'password': password,
        'address': address,
        'email': email,
        'phone': phone
      };
}
