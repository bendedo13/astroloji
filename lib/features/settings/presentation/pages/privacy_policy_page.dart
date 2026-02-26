import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gizlilik Politikası'),
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
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            _PolicySection(
              title: 'Veri Toplama',
              content:
                  'Yıldız Rehberi uygulaması hiçbir kişisel veri toplamaz. '
                  'Uygulama tamamen çevrimdışı çalışır ve internet bağlantısı gerektirmez.',
            ),
            SizedBox(height: 16),
            _PolicySection(
              title: 'Veri Kullanımı',
              content:
                  'Uygulama içinde gösterilen burç yorumları eğlence amaçlıdır. '
                  'Hiçbir kullanıcı verisi saklanmaz veya üçüncü taraflarla paylaşılmaz.',
            ),
            SizedBox(height: 16),
            _PolicySection(
              title: 'Çerezler',
              content:
                  'Uygulama çerez kullanmaz ve herhangi bir izleme yapmaz.',
            ),
            SizedBox(height: 16),
            _PolicySection(
              title: 'Güvenlik',
              content:
                  'Uygulamanın güvenliği için en iyi uygulamalar kullanılmaktadır.',
            ),
          ],
        ),
      ),
    );
  }
}

class _PolicySection extends StatelessWidget {
  final String title;
  final String content;

  const _PolicySection({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF6A1B9A).withOpacity(0.3),
            const Color(0xFF283593).withOpacity(0.3),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB39DDB),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
