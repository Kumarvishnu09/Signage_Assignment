import 'package:flutter/material.dart';
import 'data/services/api_service.dart';
import 'domain/signage_repository.dart';
import 'presentation/signage_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = ApiService("YOUR_API_URL_HERE");
    final repository = SignageRepository(apiService);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignageScreen(repository: repository),
    );
  }
}
