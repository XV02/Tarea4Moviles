import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({
    super.key,
    required this.cryptoData,
  });

  final List cryptoData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cryptoData.length,
      itemBuilder: (BuildContext context, int index) {
        cryptoData[index]['trust_score'] =
            cryptoData[index]['trust_score'] ?? 'N/A';
        cryptoData[index]['year_established'] =
            cryptoData[index]['year_established'] ?? 'N/A';
        cryptoData[index]['country'] = cryptoData[index]['country'] ?? 'N/A';
        if (cryptoData[index]['image'] == null) {
          return ListTile(
            leading: const Icon(Icons.error),
            title: Text(cryptoData[index]['name']),
            subtitle: Text(
              '${cryptoData[index]['country']}\n${cryptoData[index]['year_established']}',
            ),
            trailing: CircleAvatar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              child: Text(cryptoData[index]['trust_score'].toString()),
            ),
          );
        }
        return ListTile(
            leading: Image.network(cryptoData[index]['image']),
            title: Text(cryptoData[index]['name']),
            // The subtitle is the country an line jump and the year
            subtitle: Text(
              '${cryptoData[index]['country']}\n${cryptoData[index]['year_established']}',
            ),
            trailing: CircleAvatar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              child: Text(cryptoData[index]['trust_score'].toString()),
            ));
      },
    );
  }
}
