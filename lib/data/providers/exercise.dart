


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workouts/data/models/exercise.dart';

class SelectedExercisesNotifier extends StateNotifier<List<Exercise>> {
  SelectedExercisesNotifier() : super([]);

  void toggleExercise(Exercise exercise) {
    if (state.contains(exercise)) {
      state = state.where((e) => e != exercise).toList();
    } else {
      state = [...state, exercise];
    }
  }
}

final selectedExercisesProvider = StateNotifierProvider<SelectedExercisesNotifier, List<Exercise>>((ref) {
  return SelectedExercisesNotifier();
});