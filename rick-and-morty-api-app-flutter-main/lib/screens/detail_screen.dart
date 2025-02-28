import 'package:flutter/material.dart';
import '../widgets/character_image.dart';
import '../widgets/character_details.dart';

class DetailScreen extends StatelessWidget {
  final String characterName;
  final String characterImage;
  final String characterStatus;

 
  DetailScreen({
    required this.characterName,
    required this.characterImage,
    required this.characterStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(characterName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            CharacterImage(imageUrl: characterImage, tag: characterName),
            const SizedBox(height: 16),
            
            CharacterDetails(
              characterName: characterName,
              characterStatus: characterStatus,
            ),
          ],
        ),
      ),
    );
  }
}
