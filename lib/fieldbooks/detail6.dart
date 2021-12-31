import 'package:flutter/material.dart';
class Detail6 extends StatefulWidget {
  const Detail6({Key? key}) : super(key: key);
  @override
  _Detail6State createState() => _Detail6State();
}
class _Detail6State extends State<Detail6> {
  var select6=[
    'images/photo5940363735635965803.jpg',
    'images/photo5940363735635965805.jpg',
    'images/photo5940363735635965806.jpg',
    'images/photo5940363735635965808.jpg',
    'images/photo5940363735635965810.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
          "Horror",
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
              children: List.generate(select6.length, (index){
                return Container(
                  width:(MediaQuery.of(context).size.width-3)/2,
                  height:(MediaQuery.of(context).size.width+3)/2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(select6[index]),
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
