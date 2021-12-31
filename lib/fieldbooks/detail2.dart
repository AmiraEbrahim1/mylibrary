import 'package:flutter/material.dart';
class Detail2 extends StatefulWidget {
  const Detail2({Key? key}) : super(key: key);
  @override
  _Detail2State createState() => _Detail2State();
}
class _Detail2State extends State<Detail2> {
  var select2=[
    'images/bookt1.jpg',
    'images/bookt2.jpg',
    'images/bookt3.jpg',
    'images/bookt4.jpg',
    'images/bookt5.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
          "Human developement",
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
      body: ListView(
        children: [
          Wrap(
            spacing: 1,
            runSpacing: 1,
            children: List.generate(select2.length, (index){
              return Container(
                width:(MediaQuery.of(context).size.width-3)/3,
                height:(MediaQuery.of(context).size.width-3)/3 ,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(select2[index]),
                      fit: BoxFit.cover,
                    )
                ),
              );
            }
            ),
          ),
        ],
      ),
    );
  }
}
