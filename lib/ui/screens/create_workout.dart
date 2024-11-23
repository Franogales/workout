import 'package:flutter/material.dart';
// import 'package:workouts/data/models/exercise.dart';
import 'package:go_router/go_router.dart';


class CreateWorkoutScreen extends StatelessWidget {
  const CreateWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Exercise> exercises = [];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear entrenamiento'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 32),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre del entrenamiento',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilledButton(
              onPressed: () {
                 context.push('/exercises');
              },
              child: const Text('Add Exercise'),
            ),
          ),
        ],
      ),
    );
  }
}
