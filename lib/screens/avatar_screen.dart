import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alí Cheen'),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('ACh'),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(right: 5),
          child: const CircleAvatar(
            maxRadius: 80,
            backgroundImage: NetworkImage(
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.8aYWzuSmubfhfI_ZTUxIdgHaHa%26pid%3DApi&f=1&ipt=86d80dd6bc0d586f13c93b37e3419b8dec3b39e6ae660d7ea0aa7644a760c120&ipo=images'),
          ),
        ),
      ),
    );
  }
}
