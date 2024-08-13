import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MiCarrusel());

class MiCarrusel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rodriguez Carrusel Slider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarruselRodriguez(),
    );
  }
}

class CarruselRodriguez extends StatelessWidget {
  final List<String> imageList = [
    "https://raw.githubusercontent.com/andreantoniorodriguezgarcia/p6carruselRodriguez/main/submarinos/Gotland.jpg",
    "https://raw.githubusercontent.com/andreantoniorodriguezgarcia/p6carruselRodriguez/main/submarinos/Walrus.jpg",
    "https://raw.githubusercontent.com/andreantoniorodriguezgarcia/p6carruselRodriguez/main/submarinos/oscarII.jpg",
    "https://raw.githubusercontent.com/andreantoniorodriguezgarcia/p6carruselRodriguez/main/submarinos/romeo.jpg",
    "https://raw.githubusercontent.com/andreantoniorodriguezgarcia/p6carruselRodriguez/main/submarinos/titan.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrusel Slider Rodriguez'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imageList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 230.0,
            viewportFraction: 0.8,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
