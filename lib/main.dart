import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app/presenter/home/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ), // Wrap your app
    ),
  );
}
