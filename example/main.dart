import 'package:flutter_patch_package/app_log.dart';
import 'package:flutter_patch_package/flutter_patch_package.dart';
import 'package:flutter_patch_package/logger.dart';

void main() {
  final logger = MockLogger();
  final patcher = FlutterPatcher('example_package', logger);

  appLog('Starting the patch process...');
  patcher.start();

  // Imagine changes are made here.

  appLog('Finalizing the patch...');
  patcher.done();

  appLog('Patch process complete.');
}
