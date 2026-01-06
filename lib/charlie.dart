import 'package:flutter/material.dart';

class charlie extends StatelessWidget {
  const charlie({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              block1(),
              const SizedBox(height: 40),
              block2(),
              const SizedBox(height: 25),
              block3(),
              const SizedBox(height: 25),
              const Text(
                'Saved Places',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Expanded(child: block4()),
            ],
          ),
        ),
      ),
    );
  }
}

Widget block1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.extension)),
    ],
  );
}

Widget block2() {
  return RichText(
    textAlign: TextAlign.left,
    text: const TextSpan(
      style: TextStyle(fontSize: 60, color: Colors.black, height: 1.3),
      children: [
        TextSpan(
          text: 'Welcome,\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: 'Charlie',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ],
    ),
  );
}

Widget block3() {
  return TextField(
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.search),
      hintText: 'Search',
      hintStyle: const TextStyle(fontSize: 16),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey),
      ),
    ),
  );
}

Widget block4() {
  return GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 12,
    mainAxisSpacing: 12,
    children: [
      _placeCard('assets/a1.jpg'),
      _placeCard('assets/a4.jpg'),
      _placeCard('assets/a3.jpg'),
      _placeCard('assets/a5.jpg'),
    ],
  );
}

Widget _placeCard(String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Image.asset(imagePath, fit: BoxFit.cover),
  );
}
