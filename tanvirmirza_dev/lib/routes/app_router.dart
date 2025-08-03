import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanvirmirza_dev/routes/app_route_names.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: AppRouteNames.home,
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        name: AppRouteNames.about,
        path: '/about',
        builder: (context, state) => const AboutView(),
      ),
      GoRoute(
        name: AppRouteNames.projects,
        path: '/projects',
        builder: (context, state) => const ProjectView(),
      ),
      GoRoute(
        name: AppRouteNames.contact,
        path: '/contact',
        builder: (context, state) => const ContactView(),
      ),
    ],
    errorBuilder: (context, state) => const Scaffold(
      body: Center(child: Text("404 - Page not found")),
    ),
  );
}
