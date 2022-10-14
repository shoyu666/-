import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jptool/model/Config.dart';
import 'package:jptool/provider/WordNotifier.dart';
import 'package:jptool/word.dart';

final configProvider = StateNotifierProvider<ConfigNotifier, Config>((ref) {
  return ConfigNotifier();
});
const int Text_Hidden = 0xff2B2B2B;

const int Qin_C = 0xff2B2B2B;
const int Zhou_C = 0xff2B2B2B;
const int BanZhou_C = 0xff2B2B2B;
const int Ao_C = 0xff2B2B2B;

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //不加这个强制横/竖屏会报错
  SystemChrome.setPreferredOrientations([
    // 强制竖屏
    DeviceOrientation.landscapeRight
  ]);
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'MeiryoWithMircosoftYahei',
        brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Config config = ref.watch(configProvider);
    return Scaffold(
        // appBar: AppBar(
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        //   title: Text(""),
        // ),
        body: Container(
      color: Color(Text_Hidden),
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: StaggeredGrid.count(crossAxisCount: 12, mainAxisSpacing: 4, crossAxisSpacing: 4, children: const <Widget>[
              A(a: 1, b: 1,c: WEmpty()),
              A(a: 1, b: 1,c: WLabel(left: "あ", right: "段", bottom: "a", mp3: "a.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: WLabel(left: "い", right: "段", bottom: "i", mp3: "i.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: WLabel(left: "う", right: "段", bottom: "u", mp3: "u.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: WLabel(left: "え", right: "段", bottom: "e", mp3: "e.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: WLabel(left: "お", right: "段", bottom: "o", mp3: "o.mp3", color: Qin_C)),
              A(a: 6, b: 1,c: WEmpty()),
              //あ アa い イi う ウu え エe お オo
              A(a: 1, b: 1,c: WLabel(left: "あ", right: "行", bottom: "a", mp3: "a_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "あ", r: "ア", b: "a", m: "a.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "い", r: "イ", b: "i", m: "i.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "う", r: "ウ", b: "u", m: "u.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "え", r: "エ", b: "e", m: "e.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "お", r: "オ", b: "o", m: "o.mp3", c: Qin_C)),
              A(a: 6, b: 1,c: WEmpty()),
              //か カka き キki く クku け ケke こ コko
              //き ゃ キ ャkya き ゅ キ ュkyu き ょ キ ョkyo
              A(a: 1, b: 1,c: WLabel(left: "か", right: "行", bottom: "k", mp3: "k_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "か", r: "カ", b: "ka", m: "ka.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "き", r: "キ", b: "ki", m: "ki.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "く", r: "ク", b: "ku", m: "ku.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "け", r: "ケ", b: "ke", m: "ke.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "こ", r: "コ", b: "ko", m: "ko.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "き ゃ", r: "キ ャ", b: "kya", m: "kya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "き ゅ", r: "キ ュ", b: "kyu", m: "kyu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "き ょ", r: "キ ョ", b: "kyo", m: "kyo.mp3", c: Ao_C)),
              //さ サsa し シshi す スsu せ セse そ ソso
              //し ゃ シ ャsya し ゅ シ ュsyu し ょ シ ョsyo
              A(a: 1, b: 1,c: WLabel(left: "さ", right: "行", bottom: "s", mp3: "s_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "さ", r: "サ", b: "sa", m: "sa.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "し", r: "シ", b: "shi", m: "si.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "す", r: "ス", b: "su", m: "su.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "せ", r: "セ", b: "se", m: "se.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "そ", r: "ソ", b: "so", m: "so.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "し ゃ", r: "シ ャ", b: "sya", m: "sya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "し ゅ", r: "シ ュ", b: "syu", m: "syu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "し ょ", r: "シ ョ", b: "syo", m: "syo.mp3", c: Ao_C)),
              //た タta ち チchi つ ツ chu て テ te と トto
              //ち ゃ チ ャcya ち ゅ チ ュcyu ち ょ チ ョcyo
              A(a: 1, b: 1,c: WLabel(left: "た", right: "行", bottom: "t", mp3: "t_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "た", r: "タ", b: "ta", m: "ta.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ち", r: "チ", b: "chi", m: "ci.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "つ", r: "ツ", b: "chu", m: "cu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "て", r: "テ", b: "te", m: "te.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "と", r: "ト", b: "to", m: "to.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "ち ゃ", r: "チ ャ", b: "cya", m: "cya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "ち ゅ", r: "チ ュ", b: "cyu", m: "cyu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "ち ょ", r: "チ ョ", b: "cyo", m: "cyo.mp3", c: Ao_C)),
              //な ナna に ニni ぬ ヌnu ね ネne の ノno
              //に ゃ ニ ャnya に ゅ ニュnyu に ょ ニョnyo
              A(a: 1, b: 1,c: WLabel(left: "な", right: "行", bottom: "n", mp3: "n_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "な", r: "ナ", b: "na", m: "na.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "に", r: "ニ", b: "ni", m: "ni.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぬ", r: "ヌ", b: "nu", m: "nu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ね", r: "ネ", b: "ne", m: "ne.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "の", r: "ノ", b: "no", m: "no.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "に ゃ", r: "ニ ャ", b: "nya", m: "nya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "に ゅ", r: "ニュ", b: "nyu", m: "nyu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "に ょ", r: "ニョ", b: "nyo", m: "nyo.mp3", c: Ao_C)),
              //は ハha ひ ヒ hi ふフfu へ ヘhe ほ ホho
              //ひ ゃ ヒ ャhya ひ ゅ ヒ ュhyu ひ ょ ヒ ョhyo
              A(a: 1, b: 1,c: WLabel(left: "は", right: "行", bottom: "h", mp3: "h_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "は", r: "ハ", b: "ha", m: "ha.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ひ", r: "ヒ", b: "hi", m: "hi.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ふ", r: "フ", b: "hu", m: "hu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "へ", r: "へ", b: "he", m: "he.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ほ", r: "ホ", b: "ho", m: "ho.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "ひ ゃ", r: "ヒ ャ", b: "kya", m: "hya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "ひ ゅ", r: "ヒ ュ", b: "kyu", m: "hyu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "ひ ょ", r: "ヒ ョ", b: "kyo", m: "hyo.mp3", c: Ao_C)),
              //ま マma み ミmi む ムmu め メme も モmo
              //み ゃ ミ ャmya み ゅ ミ ュmyu み ょ ミ ョmyo
              A(a: 1, b: 1,c: WLabel(left: "ま", right: "行", bottom: "m", mp3: "m_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ま", r: "マ", b: "ma", m: "ma.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "み", r: "ミ", b: "mi", m: "mi.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "む", r: "ム", b: "mu", m: "mu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "め", r: "メ", b: "me", m: "me.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "も", r: "モ", b: "mo", m: "mo.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "み ゃ", r: "ミ ャ", b: "mya", m: "mya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "み ゅ", r: "ミ ュ", b: "myu", m: "myu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "み ょ", r: "ミ ョ", b: "myo", m: "myo.mp3", c: Ao_C)),
              //や ヤya 　 ゆ ユyu 　 よ ヨyo
              A(a: 1, b: 1,c: WLabel(left: "や", right: "行", bottom: "y", mp3: "y_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "や", r: "ヤ", b: "ya", m: "ya.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: WEmpty()),
              A(a: 1, b: 1,c: Word(l: "ゆ", r: "ユ", b: "yu", m: "yu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: WEmpty()),
              A(a: 1, b: 1,c: Word(l: "よ", r: "ヨ", b: "yo", m: "yo.mp3", c: Qin_C)),
              A(a: 6, b: 1,c: WEmpty()),
              //ら ラra り リri る ルru れ レre ろ ロro
              //り ゃ リ ャrya り ゅ リ ュryu り ょ リ ョryo
              A(a: 1, b: 1,c: WLabel(left: "ら", right: "行", bottom: "r", mp3: "r_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ら", r: "ラ", b: "ra", m: "ra.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "り", r: "リ", b: "ri", m: "ri.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "る", r: "ル", b: "ru", m: "ru.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "れ", r: "レ", b: "re", m: "re.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ろ", r: "ロ", b: "ro", m: "ro.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "り ゃ ", r: "リ ャ", b: "kya", m: "kya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "り ゅ ", r: "リ ュ", b: "kyu", m: "kyu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "り ょ ", r: "リ ョ", b: "kyo", m: "kyo.mp3", c: Ao_C)),
              //わ ワwa 　 　 　 を ヲwo
              A(a: 1, b: 1,c: WLabel(left: "わ", right: "行", bottom: "w", mp3: "w_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "わ", r: "ワ", b: "wa", m: "wa.mp3", c: Qin_C)),
              A(a: 3, b: 1,c: WEmpty()),
              A(a: 1, b: 1,c: Word(l: "を", r: "ヲ", b: "o", m: "o.mp3", c: Qin_C)),
              A(a: 6, b: 1,c: WEmpty()),
              //ん ンn
              A(a: 1, b: 1,c: WEmpty()),
              A(a: 1, b: 1,c: Word(l: "ん", r: "ン", b: "n", m: "n.mp3", c: Qin_C)),
              A(a: 10, b: 1,c: WEmpty()),

              //が ガga ぎ ギgi ぐ グgu げ ゲge ご ゴgo              ぎ ゃ ギ ャgya ぎ ゅ ギ ュgyu ぎ ょ ギ ョgyo
              A(a: 1, b: 1,c: WLabel(left: "が", right: "行", bottom: "g", mp3: "g.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "が", r: "ガ", b: "ga", m: "ga.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぎ", r: "ギ", b: "gi", m: "gi.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぐ", r: "グ", b: "gu", m: "gu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "げ", r: "ゲ", b: "ge", m: "ge.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ご", r: "ゴ", b: "go", m: "go.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "ぎ ゃ", r: "ギ ャ", b: "gya", m: "gya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "ぎ ゅ", r: "ギ ュ", b: "gyu", m: "gyu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "ぎ ょ", r: "ギ ョ", b: "gyo", m: "gyo.mp3", c: Ao_C)),
              //ざ ザza じ ジji ず ズzu ぜ ゼze ぞ ゾzo              じ ゃ ジ ャ zya/ja じ ゅ ジ ュ zyu/ju じょジョ zyo/jo
              A(a: 1, b: 1,c: WLabel(left: "ざ", right: "行", bottom: "z", mp3: "m_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ざ", r: "ザ", b: "za", m: "za.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "じ", r: "ジ", b: "ji", m: "ji.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ず", r: "ズ", b: "zu", m: "zu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぜ", r: "ゼ", b: "ze", m: "ze.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぞ", r: "ゾ", b: "zo", m: "zo.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "じ ゃ", r: "ジ ャ", b: "zya/ja", m: "zya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "じ ゅ", r: "ジ ュ", b: "zyu/ju", m: "zyu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "じ ょ", r: "ジ ョ", b: "zyo/jo", m: "zyo.mp3", c: Ao_C)),
              //だ ダda ぢ ヂji づ ヅzu で デde ど ドdo
              A(a: 1, b: 1,c: WLabel(left: "ま", right: "行", bottom: "d", mp3: "m_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "だ", r: "ダ", b: "da", m: "da.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぢ", r: "ヂ", b: "ji", m: "di.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "づ", r: "ヅ", b: "zu", m: "du.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "で", r: "デ", b: "de", m: "de.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ど", r: "ド", b: "do", m: "do.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "み ゃ", r: "ミ ャ", b: "mya", m: "mya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "み ゅ", r: "ミ ュ", b: "myu", m: "myu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "み ょ", r: "ミ ョ", b: "myo", m: "myo.mp3", c: Ao_C)),
              //ば バba び ビbi ぶ ブbu べ ベbe ぼ ボbo              び ゃ ビ ャbya び ゅ ビ ュbyu び ょ ビ ョbyo
              A(a: 1, b: 1,c: WLabel(left: "ば", right: "行", bottom: "b", mp3: "m_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ば", r: "バ", b: "ba", m: "ba.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "び", r: "ビ", b: "bi", m: "bi.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぶ", r: "ブ", b: "bu", m: "bu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "べ", r: "ベ", b: "be", m: "be.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぼ", r: "ボ", b: "bo", m: "bo.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "み ゃ", r: "ミ ャ", b: "mya", m: "mya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "み ゅ", r: "ミ ュ", b: "myu", m: "myu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "み ょ", r: "ミ ョ", b: "myo", m: "myo.mp3", c: Ao_C)),
              //ぱ パpa ぴ ピpi ぷ プpu ぺ ペpe ぽ ポpo              ぴ ゃ ピ ャpya ぴ ゅ ピ ュpyu ぴ ょ ピ ョpyo
              A(a: 1, b: 1,c: WLabel(left: "ぱ", right: "行", bottom: "p", mp3: "m_aiueo.mp3", color: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぱ", r: "パ", b: "pa", m: "pa.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぴ", r: "ピ", b: "pi", m: "pi.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぷ", r: "プ", b: "pu", m: "pu.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぺ", r: "ペ", b: "pe", m: "pe.mp3", c: Qin_C)),
              A(a: 1, b: 1,c: Word(l: "ぽ", r: "ポ", b: "po", m: "po.mp3", c: Qin_C)),
              //
              A(a: 2, b: 1,c: Word(l: "ぴ ゃ", r: "ピ ャ", b: "pya", m: "pya.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "ぴ ゅ", r: "ピ ュ", b: "pyu", m: "pyu.mp3", c: Ao_C)),
              A(a: 2, b: 1,c: Word(l: "ぴ ょ", r: "ピ ョ", b: "pyo", m: "pyo.mp3", c: Ao_C)),
            ]),
          ),
        ),
      ),
    ));
  }
}
