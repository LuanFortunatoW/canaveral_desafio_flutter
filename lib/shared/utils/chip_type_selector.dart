// ignore: depend_on_referenced_packages
import 'package:nebraska/nebraska.dart';

class ChipTypeSelector {
  static final Map<String, dynamic> chipStatusMap = {
    "created": ChipStatusType.information,
    "processing": ChipStatusType.alert,
    "processed": ChipStatusType.positive,
  };

  static ChipStatusType getChipType(String status) {
    return chipStatusMap[status] ?? ChipStatusType.negative;
  }
}
