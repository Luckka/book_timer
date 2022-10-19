import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: Container(
             decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0XFF453A8F),
                Color(0XFF22234D)
              ])
             ),
             child: Center(
              child: Image.asset('assets/images/logo_book.png'),
             ),
           ),
       );
  }
}