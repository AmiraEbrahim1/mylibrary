class PayModel
{
  String? name;
  String? serial;
  String? cvv;
  PayModel({
    required this.name,
    required this.serial,
    required this.cvv,
  });
  PayModel.fromJson(Map<String,dynamic>json)
  {
    name = json['name'];
    serial = json['serial No.'];
    cvv = json['cvv'];
  }
  Map<String,dynamic> toMap()
  {
    return {
      'email': name,
      'FirstName': serial,
      'LastName': cvv,
    };
  }
}