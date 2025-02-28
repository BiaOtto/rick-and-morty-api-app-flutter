import 'package:flutter/material.dart';

class CharacterDetails extends StatelessWidget {
  final String characterName;
  final String characterStatus;

  CharacterDetails({
    required this.characterName,
    required this.characterStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status: $characterStatus',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
