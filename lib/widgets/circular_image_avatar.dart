import 'package:flutter/material.dart';

class CircularImageWithBorder extends StatelessWidget {
  final userImage;

  const CircularImageWithBorder({super.key, required this.userImage});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65, // Largura da imagem
      height: 55, // Altura da imagem
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Define a forma como circular
        border: Border.all(
          color: Colors.white, // Cor da borda
          width: 3.0, // Espessura da borda
        ),
      ),
      child: ClipOval(
        child: Image.network(
          userImage, // URL da sua imagem
          fit: BoxFit.cover, // Ajuste de imagem para preencher o círculo
        ),
      ),
    );
  }
}
