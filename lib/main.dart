import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jptool/model/Config.dart';
import 'package:jptool/provider/WordNotifier.dart';
import 'package:jptool/word.dart';

final configProvider = StateNotifierProvider<ConfigNotifier, Config>((ref) {
  return ConfigNotifier();
});
const int Text_Hidden = 0xff1e2226;
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
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
    initialization();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        //   title: Text(""),
        // ),
        body: Container(
          color: Color(Text_Hidden),
          child: Column(
            children: [
              Expanded(
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6, //横轴三个子widget
                        childAspectRatio: 1.2 //宽高比为1时，子widget
                        ),
                    children: <Widget>[
                      WEmpty(),
                      WLabel(left: "あ",right: "段",bottom:"a",mp3:"a.mp3"),
                      WLabel(left: "い",right: "段",bottom:"i",mp3:"i.mp3"),
                      WLabel(left: "う",right: "段",bottom:"u",mp3:"u.mp3"),
                      WLabel(left: "え",right: "段",bottom:"e",mp3:"e.mp3"),
                      WLabel(left: "お",right: "段",bottom:"o",mp3:"o.mp3"),
                      //あ アa い イi う ウu え エe お オo
                      WLabel(left: "あ",right: "行",bottom:"a",mp3:"a_aiueo.mp3",),
                      Word(left: "あ",right: "ア",bottom: "a",mp3: "a.mp3",),
                      Word(left: "い",right: "イ",bottom: "i",mp3: "i.mp3",),
                      Word(left: "う",right: "ウ",bottom: "u",mp3: "u.mp3",),
                      Word(left: "え",right: "エ",bottom: "e",mp3: "e.mp3",),
                      Word(left: "お",right: "オ",bottom: "o",mp3: "o.mp3",),
                      //か カka き キki く クku け ケke こ コko
                      WLabel(left: "か",right: "行",bottom:"k",mp3:"k_aiueo.mp3",),
                      Word(left: "か",right: "カ",bottom: "ka",mp3: "ka.mp3",),
                      Word(left: "き",right: "キ",bottom: "ki",mp3: "ki.mp3",),
                      Word(left: "く",right: "ク",bottom: "ku",mp3: "ku.mp3",),
                      Word(left: "け",right: "ケ",bottom: "ke",mp3: "ke.mp3",),
                      Word(left: "こ",right: "コ",bottom: "ko",mp3: "ko.mp3",),
                      //さ サsa し シshi す スsu せ セse そ ソso
                      WLabel(left: "さ",right: "行",bottom:"s",mp3:"s_aiueo.mp3",),
                      Word(left: "さ",right: "サ",bottom: "sa",mp3: "sa.mp3",),
                      Word(left: "し",right: "シ",bottom: "shi",mp3: "si.mp3",),
                      Word(left: "す",right: "ス",bottom: "su",mp3: "su.mp3",),
                      Word(left: "せ",right: "セ",bottom: "se",mp3: "se.mp3",),
                      Word(left: "そ",right: "ソ",bottom: "so",mp3: "so.mp3",),
                      //た タta ち チchi つ ツ chu て テ te と トto
                      WLabel(left: "た",right: "行",bottom:"t",mp3:"t_aiueo.mp3",),
                      Word(left: "た",right: "タ",bottom: "ta",mp3: "ta.mp3",),
                      Word(left: "ち",right: "チ",bottom: "chi",mp3: "ci.mp3",),
                      Word(left: "つ",right: "ツ",bottom: "chu",mp3: "cu.mp3",),
                      Word(left: "て",right: "テ",bottom: "te",mp3: "te.mp3",),
                      Word(left: "と",right: "ト",bottom: "to",mp3: "to.mp3",),
                      //な ナna に ニni ぬ ヌnu ね ネne の ノno
                      WLabel(left: "な",right: "行",bottom:"n",mp3:"n_aiueo.mp3",),
                      Word(left: "な",right: "ナ",bottom: "na",mp3: "na.mp3",),
                      Word(left: "に",right: "ニ",bottom: "ni",mp3: "ni.mp3",),
                      Word(left: "ぬ",right: "ヌ",bottom: "nu",mp3: "nu.mp3",),
                      Word(left: "ね",right: "ネ",bottom: "ne",mp3: "ne.mp3",),
                      Word(left: "の",right: "ノ",bottom: "no",mp3: "no.mp3",),
                      //は ハha ひ ヒ hi ふフfu へ ヘhe ほ ホho
                      WLabel(left: "は",right: "行",bottom:"h",mp3:"h_aiueo.mp3",),
                      Word(left: "は",right: "ハ",bottom: "ha",mp3: "ha.mp3",),
                      Word(left: "ひ",right: "ヒ",bottom: "hi",mp3: "hi.mp3",),
                      Word(left: "ふ",right: "フ",bottom: "hu",mp3: "hu.mp3",),
                      Word(left: "へ",right: "へ",bottom: "he",mp3: "he.mp3",),
                      Word(left: "ほ",right: "ホ",bottom: "ho",mp3: "ho.mp3",),
                      //ま マma み ミmi む ムmu め メme も モmo
                      WLabel(left: "ま",right: "行",bottom:"m",mp3:"m_aiueo.mp3",),
                      Word(left: "ま",right: "マ",bottom: "ma",mp3: "ma.mp3",),
                      Word(left: "み",right: "ミ",bottom: "mi",mp3: "mi.mp3",),
                      Word(left: "む",right: "ム",bottom: "mu",mp3: "mu.mp3",),
                      Word(left: "め",right: "メ",bottom: "me",mp3: "me.mp3",),
                      Word(left: "も",right: "モ",bottom: "mo",mp3: "mo.mp3",),
                      //や ヤya 　 ゆ ユyu 　 よ ヨyo
                      WLabel(left: "や",right: "行",bottom:"y",mp3:"y_aiueo.mp3",),
                      Word(left: "や",right: "ヤ",bottom: "ya",mp3: "ya.mp3",),
                      WEmpty(),
                      Word(left: "ゆ",right: "ユ",bottom: "yu",mp3: "yu.mp3",),
                      WEmpty(),
                      Word(left: "よ",right: "ヨ",bottom: "yo",mp3: "yo.mp3",),
                      //ら ラra り リri る ルru れ レre ろ ロro
                      WLabel(left: "ら",right: "行",bottom:"r",mp3:"r_aiueo.mp3",),
                      Word(left: "ら",right: "ラ",bottom: "ra",mp3: "ra.mp3",),
                      Word(left: "り",right: "リ",bottom: "ri",mp3: "ri.mp3",),
                      Word(left: "る",right: "ル",bottom: "ru",mp3: "ru.mp3",),
                      Word(left: "れ",right: "レ",bottom: "re",mp3: "re.mp3",),
                      Word(left: "ろ",right: "ロ",bottom: "ro",mp3: "ro.mp3",),
                      //わ ワwa 　 　 　 を ヲwo
                      WLabel(left: "わ",right: "行",bottom:"w",mp3:"w_aiueo.mp3",),
                      Word(left: "わ",right: "ワ",bottom: "wa",mp3: "wa.mp3",),
                      WEmpty(),
                      WEmpty(),
                      WEmpty(),
                      Word(left: "を",right: "ヲ",bottom: "o",mp3: "o.mp3",),
                      //ん ンn
                      WEmpty(),
                      Word(left: "ん",right: "ン",bottom: "n",mp3: "n.mp3",),
                      WEmpty(),
                      WEmpty(),
                      WEmpty(),
                      WEmpty(),
                    ]),
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      child: Text("罗马音"),
                      onPressed: () {
                        ref.read(configProvider.notifier).changeLm();
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
