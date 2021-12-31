import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';


class RateUs extends StatefulWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  _RateUsState createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  double rating = 0.0;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title:const Text(
            "Feed Back",
            style: TextStyle(fontSize: 18,color: Color.fromRGBO(168, 146, 84,1)),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(168, 146, 84,1)),
            iconSize: 30,
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.black,
          toolbarHeight: 60,
          leadingWidth: 40,
           actions:const [
              Image(image: AssetImage('images/bg.png')),
           ],
          ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Feel free to drop your feedback!",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              SmoothStarRating(
                color:Color.fromRGBO(168, 146, 84,1) ,
                borderColor:Color.fromRGBO(168, 146, 84,1) ,
                rating: rating,
                size: 45,
                filledIconData: Icons.star,
                allowHalfRating: false,
                defaultIconData: Icons.star_border,
                starCount: 5,
                spacing: 2.0,
                onRatingChanged: (value) {
                  setState(() {
                    rating = value;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "You have selected: $rating Star",
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    SizedBox(
                      child: TextField(
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.left,
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: 7,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color:Color.fromRGBO(168, 146, 84,1) )
                          ),
                          hintText: " Describe your experience here..",
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          hintStyle: const TextStyle(
                            color:Color.fromRGBO(168, 146, 84,1) ,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Card(
                      color: Colors.black,
                      child: Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  print('success');
                                }
                              },
                              child: const Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Text(
                                  "Send feedback",
                                  style:  TextStyle(
                                    color: Color.fromRGBO(168, 146, 84,1),
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            )
                          ]
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}