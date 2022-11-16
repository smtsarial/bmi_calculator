import 'package:bmi_calculator_app/Screens/RecipeDetailScreen.dart';
import 'package:bmi_calculator_app/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SuggestionScreen extends StatefulWidget {
  const SuggestionScreen({super.key});

  @override
  State<SuggestionScreen> createState() => _SuggestionScreenState();
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  List recipes = [
    {
      'id': 1,
      'name': 'Chicken',
      'image':
          'https://assets.bonappetit.com/photos/62f5674caf9bae430097be0f/5:4/w_2325,h_1860,c_limit/0810-no-fail-roast-chicken-v2.jpg',
      'description':
          'Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising them in comparison to animals such as cattle or hogs, chickens have become prevalent throughout the cuisine of cultures around the world, and their meat has been variously adapted to regional tastes.',
    },
    {
      'id': 2,
      'name': 'Chicken1',
      'image':
          'https://assets.bonappetit.com/photos/62f5674caf9bae430097be0f/5:4/w_2325,h_1860,c_limit/0810-no-fail-roast-chicken-v2.jpg',
      'description':
          'Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising them in comparison to animals such as cattle or hogs, chickens have become prevalent throughout the cuisine of cultures around the world, and their meat has been variously adapted to regional tastes.',
    },
    {
      'id': 2,
      'name': 'Chicken1',
      'image':
          'https://assets.bonappetit.com/photos/62f5674caf9bae430097be0f/5:4/w_2325,h_1860,c_limit/0810-no-fail-roast-chicken-v2.jpg',
      'description':
          'Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising them in comparison to animals such as cattle or hogs, chickens have become prevalent throughout the cuisine of cultures around the world, and their meat has been variously adapted to regional tastes.',
    },
    {
      'id': 2,
      'name': 'Chicken1',
      'image':
          'https://assets.bonappetit.com/photos/62f5674caf9bae430097be0f/5:4/w_2325,h_1860,c_limit/0810-no-fail-roast-chicken-v2.jpg',
      'description':
          'Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising them in comparison to animals such as cattle or hogs, chickens have become prevalent throughout the cuisine of cultures around the world, and their meat has been variously adapted to regional tastes.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext ctxt, int Index) {
          return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetailScreen(
                      recipe: recipes[Index],
                    ),
                  ),
                );
              },
              tileColor: kactiveCardColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              title: Text(
                recipes[Index]['name'].toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 197, 197, 197),
                ),
              ),
              subtitle: Text(
                recipes[Index]['description'].toString(),
                style: klabelTextStyle,
              ),
              leading: Image.network(
                recipes[Index]['image'].toString(),
                width: 100,
                height: 100,
              ));
        });
  }
}
