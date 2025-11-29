import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/onboarding_satu.dart';
import 'screen/onboarding_dua.dart';
import 'screen/onboarding_tiga.dart';
import 'screen/login_page.dart';
import 'screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Onboarding App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/onboarding1',
      getPages: [
        GetPage(name: '/onboarding1', page: () => const OnboardingSatu()),
        GetPage(name: '/onboarding2', page: () => const OnboardingDua()),
        GetPage(name: '/onboarding3', page: () => const OnboardingTiga()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/home', page: () => const HomePage()),
      ],
    );
  }
}
