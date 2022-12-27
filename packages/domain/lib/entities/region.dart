import 'package:domain/utils/extension_utils.dart';

class Region {
  String name;
  String url;

  Region({
    required this.name,
    required this.url,
  });

  int get id => url.idFromUrl;

  factory Region.fromJson(Map<String, dynamic> map) {
    return Region(
      name: map['name'],
      url: map['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
