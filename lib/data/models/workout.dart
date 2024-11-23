
import 'package:workouts/data/models/exercise.dart';

class Workout {
  final int id;
  final String name;  
  final List<Exercise> exercises;
  final int restTime;
  final int weight;
  final String notes;

  Workout({
    required this.id,
    required this.name,
    required this.exercises,
    required this.restTime,
    required this.weight,
    required this.notes,
  });
}
