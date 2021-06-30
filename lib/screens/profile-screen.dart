import 'package:flutter/material.dart';

import '../theme.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 120,
              child: Image(
                image: AssetImage('assets/images/macarrao.jpg'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: secundaryColor.withOpacity(0.32),
                ),
              ),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'ASAR: Cocer un manjar en el horno, parrilla o asador con grasa solamente.',
                  hintStyle: TextStyle(color: textColor),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: secundaryColor.withOpacity(0.32),
                ),
              ),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'BIZCOCHO: Masa de harina, huevos y azúcar cocida al horno.',
                  hintStyle: TextStyle(color: textColor),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: secundaryColor.withOpacity(0.32),
                ),
              ),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'BLANQUETA: Guiso de ternera, volatería o conejo, en salsa cremosa.',
                  hintStyle: TextStyle(color: textColor),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: secundaryColor.withOpacity(0.32),
                ),
              ),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'BRIOCHE: Bollo de masa con levadura, ligeramente dulce.',
                  hintStyle: TextStyle(color: textColor),
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: navigationBar(),
    );
  }
}
