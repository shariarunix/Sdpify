part of '../sdpify.dart';

extension SdpifyExtension on num {
  double get sdp {
    return this * Config().scaleFactor;
  }

  /// [px] will return device pixel
  /// by converting given value
  ///
  double get px {
    return this * Config().pixelRatio;
  }
}
