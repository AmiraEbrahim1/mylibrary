import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Contact us',style: TextStyle(
          color:Color.fromRGBO(168, 146, 84,1)
        ),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(168, 146, 84,1)),
          iconSize: 30,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _store(context),
          _texts(),
          SizedBox(height: 10),
          _contactUsCard(),
        ],
      ),
    );
  }

  final _style = TextStyle(color:Color.fromRGBO(168, 146, 84,1) );

  Widget _store(context) => Container(
    padding: EdgeInsets.all(10),
    height: MediaQuery.of(context).size.height / 3,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:AssetImage('images/bg.png'),
          radius: 30,
          backgroundColor: Colors.black,
        ),
        Text('flying books', style: _style),
        Row(
          children: [
            Icon(Icons.phone, color:Color.fromRGBO(168, 146, 84,1) ),
            SizedBox(width: 10),
            Text('19722', style: _style),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Icon(Icons.email, color:Color.fromRGBO(168, 146, 84,1) ),
              SizedBox(width: 10),
              Text('example@gmail.com', style: _style),
            ],
          ),
        ),
        Row(
          children: [
            Icon(Icons.location_on_rounded, color:Color.fromRGBO(168, 146, 84,1) ),
            SizedBox(width: 10),
            Text('Mansoura', style: _style),
          ],
        ),
      ],
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1612151855475-877969f4a6cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGQlMjBpbWFnZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
        )),
  );

  Widget _contactUsCard() => Padding(
    padding: const EdgeInsets.all(10),
    child: Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contact us:'),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.chat,color: Color.fromRGBO(168, 146, 84,1),),
                  SizedBox(width: 10),
                  Text('Chat',style: _style,),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.phone,color: Color.fromRGBO(168, 146, 84,1),),
                  SizedBox(width: 10),
                  Text('Call',style: _style,),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _texts() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text('Have any questions?', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Text('Our Customer Service is always available for you,\njust click here', textAlign: TextAlign.center),
      ),
    ],
  );
}