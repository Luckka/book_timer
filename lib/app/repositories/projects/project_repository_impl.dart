import 'dart:developer';

import 'package:book_timer/app/core/database/database.dart';
import 'package:book_timer/app/entities/project.dart';
import 'package:book_timer/app/entities/project_status.dart';
import 'package:isar/isar.dart';

import '../../core/exceptions/failure.dart';
import './project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final Database _database;

  ProjectRepositoryImpl({required Database database}) : _database = database;

  @override
  Future<void> register(Project project) async {
    try {
      final connection = await _database.openConnection();
      await connection.writeTxn((isar) {
        return isar.projects.put(project);
      });
    } on IsarError catch (e,s) {
      log('Erro ao cadastrar projeto', error: e,stackTrace: s);
      throw Failure(message: "Erro ao cadastrar projeto");
    }
  }

  @override
  Future<List<Project>> findByStatus(ProjectStatus status) async{
    final connections = await _database.openConnection();


    final projects = await connections.projects.filter().statusEqualTo(status).findAll();

    return projects;

  }
}
