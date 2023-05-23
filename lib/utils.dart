import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

const kPrimaryColor = Color(0xffebbe8b);
List<Audio> songs = [
  Audio.network(
    "https://www.pagalworld.com.se/files/download/id/6591",
    metas: Metas(
        title: "keshariya",
        artist: "	Arijit Singh,",
        image: MetasImage.network("https://static.toiimg.com/thumb/msid-93659554,width-1280,resizemode-4/93659554.jpg")
    ),
  ),
  Audio.network(
    "https://www.pagalworld.com.se/files/download/id/65497",
    metas: Metas(
        title: "kahani suno",
        artist: " Kaifi Khalil",
        image: MetasImage.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpzMCficaELLKhninwtnHCiiONFljEwzPsYQ&usqp=CAU")
    ),
  ),
  Audio.network(
    "https://www.pagalworld.com.se/files/download/id/2649",
    metas: Metas(
        title: "Best of Sidhu Moosewala",
        artist: "Sidhu Moosewala",
        image: MetasImage.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS1UZb1RpzNgga2Np5FYdXkacNKqXfdVOnyw&usqp=CAU")
    ),
  ),
  Audio.network(
    "https://newgujaratisong.in/wp-content/uploads/2021/02/Mena-Rani-Manma-Vashi.mp3",
    metas: Metas(
        title: "Mena Rani",
        artist: "Jignesh Barot",
        image: MetasImage.network("https://images.hungama.com/a/1/1f2/659/1577661/1577661_200x200.jpg")
    ),
  ),
  Audio.network(
    "https://paglasongs.com/files/download/id/4453",
    metas: Metas(
        title: "NO Lie",
        artist: "	Dua Lipa",
        image: MetasImage.network("https://i.scdn.co/image/ab67616d0000b2736b915e407b70e121e06fe979")
    ),
  ),

];
String durationFormat(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  String twoDigitsMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitsSeconds = twoDigits(duration.inSeconds.remainder(60));
  return '$twoDigitsMinutes:$twoDigitsSeconds';
}

Future<PaletteGenerator> getImageColor(AssetsAudioPlayer player) async {
  var paletteGenerator = await PaletteGenerator.fromImageProvider(
      NetworkImage(player.getCurrentAudioImage?.path ?? ''));
  return paletteGenerator;
}
