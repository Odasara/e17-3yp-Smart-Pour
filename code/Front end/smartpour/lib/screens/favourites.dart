import 'package:flutter/material.dart';


class Favorites extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.height,
            child: Image.asset("images/Favourite_bg.jpeg", fit: BoxFit.cover),
          ),
          Container(
            padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(0.5)
                ],
              ),
            ),
          ),
          Positioned(
            top: 80,
            child: Text(
              "Favorites",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}