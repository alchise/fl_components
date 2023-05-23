//import 'package:fl_components/screens/screen.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(AppRoutes.menuOption[i].name),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.menuOption[i].route);
                  },
                  leading: Icon(
                    AppRoutes.menuOption[i].icon,
                    color: AppTheme.primary,
                  ),
                ),
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemCount: AppRoutes.menuOption.length));
  }
}
