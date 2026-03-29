import 'package:effective_test_app/src/features/characters/list/data/dto/response/characters_list_response_dto.dart' as dto;
import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/characters_list.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/origin.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/location.dart';

extension CharacterResponseDtoMapper on dto.CharacterResponseDto {
  Character toDomain() {
    return Character(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      origin: origin.toDomain(),
      location: location.toDomain(),
      image: image,
      episode: episode,
      url: url,
      created: created,
    );
  }
}

extension OriginDtoMapper on dto.Origin {
  Origin toDomain() {
    return Origin(name: name, url: url);
  }
}

extension LocationDtoMapper on dto.Location {
  Location toDomain() {
    return Location(name: name, url: url);
  }
}

extension CharactersListResponseDtoMapper on dto.CharactersListResponseDto {
  CharactersList toDomain() {
    return CharactersList(
      characters: results.map((e) => e.toDomain()).toList(),
      count: info.count,
      pages: info.pages,
      prev: info.prev,
      next: info.next,
    );
  }
}