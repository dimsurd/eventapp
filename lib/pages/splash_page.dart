import 'package:evetnapp/pages/home_page.dart';
import 'package:evetnapp/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: ClipRRect(
                child: Image.asset(
                  "assets/hero.png",
                  width: MediaQuery.of(context).size.width,
                  height: 385,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Find Your\nFavorite Events\nHere",
              style: brownTextStyle.copyWith(
                  fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 74,
            ),
            Container(
              width: 219,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                color: orangeColor,
                child: Text(
                  "Get Started",
                  style: whiteTextMon.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Image.asset(
                    "assets/slider_splash.png",
                    width: 42,
                    height: 8,
                  ),
                  Spacer(),
                  Text(
                    "Have an account?",
                    style: TextStyle(color: brownColor.withOpacity(0.7)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset(
                    "assets/arrow_splash.png",
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
