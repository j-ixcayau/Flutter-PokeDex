extension DomainExt on String {
  int get idFromUrl {
    List<String> components = split('/');
    return int.tryParse(components[components.length - 2]) ?? 0;
  }
}
