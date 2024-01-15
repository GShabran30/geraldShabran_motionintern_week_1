import 'package:flutter/material.dart';
import 'package:geralds_shabran_motionintern_week_1/component/CustomContainer.dart';
import 'package:geralds_shabran_motionintern_week_1/component/ProductContainer.dart';
import 'package:geralds_shabran_motionintern_week_1/component/reusableTextfield.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFFFD),
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Color(0xFFFBFFFD),
        leading: Icon(
          Icons.list,
          size: 40,
        ),
        title: Image.asset(
          'images/logo.png',
          scale: 3,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Image.asset(
              'images/bag.png',
              scale: 19,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 19),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Our way of loving \nyou back",
                    style: GoogleFonts.raleway(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ////////////////////////
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ReusableTextField(
                    icon: Icons.search,
                    hintText: "Search",
                  ),
                ),
                SizedBox(height: 10),
                //////////////
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CustomContainer(
                          width: 92.0, height: 40.0, buttonText: 'All'),
                      CustomContainer(
                          width: 92.0, height: 40.0, buttonText: 'Coffee'),
                      CustomContainer(
                          width: 92.0, height: 40.0, buttonText: 'Tea'),
                      CustomContainer(
                          width: 92.0, height: 40.0, buttonText: 'Drink'),
                    ],
                  ),
                ),
                SizedBox(height: 33),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Popular',
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Text(
                        'See All',
                        style: GoogleFonts.raleway(
                          color: Color(0xFF00623B),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      ReusableProductContainer(
                          imagePath: 'images/1.png',
                          productName: "Chocolate Frappucino",
                          productPrice: "\$20.00"),
                      ReusableProductContainer(
                          imagePath: 'images/2.png',
                          productName: "Green Tea Frappucino",
                          productPrice: "\$30.00"),
                      ReusableProductContainer(
                          imagePath: 'images/3.png',
                          productName: "Strawberry Frappucino",
                          productPrice: "\$25.00"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF00623B),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}
