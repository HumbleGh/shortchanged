import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shortchanged/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Initialize hive to take care of storage
  await Hive.initFlutter();
  // open a box to access the storage
  await Hive.openBox("application");

  runApp(ProviderScope(child: const Shortchanged()));
}

class Shortchanged extends StatelessWidget {
  const Shortchanged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Use GetMaterialApp instead of MaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Shortchanged',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
