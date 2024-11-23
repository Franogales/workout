import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:workouts/ui/screens/create_workout.dart';
import 'package:workouts/ui/screens/search_exercise.dart';

import 'package:workouts/ui/screens/workouts.dart';


final  router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return  WorkoutScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'workouts',
          builder: (BuildContext context, GoRouterState state) {
            return  WorkoutScreen();
          },
        ),
        GoRoute(path: 'create-workout', builder: (BuildContext context, GoRouterState state) {
          return  const CreateWorkoutScreen();
        }),
        GoRoute(path: 'exercises', builder: (BuildContext context, GoRouterState state) {
          return  const SearchExerciseScreen();
        }),
      ],
    ),
  ],
);