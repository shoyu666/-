import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';
import 'model/Config.dart';
const double COMMON_PADDING = 2;
const int Text_C = 0xFFFFFFFF;
class Word extends ConsumerWidget {
  Word({
    Key? key,
    required this.left,
    required this.right,
    required this.bottom,
    required this.mp3,
  }) : super(key: key);
  final String left;
  final String right;
  final String bottom;
  final String mp3;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Config config = ref.watch(configProvider);
    return GestureDetector(
      onTap: () {
        ref.read(configProvider.notifier).playLocal(mp3);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xFF707070)),right: BorderSide(color: Color(0xFF707070)))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (config.showLm) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                children: [
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text( style: TextStyle(
                      fontSize: 18,
                      color: Color(Text_C),
                    ),left),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text( style: TextStyle(
                      fontSize: 18,
                      color: Color(Text_C),
                    ),right),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(COMMON_PADDING),
                child: Text( style: TextStyle(
                  color: Color(Text_C),
                  fontSize: 12,
                ),bottom),
              ),
            ] else
              ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(COMMON_PADDING),
                      child: Text( style: TextStyle(
                        fontSize: 18,
                        color: Color(Text_C),
                      ),left),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(COMMON_PADDING),
                      child: Text( style: TextStyle(
                        fontSize: 18,
                        color: Color(Text_C),
                      ),right),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(COMMON_PADDING),
                  child: Text(
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(Text_Hidden),
                      ),
                      bottom),
                ),
              ],
          ],
        ),
      ),
    );
  }
}

class WLabel extends ConsumerWidget {
  WLabel({
    Key? key,
    required this.left,
    required this.right,
    required this.bottom,
    required this.mp3,
  }) : super(key: key);
  final String left;
  final String right;
  final String bottom;
  final String mp3;
  static const double COMMON_PADDING = 1;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Config config = ref.watch(configProvider);
    return GestureDetector(
      onTap: () {
        ref.read(configProvider.notifier).playLocal(mp3);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xFF707070)),right: BorderSide(color: Color(0xFF707070)))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (config.showLm) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                children: [
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text(
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(Text_C),
                        ),
                        left),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text(style: TextStyle(
                      fontSize: 12,
                      color: Color(Text_C),
                    ),right),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(COMMON_PADDING),
                child: Text(
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(Text_C),
                    ),
                    bottom),
              ),
            ] else
              ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(COMMON_PADDING),
                      child: Text(
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(Text_C),
                          ),
                          left),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(COMMON_PADDING),
                      child: Text(
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(Text_C),
                          ),
                          right),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(COMMON_PADDING),
                  child: Text(
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(Text_Hidden),
                      ),
                      bottom),
                ),
              ],
          ],
        ),
      ),
    );
  }
}
class WEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xFF707070)),right: BorderSide(color: Color(0xFF707070)))
        ),
        child: Center(child: Text("")));
  }
}
