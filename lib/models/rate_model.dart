class RateModel
{
  double? rate;
  String? feedback;
  RateModel({
    required this.rate,
    required this.feedback,
  });
  RateModel.fromJson(Map<String,dynamic>json)
  {
    rate = json['rate'];
    feedback = json['feedback'];
  }
  Map<String,dynamic> toMap()
  {
    return {
      'rate':rate,
      'Feedback': feedback,
    };
  }
}