import 'package:flutter/material.dart';
import 'package:mylibrary/home/home.dart';
import 'package:mylibrary/pdf/view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyBooksView extends StatefulWidget {
  const MyBooksView({Key? key}) : super(key: key);

  @override
  _MyBooksViewState createState() => _MyBooksViewState();
}

class _MyBooksViewState extends State<MyBooksView> {

  bool hasBooks = false;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      int? timeStamp = _prefs.getInt('expireDate');
      if(timeStamp != null){
        final expireDate = DateTime.fromMillisecondsSinceEpoch(timeStamp);
        if(expireDate.isAfter(DateTime.now())){
          hasBooks = true;
          setState(() {});
        }else{
          _prefs.remove('expireDate');
        }
      }
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text('YourBooks',style: TextStyle(
            color: Color.fromRGBO(168, 146, 84,1)
        ),),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen()));
          },
          icon: Icon(Icons.arrow_back,color:Color.fromRGBO(168, 146, 84,1) ,),
        ),
        actions: [
          Image(image: AssetImage('images/bg.png')),
        ],
      ),
      body: hasBooks ? ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => ListTile(
          leading: Container(
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:  AssetImage('images/bookr1.jpg'),
                )
              ),
              child: Image.asset('images/bookr1.jpg')),
          title: Text("صاحب الظل الطويل",style: TextStyle(
            color: Color.fromRGBO(168, 146, 84,1)
          ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> PDFView()));
          },
        ),
      ) : Center(child: Text('No Books!',style: TextStyle(
          color: Color.fromRGBO(168, 146, 84,1)
      ),)),
    );
  }
}
