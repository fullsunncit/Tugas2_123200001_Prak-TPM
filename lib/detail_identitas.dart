import 'package:flutter/material.dart';
import 'package:tugas2_123200001/identity.dart';

class DetailIdentity extends StatefulWidget {
  final Identity identityTerima;
  const DetailIdentity({Key? key, required this.identityTerima})
      : super(key: key);

  @override
  State<DetailIdentity> createState() => _DetailIdentityState();
}

class _DetailIdentityState extends State<DetailIdentity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Detail Page'),
          //automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Container(
            width: 600,
            height: 300,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 20,
              child: Column(
                children: [
                  Text(widget.identityTerima.name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Image.network(widget.identityTerima.fotoUrls,
                      width: 220, height: 120, fit: BoxFit.cover),
                  Text(widget.identityTerima.username),
                  Text(widget.identityTerima.email[0]),
                  Text(widget.identityTerima.email[1]),
                  Text(widget.identityTerima.company[0][0]),
                  Text(widget.identityTerima.company[0][1]),
                  Text(widget.identityTerima.company[1][0]),
                  Text(widget.identityTerima.company[1][1]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
