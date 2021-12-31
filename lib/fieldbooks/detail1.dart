import 'package:flutter/material.dart';
class Detail1 extends StatefulWidget {
  const Detail1({Key? key}) : super(key: key);
  @override
  _Detail1State createState() => _Detail1State();
}
class _Detail1State extends State<Detail1> {
  var select=[
    'images/bookr1.jpg',
    'images/bookr2.jpg',
    'images/bookr3.jpg',
    'images/bookr4.jpg',
    'images/bookr5.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
          "Literature and novels",
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
              children: List.generate(select.length, (index){
                return Container(
                  width:(MediaQuery.of(context).size.width-3)/2,
                  height:(MediaQuery.of(context).size.width-3)/2 ,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(select[index]),
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
