// lib/main.dart
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

  final List<Map<String, String>> recipes = const [
    {
      'name': 'Apple Sauce',
      'description': 'A delicious apple sauce recipe.',
      'ingredients': 'Apples, Sugar, Cinnamon',
      'instructions':
          'Peel and core apples, cook with sugar and cinnamon until soft, then blend.',
    },
    {
      'name': 'Chicken Alfredo with Nuclear bomb',
      'description':
          'A chicken alfredo recipe with a literal nuclear bomb in it.',
      'ingredients': 'Chicken, Alfredo Sauce, Pasta, Hot Sauce',
      'instructions':
          'Cook chicken, mix with alfredo sauce, serve over pasta with a stolen U.S nuclear warhead.',
    },
    {
      'name': 'Beef Stroganoff with extra engine oil',
      'description': 'A hearty beef stroganoff recipe.',
      'ingredients': 'Beef, Mushrooms, Onions, Sour Cream, Pasta',
      'instructions':
          'Cook beef with mushrooms and onions, mix with sour cream, serve over pasta.',
    },
    {
      'name': 'Vegetable Stir Fry (with a side of flutter)',
      'description': 'A healthy vegetable stir fry recipe.',
      'ingredients': 'Mixed Vegetables, Soy Sauce, Garlic, Ginger',
      'instructions':
          'Stir fry vegetables with garlic and ginger, add soy sauce, serve hot.',
    },
    {
      'name': 'Taco Sandwich',
      'description': 'A fusion of taco and sandwich.',
      'ingredients': 'Taco Meat, Lettuce, Tomato, Cheese, Bread',
      'instructions':
          'Assemble taco meat, lettuce, tomato, and cheese between slices of bread.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe List'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cook.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                recipes[index]['name'] ?? 'No Name',
                style: TextStyle(color: Colors.white), // Ensure text is visible
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      recipe: recipes[index],
                    ),
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
