import 'package:isar/isar.dart';
enum ProjectStatus {
  em_andamento(label: "Em andamento"),
  finalizado(label: "Finalizado");

  final String label;

  const ProjectStatus({required this.label});
}