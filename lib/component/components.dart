import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


Widget defaultTextFormField({
  required TextEditingController controller,
  required String? Function(String? value) validator,
  required TextInputType inputType,
  required String label,
  IconData? prefix,
  IconData? suffix,
  Function()? onSuffixPressed,
  Function()? onTap,
  Function(String s)? onSubmit,
  bool isPassword = false,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: inputType,
      obscureText: isPassword,
      onTap: onTap,
      onFieldSubmitted: onSubmit,
      style: const TextStyle(
          color:Color.fromRGBO(168, 146, 84,1) ,
          fontSize: 22
      ),
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(
          color: Color.fromRGBO(168, 146, 84,1)
        ),
        prefixIcon: Icon(
          prefix,
          color: Color.fromRGBO(168, 146, 84,1),
        ),
        suffixIcon: IconButton(icon: Icon(suffix,color:Color.fromRGBO(168, 146, 84,1) ,), onPressed: onSuffixPressed),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color.fromRGBO(168, 146, 84,1)),
        ),
      ),
      validator: validator,
    );
Widget defaultButton({
  double width = double.infinity, // giv it default width but can edit later
  Color background = Colors.black,
  double radius = 5.0,
  required String text,
  required Function()? onPressed,
}) =>
    Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
              color: Color.fromRGBO(168, 146, 84,1),
              fontSize: 20
          ),
        ),
        onPressed: onPressed,
      ),
    );

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
        (route) => false);

void showToast({required String message, required ToastStates state}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: choseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0);
}
enum ToastStates {SUCCESS, ERROR, WARNING }

// get hte color of the toast depend on the state
// success, error and warning
Color choseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}