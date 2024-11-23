import 'package:workouts/data/models/set.dart';

enum CategoryName {
  pecho,
  hombros,
  biceps,
  triceps,
  cuadriceps,
  abductores,
  aductores,
  gluteos,
  isquiotibiales,
  femorales,
  dorsales,
  trapecios,
  espaldaAlta,
  espaldaBaja,
  pantorrillas,
  abdominales,
  cardio,
}

class Exercise {
  final int id;
  final String name;
  final String imageUrl;
  final List<CategoryName> categories;
  List<WorkoutSet> sets = [];

  Exercise({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.categories,
    required this.sets,
  });
}