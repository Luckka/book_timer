import 'package:asuka/asuka.dart';
import 'package:book_timer/app/modules/project/detail/controller/project_detail_controller.dart';
import 'package:book_timer/app/modules/project/detail/widgets/project_detail_appbar.dart';
import 'package:book_timer/app/modules/project/detail/widgets/project_note_tile.dart';
import 'package:book_timer/app/modules/project/detail/widgets/project_pie_chart.dart';
import 'package:book_timer/app/view_models/project_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectDetailPage extends StatelessWidget {
  final ProjectDetailController projectDetailController;

  const ProjectDetailPage({Key? key, required this.projectDetailController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProjectDetailController, ProjectDetailState>(
        bloc: projectDetailController,
        listener: (context, state) {
          if (state.status == ProjectDetailStatus.failure) {
            AsukaSnackbar.alert('Erro interno');
          }
        },
        builder: (context, state) {
          final projectViewModel = state.projectViewModel;

          switch (state.status) {
            case ProjectDetailStatus.initial:
              return const Center(
                child: Text('Carregando livro'),
              );
            case ProjectDetailStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ProjectDetailStatus.complete:
              return _buildProjectDetail(context, projectViewModel!);
            case ProjectDetailStatus.failure:
              if (projectViewModel != null) {
                return _buildProjectDetail(context, projectViewModel);
              }

              return const Center(child: Text('Erro ao carregar livro'));
          }
        },
      ),
    );
  }

  Widget _buildProjectDetail(
      BuildContext context, ProjectViewModel projectViewModel) {
    return CustomScrollView(
      slivers: [
        ProjectDetailAppbar(projectViewModel: projectViewModel,),
        SliverList(
            delegate: SliverChildListDelegate([
          const Padding(
            padding: EdgeInsets.only(top: 50.0, bottom: 50),
            child: ProjectPieChart(),
          ),
          const ProjectNoteTile(),
        ]))
      ],
    );
  }
}
