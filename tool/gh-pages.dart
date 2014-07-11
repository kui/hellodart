#!/usr/bin/env dart

import 'dart:io';

import 'package:ghpages_generator/ghpages_generator.dart' as gh;
import 'package:path/path.dart';

main() {
  var gen = new gh.Generator(rootDir: projectDir)
    ..withWeb = true;
  gen.generate(doCustomTask: (workDir) {
    gh.moveWebAtRoot(workDir);
  });
}

String get projectDir =>
    absolute(
        dirname(
            dirname(Platform.script.toFilePath())));
