

// Target Interface
abstract class MediaPlayer {
  void play(String fileName);
}


// Adaptee
class AdvancedMediaPlayer {
  void playMp4(String fileName) => print("Playing MP4 file: $fileName");
  void playVlc(String fileName) => print("Playing VLC file: $fileName");
}

class MediaAdapter implements MediaPlayer {
  final AdvancedMediaPlayer advancedPlayer;

  MediaAdapter(this.advancedPlayer);

  @override
  void play(String fileName) {
    if (fileName.endsWith(".mp4")) {
      advancedPlayer.playMp4(fileName);
    } else if (fileName.endsWith(".vlc")) {
      advancedPlayer.playVlc(fileName);
    } else {
      print("Unsupported file format");
    }
  }
  }
