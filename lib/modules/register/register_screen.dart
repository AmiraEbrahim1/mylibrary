
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mylibrary/component/components.dart';
import 'package:mylibrary/home/home.dart';
import 'package:mylibrary/modules/register/cubit/register_cubit.dart';
import 'package:mylibrary/modules/register/cubit/register_states.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state)
        {
          if(state is CreateUserErrorState)
          {
            showToast(
                message: state.error,
                state: ToastStates.ERROR
            );
          }
          if(state is CreateUserSuccessState)
          {
            showToast(
              message: 'Register Successfully',
              state: ToastStates.SUCCESS,
            );
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen()));
          }
        },
        builder: (context, state) {
          var cubit = RegisterCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 3.0,
              title: Text('sign up'.toUpperCase(),
                style:const  TextStyle(
                  color:Color.fromRGBO(168, 146, 84,1) ,
                ),
              ),
              centerTitle: true,
             leading: IconButton(
               onPressed: (){Navigator.pop(context);},
               icon: const Icon(Icons.arrow_back,color:Color.fromRGBO(168, 146, 84,1),),
             ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                          controller: firstNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your First Name';
                            }
                          },
                          inputType: TextInputType.text,
                          label: 'First Name',
                          prefix: Icons.person,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        defaultTextFormField(
                          controller: lastNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your Last Name';
                            }
                          },
                          inputType: TextInputType.text,
                          label: 'Last Name',
                          prefix: Icons.person,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        defaultTextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your email address';
                            }
                          },
                          inputType: TextInputType.emailAddress,
                          label: 'Email Address',
                          prefix: Icons.email_outlined,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        defaultTextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 6) {
                              return 'please enter your password';
                            }
                          },
                          inputType: TextInputType.visiblePassword,
                          label: 'Password',
                          prefix: Icons.lock_open_rounded,
                          isPassword: cubit.isPassword,
                          suffix: cubit.suffix,
                          onSuffixPressed: () {
                            cubit.changePasswordVisibility();
                          }
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        defaultButton(
                          text: 'register',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              RegisterCubit.get(context).userRegister(
                                email: emailController.text,
                                password: passwordController.text,
                                firstName: firstNameController.text,
                                lastName: lastNameController.text,
                              );

                            }
                          }
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
