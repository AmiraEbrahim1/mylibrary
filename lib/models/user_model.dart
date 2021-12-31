class UserModel
{
  String? email;
  String? firstName;
  String? lastName;
  String? uId;
  UserModel({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.uId,
  });
  UserModel.fromJson(Map<String,dynamic>json)
  {
    email = json['email'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    uId = json['uId'];
  }
  Map<String,dynamic> toMap()
  {
    return {
      'email': email,
      'FirstName': firstName,
      'LastName': lastName,
    };
  }
}