part of '../sdpify.dart';

extension SdpifyExtension on num {
  /// [sdp] is the main extension [Sdpify]
  /// provides it takes normal logical pixel or any num units and scale them as dp
  ///
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
