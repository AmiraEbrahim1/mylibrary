import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mylibrary/component/components.dart';
import 'package:mylibrary/home/home.dart';
import 'package:mylibrary/modules/login/cubit/login_cubit.dart';
import 'package:mylibrary/modules/login/cubit/login_states.dart';
import 'package:mylibrary/modules/register/register_screen.dart';
import 'package:mylibrary/reset/resetpassword.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    var formKey = GlobalKey<FormState>();//دا اللي هيعمل validate علي ال form كله
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state)
        {
          if(state is LoginErrorState)
          {
            showToast(
                message: state.error,
                state: ToastStates.ERROR
            );
          }
          if(state is LoginSuccessState)
            {
              showToast(
                  message: 'Login Successfully',
                  state: ToastStates.SUCCESS,
              );
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen()));
            }
        },
        builder: (context,state)
        {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              elevation: 3.0,
              title: const Text('LogIn',style: TextStyle(
                  color: Color.fromRGBO(168, 146, 84,1)
              ),
              ),
             leading: IconButton(
               icon: const Icon(Icons.arrow_back,color: Color.fromRGBO(168, 146, 84,1),),
               onPressed: (){
                 Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen()));
               },) ,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10,),
                        Container(
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.circular(100)
                         ),
                          child: const Image(image: AssetImage('images/bg.png'),
                          height: 150,),
                        ),
                        const SizedBox(height: 30,),
                        defaultTextFormField(
                          controller: emailController,
                          validator: (value)
                          {
                            if(value!.isEmpty)
                              {
                                return 'Email must be not empty';
                              }
                          },
                          inputType: TextInputType.emailAddress,
                          label: 'Email',
                          prefix: Icons.email,
                        ),
                        const SizedBox(height: 15,),
                        defaultTextFormField(
                          controller: passController,
                          validator: (value)
                          {
                            if(value!.isEmpty || value.length < 6 )
                            {
                              return 'Password must be strong';
                            }
                          },
                          inputType: TextInputType.visiblePassword,
                          label: 'Password',
                          prefix: Icons.lock,
                          suffix: LoginCubit.get(context).suffixIcon,
                          isPassword: LoginCubit.get(context).visible,
                          onSuffixPressed: (){LoginCubit.get(context).changeVisibility();}
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text('need help?',style: TextStyle(
                                color: Color.fromRGBO(168, 146, 84,1),
                                fontSize: 17
                              ),),
                              TextButton(
                                // onPressed: (){
                                //   Navigator.push(context,MaterialPageRoute(builder:(context) =>Reset()));
                                // },
                                onPressed: () {  },
                                child:TextButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Reset()));
                                  },
                                  child: const  Text('Forget Password?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        ),
                        const SizedBox(height: 15,),
                        defaultButton(
                          text: 'login',
                          onPressed: ()
                          {
                            if(formKey.currentState!.validate())
                              {
                                LoginCubit.get(context).userLogin(
                                    email: emailController.text,
                                    password: passController.text,
                                );
                                //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen()));
                              }
                          }
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(' Don\'t have an account?',style: TextStyle(
                                  color: Color.fromRGBO(168, 146, 84,1),
                                fontSize: 17
                              ),),
                              TextButton(
                                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>  RegisterScreen()));},
                                child: const Text('Sign Up',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

