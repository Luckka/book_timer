import 'package:book_timer/app/services/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  void initState() {
    super.initState();
    Modular.get<AuthService>().singOut();
    FirebaseAuth.instance.authStateChanges().listen((User? user) { 
      if(user == null){
        Modular.to.navigate('/login');
      }else{
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
            Color.fromARGB(255, 120, 75, 233),
            Color.fromARGB(255, 138, 100, 235)
          ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ 
            SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: Image.asset('assets/images/book.png')
            ),
            const Center(child: Text(
              'Book Timer',
              style: 
              TextStyle(
                fontFamily:'Bahiana-Regular',
                color: Colors.white,
                fontSize: 70
              ),))
        ]),
      ),
    );
  }
}