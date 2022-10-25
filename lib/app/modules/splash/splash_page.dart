import 'package:book_timer/app/core/ui/font_styles.dart';
import 'package:book_timer/app/services/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {

  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Modular.get<AuthService>().signOut();
    FirebaseAuth.instance.authStateChanges().listen((User? user) { 
        if(user == null) {
           Modular.to.navigate('/login');
        } else {
           Modular.to.navigate('/home');
        }
    });
  }
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