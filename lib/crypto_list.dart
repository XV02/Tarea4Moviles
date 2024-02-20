import 'package:crypto_look/details_page.dart';
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
        return ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        description: cryptoData[index]['description'],
                        image: cryptoData[index]['image_url'] ?? '',
                        name: cryptoData[index]['name'],
                        year: cryptoData[index]['year_established'],
                        logoUrl: cryptoData[index]['image'],
                      )));
            },
            leading: (cryptoData[index]['image'] != null)
                ? Image.network(cryptoData[index]['image'])
                : const Icon(
                    Icons.error,
                    size: 50,
                  ),
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
