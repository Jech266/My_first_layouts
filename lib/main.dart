import 'package:flutter/material.dart';
import 'package:my_first_layouts/statemanager/button_action.dart';
import 'package:my_first_layouts/statemanager/carousel_imagens.dart';
import 'package:my_first_layouts/widgets/buttonsection.dart';
import 'package:my_first_layouts/widgets/textsection.dart';
import 'package:my_first_layouts/widgets/title_section.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: const [
            CarouselImagen(),
            TitleSection(),
            ButtonSection(),
            TextSection(),
          ]
          
        ),
      ),
    );
  }
}
