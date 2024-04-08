// bin/main.dart

import 'dart:io';

import 'package:flutter_patch_package/flutter_patch_package.dart';
import 'package:flutter_patch_package/logger.dart';

void main(List<String> arguments) {
  final logger = Logger('flutter_patch_package.log');

  // Checking if the command is to apply patches without specifying a package name
  if (arguments.isEmpty || (arguments.length < 2 && arguments[0] != 'apply')) {
    logger.log(
        'Usage: flutter pub run flutter_patch_package <command> [<package_name>]');
    logger.log('Commands: start <package_name>, done <package_name>, apply');
    exit(1);
  }

  // If the command is 'apply', no package name is needed
  if (arguments[0] == 'apply') {
    applyPatches(logger);
    return;
  }

  // For 'start' and 'done' commands, a package name is required
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
      exit(1);
  }
}
