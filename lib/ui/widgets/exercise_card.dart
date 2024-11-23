import 'package:flutter/material.dart';
import 'package:workouts/data/models/exercise.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({super.key, required this.exercise, required this.selected, required this.onSelected});
  final Exercise exercise;
  final bool selected;
  final ValueChanged<bool> onSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(exercise.name),
        leading: Image.network(exercise.imageUrl),
        subtitle: Text(exercise.categories.map((e) => e.name).join(', ')),
        trailing: Checkbox(
          value: selected,
          onChanged: (bool? value) {
            onSelected(value ?? false);
          },
        ),
        onLongPress: () => onSelected(!selected),
      ),
    );
  }
}