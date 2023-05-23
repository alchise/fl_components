import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 10,
      shadowColor: AppTheme.primary,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Card 1'),
            subtitle: Text(
                'Excepteur veniam ullamco exercitation eu adipisicing et pariatur duis ad mollit. Do aliquip excepteur anim enim do aute veniam duis tempor non. Tempor consequat in nisi aliquip cupidatat reprehenderit est amet Lorem tempor veniam est.'),
          ),
          const Divider(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Ok')),
                TextButton(onPressed: () {}, child: const Text('Cancel')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
