import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:share_plus/share_plus.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://www.google.com/imgres?q=neeraj&imgurl=https%3A%2F%2Fbsmedia.business-standard.com%2F_media%2Fbs%2Fimg%2Fabout-page%2Fthumb%2F464_464%2F1628846015.jpg&imgrefurl=https%3A%2F%2Fwww.business-standard.com%2Fabout%2Fwho-is-neeraj-chopra&docid=9fOx6eWHqbgJJM&tbnid=_1jgp7nGyFFvaM&vet=12ahUKEwiLv7r47vyJAxVdZ_UHHS6SCh0QM3oECBUQAA..i&w=464&h=464&hcb=2&ved=2ahUKEwiLv7r47vyJAxVdZ_UHHS6SCh0QM3oECBUQAA',
      'https://www.google.com/imgres?q=neeraj&imgurl=https%3A%2F%2Fhappenings.lpu.in%2Fwp-content%2Fuploads%2F2024%2F08%2Fnew-puic.jpg&imgrefurl=https%3A%2F%2Fhappenings.lpu.in%2Flpu-student-and-indian-athlete-neeraj-chopra-secures-silver-medal-in-javelin-throw-at-paris-olympics-2024%2F&docid=5E7PDIeutAkZ5M&tbnid=XvUxu3el7lr3sM&vet=12ahUKEwiLv7r47vyJAxVdZ_UHHS6SCh0QM3oECGYQAA..i&w=1280&h=853&hcb=2&ved=2ahUKEwiLv7r47vyJAxVdZ_UHHS6SCh0QM3oECGYQAA',
      'https://www.google.com/imgres?q=neeraj&imgurl=https%3A%2F%2Flookaside.instagram.com%2Fseo%2Fgoogle_widget%2Fcrawler%2F%3Fmedia_id%3D3431598671813367057&imgrefurl=https%3A%2F%2Fwww.instagram.com%2Fneeraj____chopra%2F&docid=_GFL5FuxiDZlAM&tbnid=n5k3CZTBQql_-M&vet=12ahUKEwiLv7r47vyJAxVdZ_UHHS6SCh0QM3oECDAQAA..i&w=1440&h=961&hcb=2&ved=2ahUKEwiLv7r47vyJAxVdZ_UHHS6SCh0QM3oECDAQAA',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Description'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: imageUrls.map((url) {
                return Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              }).toList(),
              options: CarouselOptions(
                height: 250.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 8),
                      Text('1034'),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.comment, color: Colors.grey),
                      SizedBox(width: 8),
                      Text('1034'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 8),
                      const Text('3.2'),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.share, color: Colors.grey),
                    onPressed: () {
                      Share.share('Check out this amazing content!');
                    },
                  ),
                ],
              ),
            ),
            const Divider(height: 32, thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Actor Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.access_time, size: 16, color: Colors.grey),
                      SizedBox(width: 8),
                      Text('Duration 20 Mins'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.monetization_on, size: 16, color: Colors.grey),
                      SizedBox(width: 8),
                      Text('Total Average Fees ₹9,999'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'About',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See More',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Meetup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
