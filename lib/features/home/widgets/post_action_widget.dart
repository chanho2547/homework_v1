import 'package:flutter/material.dart';
import 'package:thread_homework/constants/gaps.dart';
import 'package:thread_homework/features/home/widgets/report_widget.dart';

class PostActionWidget extends StatefulWidget {
  const PostActionWidget({super.key});

  @override
  State<PostActionWidget> createState() => _PostActionWidgetState();
}

class _PostActionWidgetState extends State<PostActionWidget> {
  void _onReportButtonPressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ReportWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("-",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 90,
              )),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: const Row(
                      children: [
                        Gaps.h20,
                        Text(
                          "Unfollow",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Gaps.v20,
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: const Row(
                      children: [
                        Gaps.h20,
                        Text(
                          "Mute",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Gaps.v20,
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: const Row(
                      children: [
                        Gaps.h20,
                        Text(
                          "Hide",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Gaps.v20,
                  GestureDetector(
                    onTap: () => _onReportButtonPressed(context),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Gaps.h20,
                          Text(
                            "Report",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
