import 'package:flutter/material.dart';

void main() {
  runApp(const ColorApp());
}

class ColorApp extends StatelessWidget {
  const ColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ứng dụng Đổi màu nền',
      debugShowCheckedModeBanner: false,
      home: const ColorPage(),
    );
  }
}

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  Color currentColor = Colors.purple;
  String colorName = "Tím";

  void changeColor() {
    final List<Map<String, dynamic>> colors = [
      {'color': Colors.red, 'name': 'Đỏ'},
      {'color': Colors.blue, 'name': 'Xanh dương'},
      {'color': Colors.green, 'name': 'Xanh lá'},
      {'color': Colors.orange, 'name': 'Cam'},
      {'color': Colors.purple, 'name': 'Tím'},
      {'color': Colors.pink, 'name': 'Hồng'},
      {'color': Colors.teal, 'name': 'Xanh ngọc'},
    ];

    final random = (colors..shuffle()).first;
    setState(() {
      currentColor = random['color'];
      colorName = random['name'];
    });
  }

  void resetColor() {
    setState(() {
      currentColor = Colors.purple;
      colorName = "Tím";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: currentColor,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            '🎨 Ứng dụng Đổi màu nền',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Màu hiện tại",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                colorName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: changeColor,
                    icon: const Icon(Icons.color_lens),
                    label: const Text("Đổi màu"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton.icon(
                    onPressed: resetColor,
                    icon: const Icon(Icons.refresh),
                    label: const Text("Đặt lại"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
