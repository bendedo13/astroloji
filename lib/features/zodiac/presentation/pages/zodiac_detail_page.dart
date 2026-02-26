import 'package:flutter/material.dart';
import '../../data/repositories/zodiac_repository_impl.dart';
import '../../domain/entities/zodiac_sign.dart';

class ZodiacDetailPage extends StatelessWidget {
  final ZodiacSign sign;
  final ZodiacRepositoryImpl repository;

  const ZodiacDetailPage({
    super.key,
    required this.sign,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {
    final prediction = repository.getDailyPrediction(sign);

    return Scaffold(
      appBar: AppBar(
        title: Text(sign.name),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF2E0854),
                Color(0xFF0B0E1F),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.5,
            colors: [
              Color(0xFF1A1A3A),
              Color(0xFF0B0E1F),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  sign.symbol,
                  style: const TextStyle(
                    fontSize: 100,
                    color: Color(0xFFB39DDB),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  sign.name,
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Color(0xFF8E44AD),
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  sign.dateRange,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF4A235A).withOpacity(0.9),
                        const Color(0xFF154360).withOpacity(0.9),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF8E44AD).withOpacity(0.3),
                        blurRadius: 25,
                        spreadRadius: 5,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      const Text(
                        'Günlük Yorum',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFB39DDB),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        prediction,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                          height: 1.5,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Icon(
                        Icons.star,
                        color: Color(0xFFB39DDB),
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
