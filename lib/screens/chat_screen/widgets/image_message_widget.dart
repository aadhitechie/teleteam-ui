import 'package:chat_bubbles/bubbles/bubble_normal_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageMessageWidget extends StatelessWidget {
  const ImageMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  BubbleNormalImage(
    id: 'id001',
    image: Image.network('https://images.unsplash.com/photo-1550791871-0bcd47c97881?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGF0aWVudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=900&q=60',),
    tail: true,
    delivered: true,
  );
  }
}