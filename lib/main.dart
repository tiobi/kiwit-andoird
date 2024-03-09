import 'package:flutter/material.dart';

import 'app/kiwit_app.dart';
import 'injection_container.dart';

void main() async {
  /// Initialize the Widgets and the dependencies.
  ///
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  // Todo:
  /// Initialize Google Ads Here.
  ///

  runApp(const KiwitApp());
}
