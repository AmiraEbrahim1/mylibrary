import 'package:flutter/material.dart';
class Detail5 extends StatefulWidget {
  const Detail5({Key? key}) : super(key: key);
  @override
  _Detail5State createState() => _Detail5State();
}
class _Detail5State extends State<Detail5> {
  var select5=[
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
          "Kids",
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
        actions: [
          Container(
            width: 50,
              height: 50,
              child: Image(image: AssetImage('images/bg.png'))),
        ],
      ),
      body: ListView(
        children: [
          Wrap(
            spacing: 1,
            runSpacing: 1,
            children: List.generate(select5.length, (index){
              return Container(
                width:(MediaQuery.of(context).size.width-3)/3,
                height:(MediaQuery.of(context).size.width-3)/3 ,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(select5[index]),
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
