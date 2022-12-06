// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeModel extends ChangeNotifier {
  static Uri policeNum = Uri(scheme: 'tel', path: '110');
  static Uri ambulanceNum = Uri(scheme: 'tel', path: '119');
  Future call110() async {
    await launchUrl(policeNum);
  }

  Future call119() async {
    await launchUrl(ambulanceNum);
  }
}
