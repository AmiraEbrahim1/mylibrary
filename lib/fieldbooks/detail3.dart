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
    'images/booka5.jpg',
    'images/bookr1.jpg',
    'images/bookr2.jpg',
    'images/bookr3.jpg',
    'images/bookr4.jpg',
    'images/bookr5.jpg',
    'images/bookt1.jpg',
    'images/bookt2.jpg',
    'images/bookt3.jpg',
    'images/bookt4.jpg',
    'images/bookt5.jpg',
    'images/photo5940363735635965803.jpg',
    'images/photo5940363735635965805.jpg',
    'images/photo5940363735635965806.jpg',
    'images/photo5940363735635965808.jpg',
    'images/photo5940363735635965810.jpg',
    'images/photo5940363735635965812.jpg',
    'images/photo5940363735635965841.jpg',
    'images/photo5940363735635965842.jpg',
    'images/photo5940363735635965842 (1).jpg',
    'images/photo5940363735635965866.jpg',
    'images/photo5940363735635965867.jpg',
    'images/photo5940363735635965869.jpg',
    'images/photo5940363735635965870.jpg',
    'images/photo5940363735635965871.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
          "all books",
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
