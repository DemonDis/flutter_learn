import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Glass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.3 - 70,
                  left: 40,
                  child: Container(
                    width: 100,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Color(0xFFBC1642),
                        Color(0xFFCB5AC6),
                      ]),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.05,
                  child: GlassmorphicContainer(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.9,
                    borderRadius: 40,
                    blur: 7,
                    alignment: Alignment.bottomCenter,
                    border: 2,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFF75035).withAlpha(55),
                          Color(0xFFffffff).withAlpha(45),
                        ],
                        stops: [
                          0.3,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Color(0xFF4579C5).withAlpha(100),
                          Color(0xFFFFFFF).withAlpha(55),
                          Color(0xFFF75035).withAlpha(10),
                        ],
                        stops: [
                          0.06,
                          0.95,
                          1
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
