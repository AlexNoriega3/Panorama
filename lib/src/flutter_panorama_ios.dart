import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_panorama/platform_interface.dart';

import 'flutter_panorama_method_channel.dart';

class IosPanoramaView extends FlutterPanoramaPlatform {
  @override
  Widget build(BuildContext context, Map<String, dynamic> creationParams,
      PanoramaPlatformCallbacksHandler callbacksHandler) {
    return UiKitView(
      viewType: "plugins.vincent/panorama",
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
      onPlatformViewCreated: (int id) {
        MethodChannelPanoramaPlatform(id, callbacksHandler);
      },
    );
    ;
  }
}
