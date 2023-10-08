import '../../../ConvertSI.dart';

class TQ {
  static String getDeltaT(String value, String format) {
    try {
      double newValue = double.parse(value);

      if (format == "" || format == null || format.isEmpty) {
        return value + "℃";
      } else if (format == "℃") {
        return value + "°C";
      } else if (format == "°K") {
        return value +
            " " +
            format +
            " = " +
            value+
            " °C";
      } else if (format == "℉") {
        return value +
            " " +
            format +
            " = " +
            SI.splitNum(((9/5)*newValue).toString()) +
            " °C";
      } else {
        return "Temperature not found value";
      }
    } catch (e) {
      print(" Temperature parse Error .");
    }
    return "Temperator not found";
  }

  static double getDeltaTValue(String value, String format) {
    try {
      double newValue = double.parse(value);

      if (format == "" || format == null) {
        return newValue;
      } else if (format == "℃") {
        return newValue;
      } else if (format == "°K") {
        return newValue;
      } else if (format == "℉") {
        return (newValue*9)/5;
      }
    } catch (e) {
      print(" Temperature parse Error .");
    }
    return 0;
    
  }
}
