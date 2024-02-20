import 'dart:convert';

import 'package:crypto_look/crypto_list.dart';
import 'package:crypto_look/data/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> cryptoData = [];

  @override
  void initState() {
    cryptoData = jsonDecode(cryptoExchanges);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Look'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: CryptoList(cryptoData: cryptoData),
    );
  }
}
