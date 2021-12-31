import 'package:flutter/material.dart';
import 'package:mylibrary/cart/cart.dart';
import 'package:mylibrary/home/home.dart';

class DetailsView extends StatelessWidget {
   DetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen()));
          },
          icon: Icon(Icons.arrow_back,color:Color.fromRGBO(168, 146, 84,1) ,),
        ),
        actions: [
          Image(image: AssetImage('images/bg.png')),
          SizedBox(width: 90,),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart,color: Color.fromRGBO(168, 146, 84,1),),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 200,
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/bookt4.jpg'
                      ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          const Center(
            child: Text(
              'العادات السبع للناس الاكثر فعالية',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(168, 146, 84,1)
              ),
            ),
          ),
          const Center(
            child: Text(
              'EGP 135',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromRGBO(168, 146, 84,1)
              ),
            ),
          ),
          const Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(Icons.shopping_bag,color: Color.fromRGBO(168, 146, 84,1),),
                Text('Quantity',style:TextStyle(
                  color: Color.fromRGBO(168, 146, 84,1)
                ),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 10, bottom: 10),
            width: 40,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 16,
                  color: Color.fromRGBO(168, 146, 84,1)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(Icons.format_list_numbered,color:Color.fromRGBO(168, 146, 84,1) ,),
                Text('number of pages',style: TextStyle(
                  color: Color.fromRGBO(168, 146, 84,1)
                ),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 10, bottom: 5),
            width: 40,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                '634',
                style: TextStyle(fontSize: 16,
                color: Color.fromRGBO(168, 146, 84,1)
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width:double.infinity,
            color: Colors.black,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const CartView()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart,color:Color.fromRGBO(168, 146, 84,1) ,),
                  Text('Add To Cart',style: TextStyle(
                    color: Color.fromRGBO(168, 146, 84,1)
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}