import 'package:bookly/core/services/router.dart';
import 'package:bookly/features/home/presentation/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Add this import

void main() {
  runApp(
    const ProviderScope( // Use ProviderScope from Riverpod
      child: BooklyApp(),
    ),
  );
}

class BooklyApp extends ConsumerWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
