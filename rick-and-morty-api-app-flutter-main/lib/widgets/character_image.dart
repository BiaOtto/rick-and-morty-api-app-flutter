import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CharacterImage extends StatelessWidget {
  final String imageUrl;
  final String tag;

  const CharacterImage({
    Key? key,
    required this.imageUrl,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,  // Usando o nome do personagem como tag única
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: 200, // Ajuste o tamanho conforme necessário
        height: 200, // Ajuste o tamanho conforme necessário
        fit: BoxFit.cover,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
