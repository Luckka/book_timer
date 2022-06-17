

import 'package:asuka/asuka.dart';
import 'package:book_timer/app/modules/login/controller/login_controller.dart';
import 'package:book_timer/app/modules/login/controller/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {

  final LoginController controller;
  const LoginPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocListener<LoginController,LoginState>(
      bloc: controller,
      listenWhen: (previous,current) => previous.status != current.status,
      listener: (context,state){
        if(state.status == LoginStatus.failure){
          final message = state.errorMessage ?? 'Erro ao realizar login';
          AsukaSnackbar.alert(message).show();
        }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 120, 75, 233),
              Color.fromARGB(255, 138, 100, 235)
            ])
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  child: Image.asset('assets/images/book.png')
                ),
                const Center(
                  child: Text(
              'Book Timer',
              style: 
              TextStyle(
                fontFamily:'Bahiana-Regular',
                color: Colors.white,
                fontSize: 70
              ),)
                ),
                SizedBox(
                  height: screenSize.height * .1,
                ),
                SizedBox(
                  width: screenSize.width * .8,
                  height: 49,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[200]
                    ),
                    onPressed: (){
                      controller.signIn();
                    },
                    child: Image.asset('assets/images/google.png'),
                  ),
                ),
                 BlocSelector<LoginController,LoginState,bool>(
                  bloc: controller,
                  selector: (state) => state.status == LoginStatus.loading,
                  builder: (context, show) {
                    return Visibility(
                      visible: show,
                      child: const Padding(
                  padding: EdgeInsets.only(top:15.0),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white,
                    ),
                  ),
                )
                    );
                  }
                ),
                 
              ],
            ),
          ),
        ),
      ),
    );
  } 
}