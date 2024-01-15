import 'package:flutter/material.dart';

class ReusableProductContainer extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productPrice;

  const ReusableProductContainer({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 23,
        bottom: 10,
      ),
      height: 365,
      width: 256,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(4.0, 4.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              scale: .9,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productPrice,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff00623b),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
