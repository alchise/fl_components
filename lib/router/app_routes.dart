import 'package:fl_components/screens/inputs_screen.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
      route: 'listview1',
      name: 'Listview1Screen',
      screen: const Listview1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview2Screen',
      screen: const Listview2Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'card',
      name: 'CardScreen',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOption(
      route: 'alert',
      name: 'AlertScreen',
      screen: const AlertScreen(),
      icon: Icons.add_alarm,
    ),
    MenuOption(
      route: 'avatar',
      name: 'AvatarScreen',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle,
    ),
    MenuOption(
      route: 'animated',
      name: 'AnimatedScreen',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_fill_outlined,
    ),
    MenuOption(
      route: 'inputs',
      name: 'InputsScreen',
      screen: const InputsScreen(),
      icon: Icons.input_outlined,
    ),
    MenuOption(
      route: 'slider',
      name: 'SliderScreen',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_sharp,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
