import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String description;
  final String image;
  final String name;
  final int year;
  final String logoUrl;

  const DetailsPage({
    super.key,
    this.description = '',
    this.logoUrl = '',
    this.image = '',
    this.name = '',
    this.year = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Logo(logoUrl: logoUrl),
              const SizedBox(height: 10),
              DetailsText(name: name, year: year),
              const SizedBox(height: 20),
              CryptoImage(imageUrl: image),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsText extends StatelessWidget {
  const DetailsText({
    super.key,
    required this.name,
    required this.year,
  });

  final String name;
  final int year;

  @override
  Widget build(BuildContext context) {
    year == 0 ? 'N/A' : year;
    name == '' ? 'N/A' : name;
    return Text(
      '$name\n$year',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Logo extends StatelessWidget {
  final String logoUrl;

  const Logo({
    super.key,
    this.logoUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return ((logoUrl != '')
        ? Image.network(logoUrl)
        : const Icon(Icons.error, size: 50));
  }
}

class CryptoImage extends StatelessWidget {
  final String imageUrl;

  const CryptoImage({
    super.key,
    this.imageUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return ((imageUrl != '')
        ? Image.network(imageUrl)
        : const SizedBox(
            height: 50,
          ));
  }
}
