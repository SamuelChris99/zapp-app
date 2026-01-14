import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// BACK BUTTON
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFFF2F2F2),
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),

              const SizedBox(height: 20),

              /// TITLE
              const Text(
                '6 Tips Menghindari Bahaya\nAliran Listrik Saat Banjir',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 12),

              /// AUTHOR & DATE
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Samuel',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '06 Des, 2024',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              /// IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/news_detail.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 12),

              /// IMAGE DATE
              const Center(
                child: Text(
                  'Jumat, 06 Desember 2024',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              /// CONTENT
              const Text(
                'Cara Hindari Bahaya Listrik saat Banjir Melansir dari '
                    'TribunJogja, Executive Vice President Komunikasi Korporat '
                    'dan TJSL PLN, Gregorius Adi Trianto mengimbau masyarakat '
                    'untuk mengikuti tips aman dan nyaman menggunakan listrik '
                    'saat cuaca ekstrem.\n\n'
                    'Berikut tips aman hindari bahaya kelistrikan saat banjir.\n\n'
                    '1. Matikan listrik\n'
                    'Segera matikan listrik melalui Miniature Circuit Breaker '
                    '(MCB) kWh Meter, jika air mulai membanjiri rumah atau ada '
                    'kebocoran air yang mendekati aliran listrik. Sebab air '
                    'merupakan penghantar listrik.\n\n'
                    '2. Cabut peralatan listrik dari stop kontak\n'
                    'Pindahkan peralatan elektronik ke tempat yang aman dan '
                    'tidak terjangkau air.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
