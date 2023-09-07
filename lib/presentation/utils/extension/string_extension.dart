import 'package:flutter/material.dart';

extension TranslationExtension on String {}

extension NullableStringExtension on String? {
  String safeFirst() {
    return this == null
        ? ''
        : this!.isNotEmpty
            ? this!.characters.first
            : '';
  }
}

extension NullableString on String? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;

  bool get isNullOrEmpty => this == null || this!.isEmpty == true;
}
