import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class Costumlogin extends StatelessWidget {
  final String hintText;
  final String label;
  final IconData suffixIcon;
  final String? Function(String?)? valid;
 final bool isnumber;
  final bool? obscureText ;
 final void Function(String value) onChanged;

  const Costumlogin({
    super.key,
    this.obscureText,
    required this.hintText,
    required this.label,
    required this.suffixIcon,
    required this.valid, required this.isnumber,required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        onChanged: this.onChanged,
        keyboardType: isnumber ? const TextInputType.numberWithOptions(decimal: true):TextInputType.text,
        validator: valid,
        obscureText:obscureText==null||obscureText==false?false:true ,
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            label: Container(
                margin: EdgeInsets.symmetric(horizontal: 9),
                child: Text(label)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: InkWell(child: Icon(suffixIcon)),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
      ),
    );
  }
}
