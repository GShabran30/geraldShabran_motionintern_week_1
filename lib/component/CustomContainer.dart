import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatefulWidget {
  final double width;
  final double height;
  final String buttonText;

  const CustomContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.buttonText,
  }) : super(key: key);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    Color containerColor = _isClicked ? Color(0xFF00623B) : Color(0xFFF2F2F2);
    Color textColor = _isClicked ? Colors.white : Color(0xFF4C4C4C);

    return GestureDetector(
      onTap: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            widget.buttonText,
            style: GoogleFonts.raleway(
              color: textColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
