import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final IconData? icon;
  final String? hintText;

  const ReusableTextField({Key? key, this.icon, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon != null ? Icon(icon) : null,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius:
                BorderRadius.circular(45.0), // Adjust the radius as needed
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF2F2F2),
            ),
            borderRadius:
                BorderRadius.circular(45.0), // Adjust the radius as needed
          ),
          fillColor: Color(0xFFF2F2F2),
          filled: true,
        ),
      ),
    );
  }
}
