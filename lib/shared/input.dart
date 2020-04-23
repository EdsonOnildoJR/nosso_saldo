import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const Input({
    Key key,
    @required this.hintText,
    @required this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(fontSize: 12, fontWeight: FontWeight.w300);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: [BoxShadow(color: const Color(0xff19203F))],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          hintText: hintText,
          hintStyle: style,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ),
        controller: controller,
        obscureText: obscureText,
        style: style,
      ),
    );
  }
}
