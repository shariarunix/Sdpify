part of '../sdpify.dart';

/// [Config] is create all configuration for [Sdpify]
///
class Config with WidgetsBindingObserver {
  /// Internal Constructor of [Config]
  ///
  Config._() {
    WidgetsBinding.instance.addObserver(this);
  }

  static final Config _instance = Config._();

  /// [Config()  factory constructor
  /// returns the singleton instance of this [Config] class
  ///
  factory Config() => _instance;

  BuildContext? _context;
  BoxConstraints? _constraint;

  ScreenType _screenType = ScreenType.undefined;

  double _screenWidth = 0.0;
  double _pixelRatio = 1.0;
  double _scaleFactor = 1.0;

  /// [screenWidth] is device screen width
  /// based on some conditions in [init] method
  ///
  double get screenWidth => _screenWidth;

  /// [scaleFactor] is the scaling ratio
  /// how much the ui will scale up or down
  ///
  double get scaleFactor => _scaleFactor;

  /// [pixelRatio] is Device Pixel Ratio
  ///
  double get pixelRatio => _pixelRatio;

  /// Initializer of [Sdpify]
  ///
  ScreenType init({
    required BuildContext context,
    required BoxConstraints constraint,
    required Orientation orientation,
    required bool isBreakPointEnabled,
  }) {
    _context = context;
    _constraint = constraint;

    _screenWidth = isBreakPointEnabled
        ? min(_constraint!.maxWidth, _constraint!.maxHeight)
        : _constraint!.maxWidth;
    _pixelRatio = MediaQuery.devicePixelRatioOf(_context!);

    _updateMetrics();

    return _screenType;
  }

  @override
  void didChangeMetrics() {
    if (_context != null) {
      _updateMetrics();
    }
  }

  void _updateMetrics() {
    /// For Desktop Devices ( >= 1024)
    ///
    if (_screenWidth >= DeviceConstant.desktopWidth) {
      _scaleFactor = (_screenWidth / DeviceConstant.desktopWidth) *
          DeviceConstant.desktopScale;
      _screenType = ScreenType.ultraLarge;

      /// For Tablet Devices ( >= 768)
      ///
    } else if (_screenWidth >= DeviceConstant.tabletWidth) {
      _scaleFactor = (_screenWidth / DeviceConstant.tabletWidth) *
          DeviceConstant.tabletScale;
      _screenType = ScreenType.extraLarge;

      /// For Extra Large Mobile Device (>= 600)
      ///
    } else if (_screenWidth >= DeviceConstant.extraLargeMobileWidth) {
      _scaleFactor = (_screenWidth / DeviceConstant.extraLargeMobileWidth) *
          DeviceConstant.extraLargeMobileScale;
      _screenType = ScreenType.large;

      /// For Large Mobile Device ( >= 480)
      ///
    } else if (_screenWidth >= DeviceConstant.largeMobileWidth) {
      _scaleFactor = (_screenWidth / DeviceConstant.largeMobileWidth) *
          DeviceConstant.largeMobileScale;
      _screenType = ScreenType.large;

      /// For Medium Mobile Device ( >= 375)
      ///
    } else if (_screenWidth >= DeviceConstant.mobileWidth) {
      _scaleFactor = (_screenWidth / DeviceConstant.mobileWidth) *
          DeviceConstant.mobileScale;
      _screenType = ScreenType.medium;

      /// For Small Mobile Device ( >= 320)
      ///
    } else {
      _scaleFactor = (_screenWidth / DeviceConstant.smallMobileWidth) *
          DeviceConstant.smallMobileScale;
      _screenType = ScreenType.small;
    }
  }

  /// [dispose] method of [Config] remove observer from [WidgetsBinding.instance]
  ///
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }
}
