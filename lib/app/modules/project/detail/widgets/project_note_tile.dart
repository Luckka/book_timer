import 'package:flutter/material.dart';

class ProjectNoteTile extends StatelessWidget {

  const ProjectNoteTile({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10)
        ),
        
        child: Row(
          children: [
            Text('Nome da Note'),
          ],
        ),
       );
  }
}