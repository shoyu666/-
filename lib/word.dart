import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'main.dart';
import 'model/Config.dart';

const double COMMON_PADDING = 1;
const double Font_Size = 20;
const int Text_L = 0xFFFFFFFF;
const int Text_R = 0xFF00FF00;
const int Text_B = 0x1FFFFFFF;
///+─────────+──────────────+────────────+──────────+─
///   | あ ア | い イ  |う ウ  | え エ  | お オ
///+─────────+──────────────+────────────+──────────+─
///  k| か カ |き キ  | く ク  | け ケ  | こ コ  |   き ゃ キ ャkya き ゅ キ ュkyu き ょ キ ョkyo
///  s| さ サ |し シ | す ス   | せ セ  | そ ソ  |   し ゃ シ ャsya し ゅ シ ュsyu し ょ シ ョsyo
///  t| た タ |ち チ | つ ツ   | て テ  | と ト |    ち ゃ チ ャcya ち ゅ チ ュcyu ち ょ チ ョcyo
///  n| な ナ |に ニ | ぬ ヌ   | ね ネ  | の ノ  |   に ゃ ニ ャnya に ゅ ニュnyu に ょ ニョnyo
///  h| は ハ |ひ ヒ | ふフ    | へ ヘ  | ほ ホ  |   ひ ゃ ヒ ャhya ひ ゅ ヒ ュhyu ひ ょ ヒ ョhyo
///  m| ま マ |み ミ | む ム   | め メ  | も モ  |   み ゃ ミ ャmya み ゅ ミ ュmyu み ょ ミ ョmyo
///  y| や ヤ |     | ゆ ユ  |         |  ヨ |
///  r| ら ラ |り リ | る ル   | れ レre  | ろ ロ  | り ゃ リ ャrya り ゅ リ ュryu り ょ リ ョryo
///  w| わ ワ |                        | を ヲ  |
///  n| ん ンn  |

/// が ガga ぎ ギgi ぐ グgu げ ゲge ご ゴgo              ぎ ゃ ギ ャgya ぎ ゅ ギ ュgyu ぎ ょ ギ ョgyo
/// ざ ザza じ ジji ず ズzu ぜ ゼze ぞ ゾzo              じ ゃ ジ ャ zya/ja じ ゅ ジ ュ zyu/ju じょジョ zyo/jo
/// だ ダda ぢ ヂji づ ヅzu で デde ど ドdo
/// ば バba び ビbi ぶ ブbu べ ベbe ぼ ボbo              び ゃ ビ ャbya び ゅ ビ ュbyu び ょ ビ ョbyo
///
/// ぱ パpa ぴ ピpi ぷ プpu ぺ ペpe ぽ ポpo              ぴ ゃ ピ ャpya ぴ ゅ ピ ュpyu ぴ ょ ピ ョpyo
///+─────────+──────────────+────────────+──────────+────────+

class Word4 extends ConsumerWidget {
  const Word4({Key? key, required this.l, required this.r,required this.l2, required this.r2, required this.b, required this.m, required this.c}) : super(key: key);
  final String l;
  final String r;
  final String l2;
  final String r2;
  final String b;
  final String m;
  final int c;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Config config = ref.watch(configProvider);
    return GestureDetector(
      onTap: () {
        ref.read(configProvider.notifier).playLocal(m);
      },
      child: Container(
        decoration: BoxDecoration(color:  Color(c),border: Border(bottom: BorderSide(color: Color(0xFF707070)), right: BorderSide(color: Color(0xFF707070)))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
              children: [
                Padding(
                  padding: const EdgeInsets.all(COMMON_PADDING),
                  child: Text(
                      style: TextStyle(
                        fontSize: Font_Size,
                        color: Color(Text_R),
                      ),
                      l),
                ),
                Padding(
                  padding: const EdgeInsets.all(COMMON_PADDING),
                  child: Text(
                      style: TextStyle(
                        fontSize: Font_Size,
                        color: Color(Text_L),
                      ),
                      r),
                ),
                Padding(
                  padding: const EdgeInsets.all(COMMON_PADDING),
                  child: Text(
                      style: TextStyle(
                        fontSize: Font_Size,
                        color: Color(Text_R),
                      ),
                      l2),
                ),
                Padding(
                  padding: const EdgeInsets.all(COMMON_PADDING),
                  child: Text(
                      style: TextStyle(
                        fontSize: Font_Size,
                        color: Color(Text_L),
                      ),
                      r2),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(COMMON_PADDING),
              child: Text(
                  style: TextStyle(
                    color: Color(Text_B),
                    fontSize: 12,
                  ),
                  b),
            ),
          ],
        ),
      ),
    );
  }
}
class Word extends ConsumerWidget {
  const Word({Key? key, required this.l, required this.r, required this.b, required this.m, required this.c}) : super(key: key);
  final String l;
  final String r;
  final String b;
  final String m;
  final int c;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Config config = ref.watch(configProvider);
    return GestureDetector(
      onTap: () {
        ref.read(configProvider.notifier).playLocal(m);
      },
      child: Container(
        decoration: BoxDecoration(
            color:  Color(c),
            border: Border(bottom: BorderSide(color: Color(0xFF707070)), right: BorderSide(color: Color(0xFF707070)))),
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
                          fontSize: Font_Size,
                          color: Color(Text_R),
                        ),
                        l),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text(
                        style: TextStyle(
                          fontSize: Font_Size,
                          color: Color(Text_L),
                        ),
                        r),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(COMMON_PADDING),
                child: Text(
                    style: TextStyle(
                      color: Color(Text_B),
                      fontSize: 12,
                    ),
                    b),
              ),
            ] else ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                children: [
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text(
                        style: TextStyle(
                          fontSize: Font_Size,
                          color: Color(Text_L),
                        ),
                        l),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text(
                        style: TextStyle(
                          fontSize: Font_Size,
                          color: Color(Text_L),
                        ),
                        r),
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
                    b),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class WLabel extends ConsumerWidget {
  const WLabel({Key? key, required this.left, required this.right, required this.bottom, required this.mp3, required this.c}) : super(key: key);
  final String left;
  final String right;
  final String bottom;
  final String mp3;
  final int c;
  static const double COMMON_PADDING = 1;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Config config = ref.watch(configProvider);
    return GestureDetector(
      onTap: () {
        ref.read(configProvider.notifier).playLocal(mp3);
      },
      child: Container(
        decoration: BoxDecoration(color:  Color(c),border: Border(bottom: BorderSide(color: Color(0xFF707070)), right: BorderSide(color: Color(0xFF707070)))),
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
                          fontSize: 15,
                          color: Color(Text_L),
                        ),
                        left),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text(
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(Text_L),
                        ),
                        right),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(COMMON_PADDING),
                child: Text(
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(Text_L),
                    ),
                    bottom),
              ),
            ] else ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                children: [
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text(
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(Text_L),
                        ),
                        left),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(COMMON_PADDING),
                    child: Text(
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(Text_L),
                        ),
                        right),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(COMMON_PADDING),
                child: Text(
                    style: TextStyle(
                      fontSize: 15,
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
  const WEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFF707070)), right: BorderSide(color: Color(0xFF707070)))), child: Center(child: Text("")));
  }
}

class A extends StaggeredGridTile {
  const A({
    Key? key,
    required this.a,
    required this.b,
    required this.c,
  }) : super.count(crossAxisCellCount: a, mainAxisCellCount: b, child: c);
  final int a;
  final num b;
  final Widget c;
}