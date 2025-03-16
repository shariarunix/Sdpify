part of '../sdpify.dart';

/// [DeviceConstant] is a static class that defines popular screen widths
/// and their respective scale ratios for adaptive UI scaling.
///
class DeviceConstant {
  DeviceConstant._();

  /// [smallMobileWidth] The width of small mobile devices (e.g., older phones).
  ///
  static const double smallMobileWidth = 320.0;

  /// [mobileWidth] The width of standard mobile devices.
  ///
  static const double mobileWidth = 375.0;

  /// [largeMobileWidth] The width of large mobile devices.
  ///
  static const double largeMobileWidth = 480.0;

  /// [extraLargeMobileWidth] The width of extra-large mobile devices or small tablets.
  ///
  static const double extraLargeMobileWidth = 600.0;

  /// [tabletWidth] The width of tablets.
  ///
  static const double tabletWidth = 768.0;

  /// [desktopWidth] The width of desktop devices.
  ///
  static const double desktopWidth = 1024.0;

  /// [smallMobileScale] Scale ratio for small mobile devices.
  ///
  static const double smallMobileScale = 0.90;

  /// [mobileScale] Scale ratio for standard mobile devices.
  ///
  static const double mobileScale = 0.95;

  /// [largeMobileScale] Scale ratio for large mobile devices.
  ///
  static const double largeMobileScale = 1.0;

  /// [extraLargeMobileScale] Scale ratio for extra-large mobile devices.
  ///
  static const double extraLargeMobileScale = 1.05;

  /// [tabletScale] Scale ratio for tablets.
  ///
  static const double tabletScale = 1.15;

  /// [desktopScale] Scale ratio for desktop devices.
  ///
  static const double desktopScale = 1.2;
}
