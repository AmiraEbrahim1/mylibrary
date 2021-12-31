import 'package:flutter/material.dart';
import 'package:mylibrary/modules/login/login.dart';
import 'package:mylibrary/reset/resetpassword.dart';
class ResetConfirm extends StatefulWidget {
  const ResetConfirm({Key? key}) : super(key: key);

  @override
  _ResetConfirmState createState() => _ResetConfirmState();
}

class _ResetConfirmState extends State<ResetConfirm> {
  var passController = TextEditingController();
  var confirmPassController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding:  EdgeInsets.only(left:45),
          child: Text('Password Reset',
            style: TextStyle(color:Color.fromRGBO(168, 146, 84,1) ),),
        ),
        leading:IconButton(
          icon: const Icon(Icons.arrow_back,color:Color.fromRGBO(168, 146, 84,1) ,),
          onPressed: (){
            Navigator.pop(context);
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
                    width: MediaQuery.of(context).size.width-5,
                    child: TextFormField(
                      controller: passController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'must be not empty';
                        }
                      },
                      decoration: const InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(168, 146, 84,1)
                          ),
                          prefixIcon: Icon(Icons.lock,color:Color.fromRGBO(168, 146, 84,1) ,),
                          border: OutlineInputBorder(borderSide: BorderSide(
                            color: Color.fromRGBO(168, 146, 84,1),
                          ))
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    child: TextFormField(
                      controller: confirmPassController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ' must be not empty';
                        };
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock,color:Color.fromRGBO(168, 146, 84,1) ,),
                          hintText: 'Confirm password',
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(168, 146, 84,1)
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide(
                            color:Color.fromRGBO(168, 146, 84,1) ,

                          ))
                      ),

                    ),
                  ),
                  const SizedBox(height:30),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: TextButton(
                          onPressed: (){
                            if(formKey.currentState!.validate()){
                              Navigator.push(context,MaterialPageRoute(builder:(context) =>const LoginScreen()));
                            }
                          },
                          child:const Text(' Reset',style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(168, 146, 84,1)
                          )
                            ,))
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
