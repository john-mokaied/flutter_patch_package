// bin/main.dart

import 'package:flutter_patch_package/flutter_patch_package.dart';
import 'package:flutter_patch_package/logger.dart';

void main(List<String> arguments) {
  final logger = Logger('flutter_patch_package.log');

  if (arguments.length < 2) {
    logger.log('Usage: flutter_patch_package <package_name> <command>');
    return;
  }

  final packageName = arguments[0];
  final command = arguments[1];
  final patcher = FlutterPatcher(packageName, logger);

  switch (command) {
    case 'start':
      patcher.start();
      break;
    case 'done':
      patcher.done();
      break;
    default:
      logger.log('Unknown command: $command');
  }
}
