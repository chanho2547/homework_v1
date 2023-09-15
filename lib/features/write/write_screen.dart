import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thread_homework/constants/gaps.dart';
import 'package:thread_homework/constants/sizes.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});
  static const String routeName = "Write";
  static const String routeUrl = "/Write";

  @override
  _WriteScreenState createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  final textController = TextEditingController();
  bool isWrited = false;

  @override
  void initState() {
    super.initState();
    textController.addListener(_updateWriteStatus);
  }

  void _updateWriteStatus() {
    setState(() {
      isWrited = textController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New thread'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.size32),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 18,
                  child: Text(
                    "USER",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Gaps.h10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Username",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: textController,
                          minLines: 10,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            hintText: "Start a new thread...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const FaIcon(
                        FontAwesomeIcons.paperclip,
                      ),
                      Gaps.v36,
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Anyone can reply",
                        style: TextStyle(fontSize: 16, color: Colors.grey)),
                    Text(
                      "Post",
                      style: TextStyle(
                        color: isWrited ? Colors.blue : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
