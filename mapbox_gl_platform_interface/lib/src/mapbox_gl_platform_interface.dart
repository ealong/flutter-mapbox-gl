// ignore_for_file: unnecessary_getters_setters

part of mapbox_gl_platform_interface;

abstract class MapboxGlPlatform {
  static MapboxGlPlatform _instance = MethodChannelMapboxGl();

  final ArgumentCallbacks<String> onInfoWindowTappedPlatform =
      ArgumentCallbacks<String>();

  final ArgumentCallbacks<String> onSymbolTappedPlatform =
      ArgumentCallbacks<String>();

  final ArgumentCallbacks<String> onLineTappedPlatform =
      ArgumentCallbacks<String>();

  final ArgumentCallbacks<String> onCircleTappedPlatform =
      ArgumentCallbacks<String>();

  final ArgumentCallbacks<void> onCameraMoveStartedPlatform =
      ArgumentCallbacks<void>();

  final ArgumentCallbacks<CameraPosition> onCameraMovePlatform =
      ArgumentCallbacks<CameraPosition>();

  final ArgumentCallbacks<void> onCameraIdlePlatform =
      ArgumentCallbacks<void>();

  final ArgumentCallbacks<void> onMapStyleLoadedPlatform =
      ArgumentCallbacks<void>();

  final ArgumentCallbacks<Map<String, dynamic>> onMapClickPlatform =
      ArgumentCallbacks<Map<String, dynamic>>();

  final ArgumentCallbacks<Map<String, dynamic>> onMapLongClickPlatform =
      ArgumentCallbacks<Map<String, dynamic>>();

  final ArgumentCallbacks<MyLocationTrackingMode>
      onCameraTrackingChangedPlatform =
      ArgumentCallbacks<MyLocationTrackingMode>();

  final ArgumentCallbacks<void> onCameraTrackingDismissedPlatform =
      ArgumentCallbacks<void>();

  final ArgumentCallbacks<void> onMapIdlePlatform = ArgumentCallbacks<void>();

  /// The default instance of [MapboxGlPlatform] to use.
  ///
  /// Defaults to [MethodChannelMapboxGl].
  static MapboxGlPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [MapboxGlPlatform] when they register themselves.
  static set instance(MapboxGlPlatform instance) {
    _instance = instance;
  }

  Future<void> initPlatform(int id) async {
    throw UnimplementedError('initPlatform() has not been implemented.');
  }

  Widget buildView(
      Map<String, dynamic> creationParams,
      Function onPlatformViewCreated,
      Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers) {
    throw UnimplementedError('buildView() has not been implemented.');
  }

  Future<CameraPosition> updateMapOptions(
      Map<String, dynamic> optionsUpdate) async {
    throw UnimplementedError('updateMapOptions() has not been implemented.');
  }

  Future<bool> animateCamera(CameraUpdate cameraUpdate) async {
    throw UnimplementedError('animateCamera() has not been implemented.');
  }

  Future<bool> moveCamera(CameraUpdate cameraUpdate) async {
    throw UnimplementedError('moveCamera() has not been implemented.');
  }

  Future<void> updateMyLocationTrackingMode(
      MyLocationTrackingMode myLocationTrackingMode) async {
    throw UnimplementedError(
        'updateMyLocationTrackingMode() has not been implemented.');
  }

  Future<void> matchMapLanguageWithDeviceDefault() async {
    throw UnimplementedError(
        'matchMapLanguageWithDeviceDefault() has not been implemented.');
  }

  Future<void> updateContentInsets(EdgeInsets insets, bool animated) async {
    throw UnimplementedError('updateContentInsets() has not been implemented.');
  }

  Future<void> setMapLanguage(String language) async {
    throw UnimplementedError('setMapLanguage() has not been implemented.');
  }

  Future<void> setTelemetryEnabled(bool enabled) async {
    throw UnimplementedError('setTelemetryEnabled() has not been implemented.');
  }

  Future<bool> getTelemetryEnabled() async {
    throw UnimplementedError('getTelemetryEnabled() has not been implemented.');
  }

  Future<Symbol> addSymbol(SymbolOptions options, [Map data]) async {
    throw UnimplementedError('addSymbol() has not been implemented.');
  }

  Future<void> updateSymbol(Symbol symbol, SymbolOptions changes) async {
    throw UnimplementedError('updateSymbol() has not been implemented.');
  }

  Future<void> removeSymbol(String symbolId) async {
    throw UnimplementedError('removeSymbol() has not been implemented.');
  }

  Future<Line> addLine(LineOptions options, [Map data]) async {
    throw UnimplementedError('addLine() has not been implemented.');
  }

  Future<void> updateLine(Line line, LineOptions changes) async {
    throw UnimplementedError('updateLine() has not been implemented.');
  }

  Future<void> removeLine(String lineId) async {
    throw UnimplementedError('removeLine() has not been implemented.');
  }

  Future<Circle> addCircle(CircleOptions options, [Map data]) async {
    throw UnimplementedError('addCircle() has not been implemented.');
  }

  Future<void> updateCircle(Circle circle, CircleOptions changes) async {
    throw UnimplementedError('updateCircle() has not been implemented.');
  }

  Future<LatLng> getCircleLatLng(Circle circle) async {
    throw UnimplementedError('getCircleLatLng() has not been implemented.');
  }

  Future<void> removeCircle(String circleId) async {
    throw UnimplementedError('removeCircle() has not been implemented.');
  }

  Future<List> queryRenderedFeatures(
      Point<double> point, List<String> layerIds, String filter) async {
    throw UnimplementedError(
        'queryRenderedFeatures() has not been implemented.');
  }

  Future<List> queryRenderedFeaturesInRect(
      Rect rect, List<String> layerIds, String filter) async {
    throw UnimplementedError(
        'queryRenderedFeaturesInRect() has not been implemented.');
  }

  Future invalidateAmbientCache() async {
    throw UnimplementedError(
        'invalidateAmbientCache() has not been implemented.');
  }

  Future<LatLng> requestMyLocationLatLng() async {
    throw UnimplementedError(
        'requestMyLocationLatLng() has not been implemented.');
  }

  Future<LatLngBounds> getVisibleRegion() async {
    throw UnimplementedError('getVisibleRegion() has not been implemented.');
  }

  Future<void> addImage(String name, Uint8List bytes,
      [bool sdf = false]) async {
    throw UnimplementedError('addImage() has not been implemented.');
  }
}
