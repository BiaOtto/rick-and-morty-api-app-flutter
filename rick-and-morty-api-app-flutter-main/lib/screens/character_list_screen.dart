import 'package:flutter/material.dart';
import 'detail_screen.dart';
import '../widgets/character_image.dart';

class CharacterListScreen extends StatelessWidget {
  final List<Map<String, String>> characters = [
    {
      'name': 'Rick Sanchez',
      'image': 'https://example.com/rick.jpg',
      'status': 'Alive',
    },
    {
      'name': 'Morty Smith',
      'image': 'https://example.com/morty.jpg',
      'status': 'Alive',
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personagens'),
      ),
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    characterName: character['name']!,
                    characterImage: character['image']!,
                    characterStatus: character['status']!,
                  ),
                ),
              );
            },
            leading: CharacterImage(
              imageUrl: character['image']!,
              tag: character['name']!,
            ),
            title: Text(character['name']!),
            subtitle: Text(character['status']!),
          );
        },
      ),
    );
  }
}
