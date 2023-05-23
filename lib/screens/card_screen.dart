import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(
            height: 10,
          ),
          CustomCard2(
            imageUrl:
                'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwallup.net%2Fwp-content%2Fuploads%2F2016%2F06%2F23%2F383074-New_Zealand-landscape.jpg&f=1&nofb=1&ipt=dd3e9d4315d1dfe2f51509a357dd0da562c86feb7c39e72777225e625af5392d&ipo=images',
            name: 'Paisaje 1',
          ),
          CustomCard2(
            imageUrl:
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.OhxRhSPlLMxW4UO592E87AHaEo%26pid%3DApi&f=1&ipt=42d945ecd337719c0c129004f769198bcf2a8f9eb1ac458f9a8218120d461a43&ipo=images',
            name: 'Paisaje 2',
          ),
          CustomCard2(
            imageUrl:
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.c_wzjAr4QmCBpo_3DIlN8QHaE7%26pid%3DApi&f=1&ipt=89d66bc183bccf6972bfc3b78b308c5fdb87b46106f04ce928edbedb7313723a&ipo=images',
          ),
        ],
      ),
    );
  }
}
