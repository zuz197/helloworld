import 'package:flutter/material.dart';
import 'news_api.dart';
import 'news_model.dart';
import 'news_detail.dart';

const String defaultImage = "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg";

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<News> newsList = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    loadNews();
  }

  Future<void> loadNews() async {
    try {
      final data = await NewsApi.fetchNews();
      setState(() {
        newsList = data;
        loading = false;
      });
    } catch (e) {
      print("Error: $e");
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tin tức Việt Nam", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : newsList.isEmpty
              ? const Center(child: Text("Không có tin tức nào"))
              : ListView.builder(
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    final news = newsList[index];
                    return Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 3,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => NewsDetailScreen(news: news),
                            ),
                          );
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(10),
                          leading: SizedBox(
                            width: 80,
                            height: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                // 1. Kiểm tra link rỗng
                                news.image.isNotEmpty ? news.image : defaultImage,
                                fit: BoxFit.cover,
                                // 2. Xử lý khi load ảnh bị lỗi (404)
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.network(
                                    defaultImage,
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                            ),
                          ),
                          title: Text(
                            news.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              news.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}