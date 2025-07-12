import 'package:bookly/core/constant/app_colors.dart';
import 'package:bookly/core/constant/hive_boxes.dart';
import 'package:bookly/core/services/router.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart'; // Add this import

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(HiveBoxes.books);
  Hive.registerAdapter(BookEntityAdapter());
  runApp(
    const ProviderScope(
      // Use ProviderScope from Riverpod
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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
