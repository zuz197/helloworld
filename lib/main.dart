import 'package:flutter/material.dart';

import 'ColorApp.dart';
import 'CounterApp.dart';
import 'BmiApp.dart';
import 'FeedbackApp.dart';
import 'LoginApp.dart';
import 'RegisterApp.dart';
import 'classroom.dart';
import 'my_home_page.dart';
import 'myplace.dart';
import 'my_product.dart';
import 'news_screen.dart';
import 'charlie.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuHome(),
    );
  }
}

enum MenuType {
  home,
  place,
  classroom,
  welcome,
  changeColor,
  counter,
  login,
  register,
  bmi,
  feedback,
  product,
  news,
  profile, // 👈 thêm Profile
}

class MenuHome extends StatefulWidget {
  const MenuHome({super.key});

  @override
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  MenuType currentMenu = MenuType.home;

  Widget _getBody() {
    switch (currentMenu) {
      case MenuType.home:
        return const MyHomePage();
      case MenuType.place:
        return const myplace();
      case MenuType.classroom:
        return const classroom();
      case MenuType.welcome:
        return const charlie();
      case MenuType.changeColor:
        return const ColorApp();
      case MenuType.counter:
        return const CounterApp();
      case MenuType.login:
        return const LoginApp();
      case MenuType.register:
        return const RegisterApp();
      case MenuType.bmi:
        return const BmiApp();
      case MenuType.feedback:
        return const FeedbackApp();
      case MenuType.product:
        return const MyProduct();
      case MenuType.news:
        return const NewsScreen();
      case MenuType.profile:
        return ProfilePage(
          data: {
            "username": "admin",
            "password": "123456",
            "email": "admin@gmail.com",
            "firstName": "Nguyễn",
            "lastName": "Văn A",
            "age": 22,
            "gender": "Nam",
            "phone": "0123456789",
            "image": "https://via.placeholder.com/150",
            "address": {"address": "Huế"},
            "company": {"name": "ABC Company", "title": "Intern"},
            "bank": {"cardNumber": "1234 5678 9999"},
            "crypto": {"coin": "Bitcoin"},
            "role": "User",
          },
        );
    }
  }

  ListTile _menuItem(String title, MenuType type) {
    return ListTile(
      title: Text(title),
      onTap: () {
        setState(() => currentMenu = type);
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu bài tập Flutter - Nhóm 2'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Danh sách bài tập',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            _menuItem('My Home Page', MenuType.home),
            _menuItem('My Place', MenuType.place),
            _menuItem('My Class', MenuType.classroom),
            _menuItem('Welcome', MenuType.welcome),
            _menuItem('Change Color', MenuType.changeColor),
            _menuItem('Counter', MenuType.counter),
            _menuItem('Login', MenuType.login),
            _menuItem('Register', MenuType.register),
            _menuItem('BMI', MenuType.bmi),
            _menuItem('Feedback', MenuType.feedback),
            _menuItem('My Product', MenuType.product),
            _menuItem('News List', MenuType.news),
            _menuItem('Profile', MenuType.profile), // 👈 dòng mới
          ],
        ),
      ),
      body: _getBody(),
    );
  }
}

