import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import 'package:workouts/ui/screens/workout.dart';


final  router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return  WorkoutScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'workout',
          builder: (BuildContext context, GoRouterState state) {
            return  WorkoutScreen();
          },
        ),
      ],
    ),
  ],
);