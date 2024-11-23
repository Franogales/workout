

import 'package:flutter/material.dart';
import 'package:workouts/data/models/exercise.dart';
import 'package:workouts/data/models/set.dart';
import 'package:workouts/data/models/workout.dart';
import 'package:workouts/ui/widgets/bottom_navigation.dart';
import 'package:workouts/ui/widgets/workouts.dart';
import 'package:go_router/go_router.dart';

class WorkoutScreen extends StatelessWidget {
  final List<Workout> routines = [
    Workout(
      id: 1,
      name: 'Full Body Workout',
      exercises: [
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
      ],
      restTime: 60,
      weight: 0,
      notes: 'Remember to keep your back straight',
    ),
    Workout(
      id: 1,
      name: 'Full Body Workout',
      exercises: [
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
      ],
      restTime: 60,
      weight: 0,
      notes: 'Remember to keep your back straight',
    ),
    Workout(
      id: 1,
      name: 'Full Body Workout',
      exercises: [
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
        Exercise(
          id: 1,
          name: 'Squats',
          imageUrl: 'https://via.placeholder.com/150',
          categories: [CategoryName.cuadriceps],
          sets: [
            WorkoutSet(id:1, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:2, reps: 12, weight: 0, createdAt: DateTime.now()),
            WorkoutSet(id:3, reps: 12, weight: 0, createdAt: DateTime.now()),
          ],
        ),  
      ],
      restTime: 60,
      weight: 0,
      notes: 'Remember to keep your back straight',
    ),
    
];

  WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Entrenamientos',
        ),
      ),
      body: ListView.builder(
        itemCount: routines.length,
        itemBuilder: (context, index) {
          final routine = routines[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: WorkoutCard(
              workout: routine,
              onStart: () {
                // Acción al presionar el botón "Start Routine"
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${routine.name} started!')),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // go to create workout screen
          context.push('/create-workout');
          
        },
        tooltip: 'Crear entrenamiento',
        child: const Icon(Icons.add),
      ), 

    );
  }
}

