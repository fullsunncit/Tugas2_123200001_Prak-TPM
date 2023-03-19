import 'package:flutter/material.dart';
import 'package:tugas2_123200001/identity.dart';
import 'package:tugas2_123200001/detail_identitas.dart';

class ListDaftar extends StatefulWidget {
  const ListDaftar({Key? key}) : super(key: key);

  @override
  State<ListDaftar> createState() => _ListDaftarState();
}

class _ListDaftarState extends State<ListDaftar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text('Main Page')),
          body: ListView.builder(
            itemBuilder: (context, index) {
              final Identity dataIdentity = listIdentity[index];
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailIdentity(identityTerima: dataIdentity);
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(dataIdentity.fotoUrls,
                          width: 220, height: 120, fit: BoxFit.cover),
                      Text("  "),
                      Text(dataIdentity.name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: listIdentity.length,
          )),
    );
  }
}
