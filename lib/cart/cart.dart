import 'package:flutter/material.dart';
import 'package:mylibrary/home/home.dart';
import 'package:mylibrary/modules/paymaent/payment.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}


class _CartViewState extends State<CartView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF1B1B1B),
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen()));
        } ,
          icon:Icon(Icons.arrow_back,color:Color.fromRGBO(168, 146, 84,1) ),),
        actions: [
          Image(image: AssetImage('images/bg.png')),
        ],
        backgroundColor: Colors.black,
        centerTitle: true,
        title: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const CartView()));
          },
          child: Text("Cart",style: TextStyle(
            color: Color.fromRGBO(168, 146, 84,1)
          ),),
        ),
        // backgroundColor: Color(0xFF1B1B1B),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              // color: Color(0xFF333333),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "EGP 120",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                            text: " TOTAL",
                            style: TextStyle(
                              color: Colors.black,
                              // color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      ": ALL ITEMS",
                      // style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "صاحب الظل الطويل",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  currentIndex++;
                                });
                              },
                              icon: Icon(Icons.add,color: Color.fromRGBO(168, 146, 84,1),),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "$currentIndex",


                            // style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  currentIndex--;
                                });
                              },
                              icon: Icon(Icons.remove,color: Color.fromRGBO(168, 146, 84,1),),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('/day',style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(168, 146, 84,1)
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/bookr1.jpg'))
                    )
                ),
              ],
            ),

            TextFormField(
              style: TextStyle(
                color: Color(0xFF333333),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                hintText: "Any instructions?",
                hintStyle: TextStyle(color: Color(0xFF333333), fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      "Perice Details:",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("-EGP 135",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text("-EGP 0",
                          style: TextStyle(
                            color:Color.fromRGBO(168, 146, 84,1) ,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text("-EGP 135",
                          style: TextStyle(
                            color:Color.fromRGBO(168, 146, 84,1),
                          )),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total price",
                        style: TextStyle(
                            color: Color.fromRGBO(168, 146, 84,1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(" Savings ",
                          style: TextStyle(
                              color: Color.fromRGBO(168, 146, 84,1),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Total",
                          style: TextStyle(
                              color:Color.fromRGBO(168, 146, 84,1) ,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Pay(days: currentIndex)));
                    },
                    child: Text(
                      "Go to payment",
                      style: TextStyle(
                        color:Color.fromRGBO(168, 146, 84,1) ,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
