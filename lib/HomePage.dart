import 'dart:math';
import 'package:flutter/material.dart';

enum MenuItemType {
  home,
  place,
  classRoom,
  welcome,
  changeColor,
  counter,
  login,
  register,
  bmi,
  feedback,
  product,
  news,
  loginProfile,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItemType? selectedMenu;
  final Random random = Random();

  final Map<MenuItemType, String> menuImages = {
    MenuItemType.home: 'assets/home.png',
    MenuItemType.place: 'assets/place.png',
    MenuItemType.classRoom: 'assets/class.png',
    MenuItemType.welcome: 'assets/welcome.png',
    MenuItemType.changeColor: 'assets/change_color.png',
    MenuItemType.counter: 'assets/counter.png',
    MenuItemType.login: 'assets/login.png',
    MenuItemType.register: 'assets/register.png',
    MenuItemType.bmi: 'assets/bmi.png',
    MenuItemType.feedback: 'assets/feedback.png',
    MenuItemType.product: 'assets/product.png',
    MenuItemType.news: 'assets/news.png',
    MenuItemType.loginProfile: 'assets/profile.png',
  };

  final List<String> randomImages = [
    "https://picsum.photos/600/400?random=1",
    "https://picsum.photos/600/400?random=2",
    "https://picsum.photos/600/400?random=3",
    "https://picsum.photos/600/400?random=4",
    "https://picsum.photos/600/400?random=5",
  ];

  late final String defaultImage =
      randomImages[random.nextInt(randomImages.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bài tập của Phước Thành"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.person, color: Colors.white, size: 48),
                  SizedBox(height: 8),
                  Text(
                    "Nguyễn Phước Thành",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "22T1020438",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            _menuItem("My Home Page", Icons.home, MenuItemType.home),
            _menuItem("My Place", Icons.place, MenuItemType.place),
            _menuItem("My Class", Icons.school, MenuItemType.classRoom),
            _menuItem("Welcome", Icons.waving_hand, MenuItemType.welcome),
            _menuItem("Change Color", Icons.color_lens, MenuItemType.changeColor),
            _menuItem("Counter", Icons.exposure_plus_1, MenuItemType.counter),
            _menuItem("Login", Icons.login, MenuItemType.login),
            _menuItem("Register", Icons.app_registration, MenuItemType.register),
            _menuItem("BMI", Icons.monitor_weight, MenuItemType.bmi),
            _menuItem("Feedback", Icons.feedback, MenuItemType.feedback),
            _menuItem("My Product", Icons.shopping_cart, MenuItemType.product),
            _menuItem("News List", Icons.newspaper, MenuItemType.news),
            _menuItem("Login & Profile", Icons.account_circle, MenuItemType.loginProfile),
          ],
        ),
      ),
      body: Center(child: _buildImage()),
    );
  }

  ListTile _menuItem(String title, IconData icon, MenuItemType type) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        setState(() => selectedMenu = type);
        Navigator.pop(context);
      },
    );
  }

  Widget _buildImage() {
  final imagePath =
      selectedMenu != null ? menuImages[selectedMenu] : null;

  final size = MediaQuery.of(context).size;

  return Padding(
    padding: const EdgeInsets.all(16),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: imagePath != null
          ? Image.asset(
              imagePath,
              width: size.width * 0.95,
              height: size.height * 0.75,
              fit: BoxFit.contain,
            )
          : Image.network(
              defaultImage.replaceAll("600/400", "1200/800"),
              width: size.width * 0.95,
              height: size.height * 0.75,
              fit: BoxFit.cover,
            ),
    ),
  );
}

}
