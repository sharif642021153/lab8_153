import 'package:flutter/material.dart';
import 'package:lab8_153/pages/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab8 Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is First Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("กลับไปยังหน้าที่ 1"),
            ),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(labelText: "ชื่อ-นามสกุล"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(
                        name: _controller.text,
                      ),
                    ));
              },
              child: const Text("ไปยังหน้าที่ 3"),
            ),
          ],
        ),
      ),
    );
  }
}
