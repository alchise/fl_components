import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

//

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCard2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 10,
      shadowColor: AppTheme.primary,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: Text(name ?? 'Sin titulo'),
            )
        ],
      ),
    );
  }
}
