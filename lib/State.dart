// State Interface
abstract class State {
  void handle();
}

// Concrete States
class PlayingState implements State {
  @override
  void handle() => print("Music is Playing");
}

class PausedState implements State {
  @override
  void handle() => print("Music is Paused");
}

class StoppedState implements State {
  @override
  void handle() => print("Music is Stopped");
}

// Context
class MusicPlayer {
  late State _state;

  void setState(State state) {
    _state = state;
    _state.handle();
  }
}

