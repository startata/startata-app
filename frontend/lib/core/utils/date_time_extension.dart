import 'package:flutter/material.dart';

extension DateExtension on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  bool get isYesterday {
    final now = DateTime.now().subtract(Duration(days: 1));
    return now.day == day && now.month == month && now.year == year;
  }

  int isSameDate(DateTime other) {
    final d1 = DateTime(year, month, day);
    final d2 = DateTime(other.year, other.month, other.day);
    return d2.compareTo(d1);
  }

  TimeOfDay get onlyTime {
    return TimeOfDay(
      hour: hour,
      minute: minute,
    );
  }
}
