import 'package:atom1/core/strings.dart';
import 'package:atom1/infrastructure/api_key.dart';

class ApiEndpoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
}
