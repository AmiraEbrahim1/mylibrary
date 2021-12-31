import 'package:flutter/material.dart';
class Detail3 extends StatefulWidget {
  const Detail3({Key? key}) : super(key: key);
  @override
  _Detail3State createState() => _Detail3State();
}
class _Detail3State extends State<Detail3> {
  var select3=[
    'images/booka1.jpg',
    'images/booka2.jpg',
    'images/booka3.jpg',
    'images/booka4.jpg',
    'images/booka5.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
          "Entrepreneurship",
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
            children: List.generate(select3.length, (index){
              return Container(
                width:(MediaQuery.of(context).size.width-3)/3,
                height:(MediaQuery.of(context).size.width-3)/3 ,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(select3[index]),
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
