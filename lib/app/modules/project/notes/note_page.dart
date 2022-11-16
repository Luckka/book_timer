import 'package:book_timer/app/modules/project/notes/controller/note_controller.dart';
import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {

  final NoteController controller;

  const NotePage({ Key? key, required this.controller }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            title: const Text('Criar nota',style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
           ),
           body: Container(),
       );
  }
}