import "package:flutter/material.dart";

class classroom extends StatelessWidget {
  const classroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          block1(),
          const SizedBox(height: 12),
          block2(),
          const SizedBox(height: 12),
          block3(),
          const SizedBox(height: 12),
          block4(),
          const SizedBox(height: 12),
          block5(),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget block1() {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
              "https://picsum.photos/200/300?random=1"),
          fit: BoxFit.cover,
          colorFilter:ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "XML và ứng dụng-Nhóm 1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:Colors.white,
                        height: 1.0,
                      ),
                    ),
                    Text(
                      "2025-2026.Tin4853.001",
                      style: TextStyle(fontSize: 13,color:Colors.white, height: 1.0),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("58 học viên", style: TextStyle(color:Colors.white,fontSize: 10)),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                print('Đã nhấn nút Yêu thích!');
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget block2() {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
              "https://picsum.photos/200/300?random=2"),
          fit: BoxFit.cover,
          colorFilter:ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "XML và ứng dụng-Nhóm 1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:Colors.white,
                        height: 1.0,
                      ),
                    ),
                    Text("2025-2026.Tin4853.001",
                        style: TextStyle(fontSize: 13,color:Colors.white, height: 1.0)),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("58 học viên", style: TextStyle(color:Colors.white,fontSize: 10)),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                print('Đã nhấn nút Yêu thích!');
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget block3() {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
              "https://picsum.photos/200/300?random=3"),
          fit: BoxFit.cover,
          colorFilter:ColorFilter.mode(Colors.black54, BlendMode.darken),

        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "XML và ứng dụng-Nhóm 1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:Colors.white,
                        height: 1.0,
                      ),
                    ),
                    Text("2025-2026.Tin4853.001",
                        style: TextStyle(fontSize: 13,color:Colors.white, height: 1.0)),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("58 học viên", style: TextStyle(color:Colors.white,fontSize: 10)),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                print('Đã nhấn nút Yêu thích!');
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget block4() {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
              "https://picsum.photos/200/300?random=4"),
          fit: BoxFit.cover,
          colorFilter:ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "XML và ứng dụng-Nhóm 1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:Colors.white,
                        height: 1.0,
                      ),
                    ),
                    Text("2025-2026.Tin4853.001",
                        style: TextStyle(fontSize: 13,color:Colors.white, height: 1.0)),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("58 học viên", style: TextStyle(color:Colors.white,fontSize: 10)),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                print('Đã nhấn nút Yêu thích!');
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget block5() {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
              "https://picsum.photos/200/300?random=5"),
          fit: BoxFit.cover,
          colorFilter:ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "XML và ứng dụng-Nhóm 1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:Colors.white,
                        height: 1.0,
                      ),
                    ),
                    Text("2025-2026.Tin4853.001",
                        style: TextStyle(fontSize: 13,color:Colors.white, height: 1.0)),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("58 học viên", style: TextStyle(color:Colors.white,fontSize: 10)),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                print('Đã nhấn nút Yêu thích!');
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
