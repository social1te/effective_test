import 'package:json_annotation/json_annotation.dart';

part 'characters_list_response_dto.g.dart';

@JsonSerializable()
class PageResponseDto {
  const PageResponseDto({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  factory PageResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PageResponseDtoFromJson(json);

  @JsonKey(name: 'count')
  final int count;

  @JsonKey(name: 'pages')
  final int pages;

  @JsonKey(name: 'next')
  final String? next;

  @JsonKey(name: 'prev')
  final String? prev;
}

@JsonSerializable()
class CharactersListResponseDto {
  const CharactersListResponseDto({
    required this.info,
    required this.results,
  });

  factory CharactersListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CharactersListResponseDtoFromJson(json);

  @JsonKey(name: 'info')
  final PageResponseDto info;

  @JsonKey(name: 'results')
  final List<CharacterResponseDto> results;
}

@JsonSerializable()
class CharacterResponseDto {
  const CharacterResponseDto({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  factory CharacterResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseDtoFromJson(json);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'species')
  final String species;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'gender')
  final String gender;

  @JsonKey(name: 'origin')
  final Origin origin;

  @JsonKey(name: 'location')
  final Location location;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'episode')
  final List<String> episode;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'created')
  final DateTime created;
}

@JsonSerializable()
class Origin {
  const Origin({required this.name, required this.url});

  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'url')
  final String url;
}

@JsonSerializable()
class Location {
  const Location({required this.name, required this.url});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'url')
  final String url;
}
