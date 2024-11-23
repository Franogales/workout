import 'package:flutter/material.dart';
import 'package:workouts/data/models/workout.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;
  final void Function() onStart;
  const WorkoutCard({
    super.key,
    required this.workout,
    required this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          workout.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          workout.exercises.map((e) => e.name).join(', '),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: FilledButton(
          onPressed: onStart,
          child: const Icon(Icons.play_arrow),
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
          title: const Text('Editar'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.delete),
          title: const Text('Borrar'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
