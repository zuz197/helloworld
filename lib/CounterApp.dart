import 'package:flutter/material.dart';
import 'dart:math';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;
  Color _textColor = Colors.black;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _count = 0;
    _textColor = Colors.black;
  }

  Color _getRandomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1,
    );
  }

  void _changeValue(int delta) {
    setState(() {
      _count += delta;
      _textColor = _getRandomColor();
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
      _textColor = _getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.computer, color: Colors.white),
              SizedBox(width: 8),
              Text('Ứng dụng Đếm Số'),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Giá trị hiện tại:',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 400),
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: _textColor,
                ),
                child: Text('$_count'),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _changeValue(-1),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('Giảm'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _reset,
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    child: const Text('Đặt lại'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => _changeValue(1),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    child: const Text('Tăng'),
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
