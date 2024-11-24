import 'package:flutter/material.dart';
import 'package:calculadora/calculadora_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: const Color(0xFF6200EE),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            // sub app calculadora
            AppTile(title: "App 1", icon: Icons.app_blocking, navigateTo: CalculadoraPage()),
            // AppTile(title: "App 2", icon: Icons.app_registration, navigateTo: App2Home()),
            // AppTile(title: "App 3", icon: Icons.app_shortcut, navigateTo: App3Home()),
          ],
        ),
      ),
    );
  }
}

class AppTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget navigateTo;

  const AppTile({super.key, required this.title, required this.icon, required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => navigateTo),
      ),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
