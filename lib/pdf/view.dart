import 'package:flutter/material.dart';
import 'package:mylibrary/my_books/view.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFView extends StatefulWidget {
  @override
  _PDFViewState createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context)=>const MyBooksView()));
          },
          icon: Icon(Icons.arrow_back,color:Color.fromRGBO(168, 146, 84,1) ,),
        ),
        actions: [
          Image(image: AssetImage('images/bg.png')),
        ],
      ),
      body: Center(
        child: SfPdfViewer.asset('books/book.pdf'),
      ),
    );
  }
}