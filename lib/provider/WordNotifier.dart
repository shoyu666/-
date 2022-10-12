import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/Config.dart';

class ConfigNotifier extends StateNotifier<Config> {

  bool canPlaying = true;

  ConfigNotifier() : super((Config()));

  void changeLm() {
    Config c = Config();
    c.showLm = !state.showLm;
    state = c;
  }

  Future<void> playLocal(String mp3) async{
    if(canPlaying){
      canPlaying = false;
      AssetSource source = AssetSource('audios/$mp3');
      AudioPlayer assetsAudioPlayer =  AudioPlayer();
      await assetsAudioPlayer.play(source);
      assetsAudioPlayer.onPlayerComplete.listen((event) {
        canPlaying =true;
        assetsAudioPlayer.release();
        print("play mp3 $mp3 finish");
      });
    }else{
      print("can not play mp3 $mp3 finish");
    }
  }
}
