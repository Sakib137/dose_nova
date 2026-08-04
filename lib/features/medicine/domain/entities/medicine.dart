import 'package:equatable/equatable.dart';

enum MedicineType {
  tablet,
  capsule,
  syrup,
  injection,
  drops,
  inhaler,
  cream,
  other,
}

enum RepeatType { daily, weekly, monthly, custom }

class Medicine extends Equatable {
  final String id;

  final String name;

  final MedicineType type;

  final String strength;

  final String dosage;

  final RepeatType repeatType;

  final List<int> weekdays;

  final List<DateTime> reminderTimes;

  final int quantity;

  final int refillReminderAt;

  final String note;

  final bool active;

  const Medicine({
    required this.id,
    required this.name,
    required this.type,
    required this.strength,
    required this.dosage,
    required this.repeatType,
    required this.weekdays,
    required this.reminderTimes,
    required this.quantity,
    required this.refillReminderAt,
    required this.note,
    required this.active,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    type,
    strength,
    dosage,
    repeatType,
    weekdays,
    reminderTimes,
    quantity,
    refillReminderAt,
    note,
    active,
  ];
}
