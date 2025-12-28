import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/ai_page.dart';
import 'package:myapp/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color electricBlue = Color(0xFF7DF9FF);

    return MaterialApp(
      title: 'Sigma-AI',
      theme: ThemeData(
        primaryColor: electricBlue,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          titleTextStyle: GoogleFonts.lato(
            color: electricBlue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: const IconThemeData(color: electricBlue),
        ),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sigma-ai', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Future.',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Your personal AI assistant.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AIPage()),
            );
          },
          child: const Text('Test for Free'),
        ),
      ),
    );
  }
}
