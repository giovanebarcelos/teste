import 'package:flutter/material.dart';
import 'package:giovane_s_application2/presentation/in_cio_2_5_screen/in_cio_2_5_screen.dart';
import 'package:giovane_s_application2/presentation/in_cio_1_5_screen/in_cio_1_5_screen.dart';
import 'package:giovane_s_application2/presentation/in_cio_3_5_screen/in_cio_3_5_screen.dart';
import 'package:giovane_s_application2/presentation/in_cio_4_5_screen/in_cio_4_5_screen.dart';
import 'package:giovane_s_application2/presentation/in_cio_5_5_screen/in_cio_5_5_screen.dart';
import 'package:giovane_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String inCio25Screen = '/in_cio_2_5_screen';

  static const String inCio15Screen = '/in_cio_1_5_screen';

  static const String inCio35Screen = '/in_cio_3_5_screen';

  static const String inCio45Screen = '/in_cio_4_5_screen';

  static const String inCio55Screen = '/in_cio_5_5_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        inCio25Screen: InCio25Screen.builder,
        inCio15Screen: InCio15Screen.builder,
        inCio35Screen: InCio35Screen.builder,
        inCio45Screen: InCio45Screen.builder,
        inCio55Screen: InCio55Screen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: InCio25Screen.builder
      };
}
