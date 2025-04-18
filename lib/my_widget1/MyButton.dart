import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ứng dụng Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton - nút có hiệu ứng nổi và đổ bóng
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              child: const Text("ElevatedButton", style: TextStyle(fontSize: 24)),
            ),
            const SizedBox(height: 20),

            // TextButton - nút phẳng, không có đổ bóng
            TextButton(
              onPressed: () {
                print("TextButton");
              },
              child: const Text("TextButton", style: TextStyle(fontSize: 24)),
            ),
            const SizedBox(height: 20),

            // OutlinedButton - nút có viền, thường dùng cho các hành động phụ
            OutlinedButton(
              onPressed: () {
                print("OutlinedButton");
              },
              child: const Text("OutlinedButton", style: TextStyle(fontSize: 24)),
            ),
            const SizedBox(height: 20),

            IconButton(onPressed:() {print("IconButton");}
                , icon: Icon (Icons.favorite)),
            SizedBox(height: 20),
            FloatingActionButton(onPressed: (){print("FloatingActionButton");},
            child: Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button nhấn!");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Cài đặt',
          ),
        ],
      ),
    );
  }
}
