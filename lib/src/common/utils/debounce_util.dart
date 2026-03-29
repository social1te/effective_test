import 'dart:async';
import 'package:flutter/foundation.dart';

class DebounceUtil {
  Timer? _timer;
  final Duration delay;
  final VoidCallback callback;

  DebounceUtil({
    this.delay = const Duration(milliseconds: 300),
    required this.callback,
  });

  void notify() {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  void cancel() {
    _timer?.cancel();
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }

  bool get isPending => _timer?.isActive ?? false;
}