import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../zodiac/data/datasources/zodiac_local_datasource.dart';
import '../../../zodiac/data/repositories/zodiac_repository_impl.dart';
import '../../../zodiac/domain/entities/zodiac_sign.dart';
import '../../../zodiac/presentation/pages/zodiac_detail_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../widgets/zodiac_grid_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ZodiacRepositoryImpl repository;
  late final List<ZodiacSign> zodiacSigns;

  @override
  void initState() {
    super.initState();
    repository = ZodiacRepositoryImpl(ZodiacLocalDatasource());
    zodiacSigns = repository.getAllZodiacSigns();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🌟 Yıldız Rehberi',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            letterSpacing: 1.2,
          ),
        ),
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
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.2,
            colors: [
              Color(0xFF1A1A3A),
              Color(0xFF0B0E1F),
            ],
          ),
        ),
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.2,
          ),
          itemCount: zodiacSigns.length,
          itemBuilder: (context, index) {
            final sign = zodiacSigns[index];
            return ZodiacGridItem(
              sign: sign,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ZodiacDetailPage(
                      sign: sign,
                      repository: repository,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
