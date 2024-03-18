import 'package:flutter/material.dart';

goNow(settings, page) {
  return MaterialPageRoute(builder: (_)=>page, settings: settings);
}