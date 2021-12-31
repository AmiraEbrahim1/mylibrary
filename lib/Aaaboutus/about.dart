import 'package:flutter/material.dart';
import 'package:mylibrary/contactus/contactus.dart';
import 'package:mylibrary/rateus/rate.dart';
// import 'package:home_page/screens/rate_us.dart';
class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color:Color.fromRGBO(168, 146, 84,1) ),
            iconSize: 30,
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.black,
          toolbarHeight: 60,
          leadingWidth: 40,
          title: const Text(
            "About This App",
            style: TextStyle(
              color:Color.fromRGBO(168, 146, 84,1) ,
              fontSize: 20,

            ),
          ),
        ),
        body:

        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                child:
                Center(
                  child: Column(
                    children: [

                      SizedBox(height: 5,),
                      Container(

                        decoration: BoxDecoration(image: DecorationImage(
                            image: AssetImage("images/bg.png",))),
                        width: 150,
                        height: 150,
                      ),


                      Text(
                        "Flying Books",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color:Color.fromRGBO(168, 146, 84,1) ),
                      ),

SizedBox(height: 5,),
                    ],
                  ),
                ),

              ),


              Divider(thickness: 10, color: Colors.black12, height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        width: 130,
                        height: 250,
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> AboutUs()));
                              },
                              child: Text("About Us", style: TextStyle(fontSize: 20,
                                  color: Color.fromRGBO(168, 146, 84,1),
                                  fontWeight: FontWeight.bold),),
                            ),

                            TextButton(onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => RateUs(),
                              //     ));
                            },
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const RateUs()));
                                  },
                                  child: Text("Rate us", style: TextStyle(
                                      fontSize: 20, color: Colors.black),),
                                )),
                            Divider(
                              thickness: 2, color: Colors.black12, height: 3,),

                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> ContactUsView()));
                            },
                                child: Text("Contact us", style: TextStyle(
                                    fontSize: 20, color: Colors.black),)),
                            Divider(
                              thickness: 2, color: Colors.black12, height: 3,),
                            TextButton(onPressed: () {},
                                child: Text("Share", style: TextStyle(
                                    fontSize: 20, color: Colors.black),))
                          ],
                        ),

                      ),

                      Divider(thickness: 10, color: Colors.black12, height:20,),
                      Container(
                        padding: EdgeInsets.all(20),
                        color: Colors.white,
                        width: 150,
                        height: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Find us", style: TextStyle(fontSize: 20,
                                  color:Color.fromRGBO(168, 146, 84,1),
                                  fontWeight: FontWeight.bold),),
                              TextButton(onPressed: () {

                              },
                                  child: Text("FaceBook", style: TextStyle(
                                      fontSize: 20, color: Colors.black),)),
                              Divider(thickness: 2,
                                color: Colors.black12,
                                height: 3,),
                              TextButton(onPressed: () {},
                                  child: Text("Twitter", style: TextStyle(
                                      fontSize: 20, color: Colors.black),)),
                              Divider(thickness: 2,
                                color: Colors.black12,
                                height: 3,),
                              TextButton(onPressed: () {},
                                  child: Text("Instgram", style: TextStyle(
                                      fontSize: 20, color: Colors.black),)),
                            ],

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