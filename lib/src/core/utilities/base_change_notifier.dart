import 'package:get/get.dart';

enum AppState { idle, loading, error }

extension AppStateExtension on AppState {
  bool get isLoading => this == AppState.loading;
  bool get isIdle => this == AppState.idle;
  bool get isError => this == AppState.error;
}

class BaseChangeNotifier extends GetxController {
  AppState _state = AppState.idle;

  AppState get state => _state;

  void setState({AppState? state}) {
    if (state == null) {
      update();
      return;
    } else {
      _state = state;
      update();
    }
  }
}
