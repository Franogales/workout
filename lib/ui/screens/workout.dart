

import 'package:flutter/material.dart';
import 'package:workouts/ui/widgets/bottom_navigation.dart';

class WorkoutScreen extends StatelessWidget {
  final List<Map<String, String>> routines = [
    {
      'title': 'Lunes Push',
      'exercises': 'Bench Press (Barbell), Overhead Press (Barbell), Incline Bench Press (Dumbbell)...',
    },
    {
      'title': 'Martes Pull',
      'exercises': 'Lat Pulldown (Cable), Dumbbell Row, Seated Cable Row - Bar Grip, Dumbbell ...',
    },
    {
      'title': 'Miércoles Leg',
      'exercises': 'Squat (Barbell), Leg Press Horizontal (Machine), Romanian Deadlift (Barbell)...',
    },
    {
      'title': 'Jueves Push',
      'exercises': 'Incline Bench Press (Dumbbell), Arnold Press (Dumbbell), Chest Fly (Machine)...',
    },
  ];

  WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Workout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: routines.length,
        itemBuilder: (context, index) {
          final routine = routines[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: WorkoutCard(
              title: routine['title']!,
              exercises: routine['exercises']!,
              onStart: () {
                // Acción al presionar el botón "Start Routine"
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${routine['title']} started!')),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción al presionar el botón "Increment"
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Incremented!')),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 

    );
  }
}


class WorkoutCard extends StatelessWidget {
  final String title;
  final String exercises;
  final VoidCallback onStart;

  const WorkoutCard({
    super.key,
    required this.title,
    required this.exercises,
    required this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          exercises,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: FilledButton(
          onPressed: onStart,
          style: FilledButton.styleFrom(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: const Text('Start Routine'),
        ),
        onLongPress: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return const BottomOptions();
            },
          );
        },
      ),
    );
  }
}


class BottomOptions extends StatelessWidget {
  const BottomOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('Edit'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.delete),
          title: const Text('Delete'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
