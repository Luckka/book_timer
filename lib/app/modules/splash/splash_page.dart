import 'package:book_timer/app/core/ui/font_styles.dart';
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
             child: Padding(
               padding: const EdgeInsets.only(top:100.0),
               child: Column(
                 children: [
                   Image.asset('assets/images/logo_book.png'),
                   const SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/images/reading.png')
                      ),
                      const SizedBox(width: 5,),
                       Text('Book Timer',style: FontStyles().headingMedium),
                     ],
                   )
                 ],
               ),
             ),
           ),
       );
  }
}