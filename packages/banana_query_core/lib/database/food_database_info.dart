class FoodDatabaseInfo {
  const FoodDatabaseInfo(
      {
      required this.id,
      required this.version,
      required this.name,
      required this.itemCount,
      required this.language,
      required this.source,
      required this.url,
      required this.uri,
      this.description
    });

  final String id;
  final double version;
  final String name;
  final String? description;
  final Uri? url;

  /// The number of food items in the database, it might be missing in the metadata of a database but this will get computed
  /// from the number of items processed at the time of import.
  final int? itemCount;
  final String language;
  final String source;
  final Uri? uri;

  static FoodDatabaseInfo fromJson(Map<String, dynamic> json) {
    return FoodDatabaseInfo(
      id: json['id'],
      version: json['version'],
      name: json['name'],
      description: json['description'],
      itemCount: json['itemCount'],
      language: json['language'],
      source: json['source'],
      uri: json['uri'] != null ? Uri.parse(json['uri']) : null,
      url: json['url'] != null ? Uri.parse(json['url']) : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'uid': id,
        'version': version,
        'name': name,
        'description': description,
        'itemCount': itemCount,
        'language': language,
        'source': source,
        'uri': uri.toString()
      };

  FoodDatabaseInfo copyWith(
      {name, itemCount, language, source, version, uri, url}) {
    return FoodDatabaseInfo(
        id: id,
        name: name ?? this.name,
        itemCount: itemCount ?? this.itemCount,
        language: language ?? this.language,
        source: source ?? this.source,
        version: version ?? this.version,
        uri: uri ?? this.uri,
        url: url ?? this.url);
  }
}
