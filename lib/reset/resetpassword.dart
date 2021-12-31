import 'package:flutter/material.dart';
import 'package:mylibrary/modules/login/login.dart';
import 'package:mylibrary/reset/reset_confirm.dart';
class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding:  EdgeInsets.only(left:45),
          child: Text('Password Reset',
            style: TextStyle(color: Color.fromRGBO(168, 146, 84,1)),),
        ),
         leading:IconButton(
           icon: const Icon(Icons.arrow_back,color:Color.fromRGBO(168, 146, 84,1) ,),
           onPressed: (){
             Navigator.pop(context,MaterialPageRoute(builder:(context) =>const LoginScreen()));
           },) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: const Image(
                   height: 150,
                   image: AssetImage('images/bg.png'),),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email must be not empty';
                      }
                    },
                    decoration: const InputDecoration(

                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(168, 146, 84,1)
                        ),
                        prefixIcon:Icon(Icons.email_outlined,color:Color.fromRGBO(168, 146, 84,1) ,) ,
                        border: OutlineInputBorder(borderSide: BorderSide(
                          color: Colors.black45,

                        ))
                    ),

                  ),
                ),
                const SizedBox(height: 30,),

                const SizedBox(height: 30,),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          print('Password reset');
                        }
                      },
                      child:TextButton(
                        onPressed: (){
                          Navigator.pop(context,MaterialPageRoute(builder:(context) =>const ResetConfirm()));//???
                        },
                        child: const Text(' Reset',style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(168, 146, 84,1)
                        )
                          ,),
                      ))
              ),
    ]
            ),
          ),
        ),
      ),
    );
  }
}
