import 'package:flutter/material.dart';
import 'LoginApp.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, dynamic> data;

  const ProfilePage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thông tin tài khoản"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ẢNH ĐẠI DIỆN
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  data["image"] ?? "https://via.placeholder.com/150",
                ),
              ),
            ),

            const SizedBox(height: 25),

            /// THÔNG TIN CÁ NHÂN
            info("Username", data["username"]),
            info("Password", data["password"]),
            info("Email", data["email"]),
            info("Họ", data["lastName"]),
            info("Tên", data["firstName"]),
            info("Tuổi", data["age"]?.toString()),
            info("Giới tính", data["gender"]),
            info("Số điện thoại", data["phone"]),

            /// ĐỊA CHỈ
            info("Địa chỉ",
                data["address"] != null ? data["address"]["address"] : ""),

            /// CÔNG TY
            info("Công ty",
                data["company"] != null ? data["company"]["name"] : ""),
            info("Chức vụ",
                data["company"] != null ? data["company"]["title"] : ""),

            /// NGÂN HÀNG
            info("Số thẻ",
                data["bank"] != null ? data["bank"]["cardNumber"] : ""),

            /// CRYPTO
            info("Crypto",
                data["crypto"] != null ? data["crypto"]["coin"] : ""),

            /// ROLE
            info("Vai trò", data["role"]),

            const SizedBox(height: 40),

            /// NÚT ĐĂNG XUẤT
            Center(
              child: SizedBox(
                width: 220,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text(
                    "ĐĂNG XUẤT",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// WIDGET HIỂN THỊ 1 DÒNG THÔNG TIN
  Widget info(String title, String? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 14),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          value ?? "",
          style: const TextStyle(fontSize: 15),
        ),
        const Divider(),
      ],
    );
  }
}
