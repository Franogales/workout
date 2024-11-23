import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:workouts/data/models/exercise.dart';
import 'package:workouts/data/providers/exercise.dart';
import 'package:workouts/ui/widgets/exercise_card.dart';

// Define a provider for the list of exercises
final exercisesProvider = Provider<List<Exercise>>((ref) {
  return [
    Exercise(
      id: 1,
      name: 'Squats',
      imageUrl: 'https://via.placeholder.com/150',
      categories: [CategoryName.cuadriceps],
      sets: [],
    ),
    Exercise(
      id: 1,
      name: 'Squats',
      imageUrl: 'https://via.placeholder.com/150',
      categories: [CategoryName.cuadriceps],
      sets: [],
    ),
    Exercise(
      id: 1,
      name: 'Squats',
      imageUrl: 'https://via.placeholder.com/150',
      categories: [CategoryName.cuadriceps],
      sets: [],
    ),
    Exercise(
      id: 1,
      name: 'Squats',
      imageUrl: 'https://via.placeholder.com/150',
      categories: [CategoryName.cuadriceps],
      sets: [],
    ),
    Exercise(
      id: 1,
      name: 'Squats',
      imageUrl: 'https://via.placeholder.com/150',
      categories: [CategoryName.cuadriceps],
      sets: [],
    ),
  ];
});

// Define a StateNotifier for managing selected exercises


// Define a provider for the selected exercises


class SearchExerciseScreen extends ConsumerWidget {
  const SearchExerciseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercises = ref.watch(exercisesProvider);
    final selectedExercises = ref.watch(selectedExercisesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejericios'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 32),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Buscar ejercicios',
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                final exercise = exercises[index];
                final isSelected = selectedExercises.contains(exercise);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ExerciseCard(
                    exercise: exercise,
                    selected: isSelected,
                    onSelected: (selected) {
                      ref.read(selectedExercisesProvider.notifier).toggleExercise(exercise);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop(selectedExercises);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}