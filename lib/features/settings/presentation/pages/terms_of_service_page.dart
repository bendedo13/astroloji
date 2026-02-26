import 'package:flutter/material.dart';

class TermsOfServicePage extends StatelessWidget {
  const TermsOfServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanım Koşulları'),
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
            _TermsSection(
              title: 'Kabul',
              content:
                  'Bu uygulamayı kullanarak, bu kullanım koşullarını kabul etmiş olursunuz.',
            ),
            SizedBox(height: 16),
            _TermsSection(
              title: 'Eğlence Amaçlı',
              content:
                  'Bu uygulama sadece eğlence amaçlıdır. Burç yorumları '
                  'profesyonel tavsiye yerine geçmez.',
            ),
            SizedBox(height: 16),
            _TermsSection(
              title: 'Sorumluluk',
              content:
                  'Uygulama geliştiricisi, uygulamanın kullanımından kaynaklanan '
                  'herhangi bir zarardan sorumlu değildir.',
            ),
            SizedBox(height: 16),
            _TermsSection(
              title: 'Değişiklikler',
              content:
                  'Bu koşullar önceden haber verilmeksizin değiştirilebilir.',
            ),
          ],
        ),
      ),
    );
  }
}

class _TermsSection extends StatelessWidget {
  final String title;
  final String content;

  const _TermsSection({
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
