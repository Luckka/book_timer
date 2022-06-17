
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:book_timer/app/modules/login/controller/login_state.dart';
import 'package:book_timer/app/services/auth/auth_service.dart';


class LoginController extends Cubit<LoginState>{
  
  AuthService _authService;

  LoginController({required AuthService authService}) : _authService = authService,
  super(const LoginState.initial());

  Future<void> signIn() async{
    try{
      emit(state.copyWith(status: LoginStatus.loading));

      await _authService.singIn();

    }catch(e,s){
      log('Erro ao realizar login',error: e,stackTrace: s);
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: 'Erro ao realizar login'
      ));

    }
  }
  

  
}