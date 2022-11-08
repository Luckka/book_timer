import 'package:book_timer/app/view_models/project_view_model.dart';
import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final ProjectViewModel projectViewModel;
  const ProjectTile({Key? key, required this.projectViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 90),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[300]!, width: 4)),
      child: Column(
        children: [
          _ProjectName(projectViewModel: projectViewModel),
          Expanded(child: _ProjectProgress(projectViewModel: projectViewModel))
        ],
      ),
    );
  }
}

class _ProjectName extends StatelessWidget {
  final ProjectViewModel projectViewModel;

  const _ProjectName({super.key, required this.projectViewModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(projectViewModel.name),
          Icon(
            Icons.arrow_right,
            color: Theme.of(context).primaryColor,
            size: 30,
          ),
        ],
      ),
    );
  }
}

class _ProjectProgress extends StatelessWidget {
  final ProjectViewModel projectViewModel;
  const _ProjectProgress({super.key, required this.projectViewModel});

  @override
  Widget build(BuildContext context) {
    
    final totalTasks = projectViewModel.tasks.fold<int>(0,(previousValue,task) => previousValue += task.duration);
    var percent = 0.0;

    if(totalTasks > 0){
      percent = totalTasks / projectViewModel.estimate;
    }
    
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
           Expanded(
            child: LinearProgressIndicator(
              value: percent,
              backgroundColor: Colors.grey[400],
              color: Theme.of(context).primaryColor
            )
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text('${projectViewModel.estimate}h'),
          )
          
        ],
      ),
    );
  }
}
