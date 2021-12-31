import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mylibrary/cart/cart.dart';
import 'package:mylibrary/component/components.dart';
import 'package:mylibrary/modules/paymaent/pay_cubit.dart';
import 'package:mylibrary/modules/paymaent/pay_states.dart';
import 'package:mylibrary/pdf/view.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Pay extends StatefulWidget {
  final int days;
  const Pay({Key? key, required this.days}) : super(key: key);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var serialController = TextEditingController();
    var cvvController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => PayCubit(),
      child: BlocConsumer<PayCubit,PayStates>(
        listener: (context,state) async {
          if(state is PaySuccessState){
            SharedPreferences _prefs = await SharedPreferences.getInstance();
            await _prefs.setInt('expireDate', DateTime.now().add(Duration(days: widget.days)).millisecondsSinceEpoch);
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> PDFView()));
          }
        },
        builder: (context,state)
        {
          return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.black,
                title: const Text('Payment',
                  style: TextStyle(color:Color.fromRGBO(168, 146, 84,1) ),),
                centerTitle:true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back,color: Color.fromRGBO(168, 146, 84,1),),
                  onPressed: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context)=>const CartView()));
                  },
                ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all( 20.0),
                child: Center(
                  child: Form(
                    key: formKey,
                    child: Column(
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
                            controller: nameController,
                            validator: (value)
                            {
                              if(value!.isEmpty){return 'Name must be not empty';}
                            },
                            inputType: TextInputType.name,
                            label: 'Name',
                            prefix: Icons.person
                        ),
                        const SizedBox(height: 20,),
                        defaultTextFormField(
                          controller: serialController,
                          validator: (value)
                          {
                            if(value!.isEmpty){return 'Serial must be not empty';}
                          },
                          inputType: TextInputType.number,
                          label: 'Serial No.',
                        ),
                        const SizedBox(height: 20,),
                        defaultTextFormField(
                            controller: cvvController,
                            validator: (value)
                            {
                              if(value!.isEmpty){return 'CVV must be not empty';}
                            },
                            inputType: TextInputType.number,
                            label: 'CVV'
                        ),
                        const SizedBox(height: 20,),
                        defaultButton(
                            text: 'Pay',
                            onPressed: ()
                            {
                              if(formKey.currentState!.validate())
                              {
                                PayCubit.get(context).paymentMethod(
                                  name: nameController.text,
                                  serial: serialController.text,
                                  cvv: cvvController.text,
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
