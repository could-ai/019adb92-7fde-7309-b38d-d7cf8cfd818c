import 'package:flutter/material.dart';
import 'package:couldai_user_app/src/ui/home/home_screen.dart';
import 'package:couldai_user_app/src/ui/chat/chat_screen.dart';

class NexusCodeApp extends StatelessWidget {
  const NexusCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NexusCode AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6200EE), // Purple 500 from script
          primary: const Color(0xFF6200EE),
          secondary: const Color(0xFF03DAC5), // Teal 200 from script
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6200EE),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/chat': (context) => const ChatScreen(),
      },
    );
  }
}
