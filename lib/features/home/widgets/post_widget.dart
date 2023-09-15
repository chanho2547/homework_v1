import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thread_homework/constants/sizes.dart';
import 'package:thread_homework/features/home/widgets/post_action_widget.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key, required this.user, required this.contents});

  final String user;
  final String contents;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  void _onMoreButtonPressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const PostActionWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        padding: const EdgeInsets.all(Sizes.size16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.user),
                GestureDetector(
                  onTap: () => _onMoreButtonPressed(context),
                  child: const Text("...",
                      style: TextStyle(
                        fontSize: Sizes.size24,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(widget.contents),
          ],
        ),
      ),
    );
  }
}
