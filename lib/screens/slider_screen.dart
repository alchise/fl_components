// ignore_for_file: avoid_print

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider && Checks'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              divisions: 5,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
                print(value);
                setState(() {});
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.kkiGppEEokKmYPZrPVNuHQHaEo%26pid%3DApi&f=1&ipt=63ce6ab9a174ea1c7fd62b761ad617ac2695d0caf07dc1a9cc89680ef29ee69f&ipo=images'),
              fit: BoxFit.contain,
              width: _sliderValue,
            )
          ],
        ));
  }
}
