// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  int? id;
  String name;
  String phone;
  double balance;
  int pin;
  User({
    required this.id,
    required this.name,
    required this.phone,
    this.balance = 0.0,
    required this.pin,
  });

  List<User> userList = [
    User(id: null, name: "Towhidul Islam", phone: "01521401825", pin: 2580),
    User(id: null, name: "Towhidul Islam", phone: "01919392146", pin: 2580)
  ];
}
