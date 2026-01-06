import 'package:flutter/material.dart';

class FeedbackApp extends StatelessWidget {
  const FeedbackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FeedbackPage(),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _commentController = TextEditingController();

  int? selectedRating; 

  void _submit() {
    if (_formKey.currentState!.validate()) {
      String name = _nameController.text;
      String comment = _commentController.text;

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Gửi thành công!"),
          content: Text(
            "Họ tên: $name\n"
            "Đánh giá: $selectedRating sao\n"
            "Góp ý: $comment",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            "Gửi phản hồi",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Họ tên",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? "Vui lòng nhập họ tên" : null,
                ),

                const SizedBox(height: 20),

                DropdownButtonFormField<int>(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.star, color: Colors.amber),
                    labelText: "Đánh giá sao (1 - 5)",
                    border: OutlineInputBorder(),
                  ),
                  value: selectedRating,
                  items: [1, 2, 3, 4, 5].map((star) {
                    return DropdownMenuItem(
                      value: star,
                      child: Text("$star ⭐"),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedRating = value;
                    });
                  },
                  validator: (value) =>
                      value == null ? "Vui lòng chọn số sao" : null,
                ),

                const SizedBox(height: 20),

                TextFormField(
                  controller: _commentController,
                  maxLines: 4,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.chat_bubble_outline),
                    labelText: "Nội dung góp ý",
                    border: OutlineInputBorder(),
                    alignLabelWithHint: true,
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? "Vui lòng nhập góp ý" : null,
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _submit,
                    icon: const Icon(Icons.send),
                    label: const Text("Gửi phản hồi"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
