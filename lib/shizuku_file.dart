/*
 * Stalker
 * Copyright (C) 2025 Andreno
 *
 * GPLv3 License
 */

import 'dart:io';
import 'dart:math';

import 'package:path_provider/path_provider.dart';

/// ✅ Read file without Shizuku
Future<String> readFile(String path) async {
  final file = File(path);

  if (!await file.exists()) {
    throw FileSystemException("File not found", path);
  }

  return await file.readAsString();
}

/// ✅ Write file without Shizuku
Future<void> writeFile(String targetPath, String contents) async {
  final file = File(targetPath);

  await file.writeAsString(contents);
}

/// ✅ Create Temporary File (Kept for internal use)
File _makeTempFile(String path) {
  final randomString = List.generate(
    10,
    (_) =>
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
            .characters
            .elementAt(Random().nextInt(62)),
  ).join();

  return File("$path/.temp$randomString");
}
