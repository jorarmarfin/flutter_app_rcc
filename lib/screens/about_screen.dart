import 'package:flutter/material.dart';
import 'package:flutter_app_rcc/data/about_data.dart';
import 'package:flutter_app_rcc/data/options_data.dart';

import 'components/components.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = 'about-screen';
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: listOptionsData[0].title),
      bottomNavigationBar: const CustomNavigatorBar(),
      body: ListView(
        children: const [
          Image(
              image: AssetImage('assets/images/app_banner_1.png'),
              fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SelectableText(textAbout1),
                SelectableText(textAbout2),
                SelectableText(textAbout2b),
                SelectableText(textAbout2c),
                SelectableText(textAbout2d),
                SelectableText(textAbout2e),
                SizedBox(height: 10),
                SelectableText(textAbout3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
