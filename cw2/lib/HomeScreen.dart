import 'package:flutter/material.dart';
import 'details_screen.dart'; // Import the details screen

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
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> recipes = const [
    'Apple Sauce',
    'Chicken Alfredo with Nuclear bomb',
    'Beef Stroganoff with extra engine oil',
    'Vegetable Stir Fry (with a side of flutter)',
    'Taco Sandwich'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe List'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cooking_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(recipes[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(recipeName: recipes[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
