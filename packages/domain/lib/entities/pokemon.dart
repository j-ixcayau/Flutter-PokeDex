import 'package:domain/utils/extension_utils.dart';

class Pokemon {
  final String name;
  final String url;

  Pokemon({
    required this.name,
    required this.url,
  });

  int get id => url.idFromUrl;
  String get imageUrl =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  factory Pokemon.fromJson(Map<String, dynamic> map) {
    return Pokemon(
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
