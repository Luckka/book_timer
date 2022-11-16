import 'package:book_timer/app/entities/project_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../view_models/project_view_model.dart';

class ProjectDetailAppbar extends SliverAppBar {
  ProjectDetailAppbar({required ProjectViewModel projectViewModel, super.key})
      : super(
          expandedHeight: 100,
          pinned: true,
          toolbarHeight: 100,
          title: Text(projectViewModel.name),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          flexibleSpace: Stack(
            children: [
              Align(
                alignment: const Alignment(0, 1.6),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 48,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${projectViewModel.notes.length} notes'),
                         Visibility(
                          visible: projectViewModel.status != ProjectStatus.finalizado,
                          replacement: const Text('Leitura Finalizada'),
                          child: _NewNotes(projectViewModel: projectViewModel))
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
}

class _NewNotes extends StatelessWidget {

  final ProjectViewModel projectViewModel;
  const _NewNotes({super.key, required this.projectViewModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Modular.to.pushNamed('/project/note/', arguments: projectViewModel);
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          Text('Add Notes')
        ],
      ),
    );
  }
}
