// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:getx/views/details_screen.dart';
import 'package:getx/views/home_screen.dart';
import 'package:getx/views/secondScreen.dart';

const String firstScreen = "/first-screen";
const String secondScreen = "/second-screen";
const String detailsScreen = "/details-screen";

List<GetPage> pages = [
  GetPage(
    name: firstScreen,
    page: () => HomeScreen(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: secondScreen,
    page: () => SecondPage(),
    transition: Transition.downToUp,
  ),
  GetPage(
    name: detailsScreen,
    page: () => DetailsScreen(),
    transition: Transition.zoom,
  ),
];
