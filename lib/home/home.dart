import 'package:flutter/material.dart';
import 'package:mylibrary/Aaaboutus/about.dart';
import 'package:mylibrary/cart/cart.dart';
import 'package:mylibrary/contactus/contactus.dart';
import 'package:mylibrary/fieldbooks/detail1.dart';
import 'package:mylibrary/fieldbooks/detail2.dart';
import 'package:mylibrary/fieldbooks/detail3.dart';
import 'package:mylibrary/fieldbooks/detail5.dart';
import 'package:mylibrary/fieldbooks/detail6.dart';
import 'package:mylibrary/details/details.dart';
import 'package:mylibrary/modules/login/login.dart';
import 'package:mylibrary/rateus/rate.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var select1=[
    'images/bookr1.jpg',
    'images/bookr2.jpg',
    'images/bookr3.jpg',
    'images/bookr4.jpg',
    'images/bookr5.jpg'
  ];
  var select2=[
    'images/bookt1.jpg',
    'images/bookt2.jpg',
    'images/bookt3.jpg',
    'images/bookt4.jpg',
    'images/bookt5.jpg'
  ];
  var select3=[
    'images/booka1.jpg',
    'images/booka2.jpg',
    'images/booka3.jpg',
    'images/booka4.jpg',
    'images/booka5.jpg'
  ];
  var select4=[
    'images/bookt2.jpg',
    'images/bookt3.jpg',
    'images/photo5940363735635965803.jpg',
    'images/photo5940363735635965812.jpg',
    'images/photo5940363735635965866.jpg',
  ];
  bool visible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor:Color.fromRGBO(168, 146, 84,1) ,
                  radius: 55,
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: const Icon(Icons.person),
                    iconSize: 100,
                    color: Colors.black45,
                  )),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const LoginScreen()));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
            TextButton(
              onPressed: (){
                setState(() {
                  visible=!visible;
                });
              },
              child: Row(
                children:const[
                  Text("Fields",style: TextStyle(fontSize: 20, color: Colors.black) ),
                  SizedBox(width: 200,),
                  Icon(Icons.add, color: Colors.black)
                ],
              ),
            ),
            Visibility(
              visible: visible,
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children:[ TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail3()));
                        },
                          child: Text('all books',
                            style: TextStyle(
                            color: Color.fromRGBO(168, 146, 84,1)
                          )
                            ,)
                      )]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children:[
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail1()));
                          },
                            child: Text('Literature and novels',style: TextStyle(
                                color: Color.fromRGBO(168, 146, 84,1)
                            )))]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children:[ TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail2()));
                        },
                          child: Text('human developement',style: TextStyle(
                              color: Color.fromRGBO(168, 146, 84,1)
                          )))]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children:[ TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail3()));
                        },
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail5 ()));
                            },
                              child: Text('Entrepreneurship',style: TextStyle(
                                  color: Color.fromRGBO(168, 146, 84,1)
                              ))))]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children:[ TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail3()));
                        },
                          child: Text('Kids',style: TextStyle(
                              color: Color.fromRGBO(168, 146, 84,1)
                          )))]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children:[ TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail6()));
                        },
                          child: Text('Horror',style: TextStyle(
                              color: Color.fromRGBO(168, 146, 84,1)
                          )))]),
                    ),

                  ],
                )
            ),
            ListTile(
              title: const Text("Shopping Cart",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartView(),
                    ));
              },
            ),
            ListTile(title: const Text("About Us",style: TextStyle(fontSize: 20, color: Colors.black) ),onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUs(),
                  ));

            }),
            ListTile(title:const Text("Rate Us",style: TextStyle(fontSize: 20, color: Colors.black) ),onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RateUs(),
                  ));

            }),
            // ListTile(title: const Text("Notifications",style: TextStyle(fontSize: 20, color: Colors.black) ),onTap: (){
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Notifications(),
            //       ));
            // }),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromRGBO(168, 146, 84,1)),
        backgroundColor: Colors.black,
        title: const Text(
          "Flying Books",
          style: TextStyle(fontSize: 18,color: Color.fromRGBO(168, 146, 84,1)),
        ),
        centerTitle: true,
        actions:[
          const Image(image: AssetImage('images/bg.png')),
          const SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:IconButton(icon:const Icon(Icons.shopping_cart,size: 25,color: Color.fromRGBO(168, 146, 84,1),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const CartView()));
              },
            ),
          ),
        ],
      ),
      body:
      ListView(
        physics: const BouncingScrollPhysics(),
          children:[
            Padding(
              padding: const EdgeInsets.all( 18),
              child: TextField(
                style: const TextStyle(fontSize: 17),
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    iconSize: 30,
                    color:const Color.fromRGBO(168, 146, 84,1),
                  ),
                  hintText: 'Search',
                  hintStyle:const TextStyle(
                      color: Color.fromRGBO(168, 146, 84,1)
                  ),
                  border:
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),borderSide:
                  const BorderSide(color:Color.fromRGBO(168, 146, 84,1))),//color?
                )
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Row(
                  children:[
                    const SizedBox(width: 40,),
                    Container(
                      width: 70,
                      height: 30,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail3()));
                      },
                          child:const Text('more',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(168, 146, 84,1)
                          ),
                        )
                      ),
                    ),
                    const SizedBox(width: 20,),
                  const Text('all books',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(168, 146, 84,1)
                    ),
                  ),
                ]
              ),
            ),
            const SizedBox(height: 20,),
             SizedBox(
              height: MediaQuery.of(context).size.height/3,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select4[0])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select4[2])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select4[1])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select4[4])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select4[3])
                            )
                        )
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      width: 70,
                      height: 30,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail1()));
                      },
                          child:const Text('more',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromRGBO(168, 146, 84,1)
                          ),)
                      ),
                    ),
                    const SizedBox(width: 20,),
                    const Text('Literature and novels',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromRGBO(168, 146, 84,1)
                    ),),
                  ]),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetailsView()));
                    },
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select1[0])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(select1[2])
                        )
                      )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(select1[1])
                        )
                      )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(select1[4])
                        )
                      )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(select1[3])
                        )
                      )
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      width: 70,
                      height: 30,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail2()));
                      },
                          child:const Text('more',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromRGBO(168, 146, 84,1)
                          ),
                        )
                      ),
                    ),
                    const SizedBox(width: 20,),
                    const Text('human developement',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromRGBO(168, 146, 84,1)
                    ),
                  ),
                ]
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              child: ListView(
                physics:const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select2[0])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select2[2])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select2[1])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select2[4])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetailsView()));
                    },
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select2[3])
                            )
                        )
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      width: 70,
                      height: 30,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Detail5 ()));
                      },
                          child:const Text('more',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromRGBO(168, 146, 84,1)
                          ),)
                      ),
                    ),
                    const SizedBox(width: 20,),
                    const Text('Entrepreneurship',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromRGBO(168, 146, 84,1)
                    ),
                  ),
                ]
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select3[0])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select3[2])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select3[1])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select3[4])
                            )
                        )
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(select3[3])
                            )
                        )
                    ),
                  )
                ],
              ),
            )
          ]
      ),
    );
  }
  Widget buildStory(context) => Column(
    children: [
      Text(''),
    ],
  );
}