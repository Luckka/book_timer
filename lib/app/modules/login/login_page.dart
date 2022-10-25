import 'package:asuka/asuka.dart';
import 'package:book_timer/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/ui/font_styles.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;
  const LoginPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return BlocListener<LoginController, LoginState>(
      bloc: controller,
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
          if(state.status == LoginStatus.failure){
            final message = state.errorMessage ?? "Erro ao realizar login";
            AsukaSnackbar.alert(message).show();
          }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0XFF453A8F), Color(0XFF22234D)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_book.png'),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/images/reading.png')),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('Book Timer', style: FontStyles().headingMedium),
                ],
              ),
              SizedBox(
                height: screenSize.height * .1,
              ),
              SizedBox(
                width: screenSize.width * .8,
                height: 49,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200]),
                    onPressed: () {
                      controller.signIn();
                    },
                    child: Image.asset('assets/images/google.png')),
              ),
              BlocSelector<LoginController, LoginState, bool>(
                bloc: controller,
                selector: (state) => state.status == LoginStatus.loading,
                builder: (context, show) {
                  return Visibility(
                    visible: show,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Center(
                        child: CircularProgressIndicator.adaptive(
                          backgroundColor: Color(0XFFEFC429),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
