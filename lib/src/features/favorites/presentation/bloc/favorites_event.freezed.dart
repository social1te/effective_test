// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesEvent()';
}


}

/// @nodoc
class $FavoritesEventCopyWith<$Res>  {
$FavoritesEventCopyWith(FavoritesEvent _, $Res Function(FavoritesEvent) __);
}


/// Adds pattern-matching-related methods to [FavoritesEvent].
extension FavoritesEventPatterns on FavoritesEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadFavorites value)?  loadFavorites,TResult Function( AddFavorite value)?  addFavorite,TResult Function( RemoveFavorite value)?  removeFavorite,TResult Function( ToggleFavorite value)?  toggleFavorite,TResult Function( ChangeSortType value)?  changeSortType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadFavorites() when loadFavorites != null:
return loadFavorites(_that);case AddFavorite() when addFavorite != null:
return addFavorite(_that);case RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that);case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case ChangeSortType() when changeSortType != null:
return changeSortType(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadFavorites value)  loadFavorites,required TResult Function( AddFavorite value)  addFavorite,required TResult Function( RemoveFavorite value)  removeFavorite,required TResult Function( ToggleFavorite value)  toggleFavorite,required TResult Function( ChangeSortType value)  changeSortType,}){
final _that = this;
switch (_that) {
case LoadFavorites():
return loadFavorites(_that);case AddFavorite():
return addFavorite(_that);case RemoveFavorite():
return removeFavorite(_that);case ToggleFavorite():
return toggleFavorite(_that);case ChangeSortType():
return changeSortType(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadFavorites value)?  loadFavorites,TResult? Function( AddFavorite value)?  addFavorite,TResult? Function( RemoveFavorite value)?  removeFavorite,TResult? Function( ToggleFavorite value)?  toggleFavorite,TResult? Function( ChangeSortType value)?  changeSortType,}){
final _that = this;
switch (_that) {
case LoadFavorites() when loadFavorites != null:
return loadFavorites(_that);case AddFavorite() when addFavorite != null:
return addFavorite(_that);case RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that);case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case ChangeSortType() when changeSortType != null:
return changeSortType(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadFavorites,TResult Function( Character character)?  addFavorite,TResult Function( int characterId)?  removeFavorite,TResult Function( Character character)?  toggleFavorite,TResult Function( SortingModel sortType)?  changeSortType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadFavorites() when loadFavorites != null:
return loadFavorites();case AddFavorite() when addFavorite != null:
return addFavorite(_that.character);case RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.characterId);case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.character);case ChangeSortType() when changeSortType != null:
return changeSortType(_that.sortType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadFavorites,required TResult Function( Character character)  addFavorite,required TResult Function( int characterId)  removeFavorite,required TResult Function( Character character)  toggleFavorite,required TResult Function( SortingModel sortType)  changeSortType,}) {final _that = this;
switch (_that) {
case LoadFavorites():
return loadFavorites();case AddFavorite():
return addFavorite(_that.character);case RemoveFavorite():
return removeFavorite(_that.characterId);case ToggleFavorite():
return toggleFavorite(_that.character);case ChangeSortType():
return changeSortType(_that.sortType);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadFavorites,TResult? Function( Character character)?  addFavorite,TResult? Function( int characterId)?  removeFavorite,TResult? Function( Character character)?  toggleFavorite,TResult? Function( SortingModel sortType)?  changeSortType,}) {final _that = this;
switch (_that) {
case LoadFavorites() when loadFavorites != null:
return loadFavorites();case AddFavorite() when addFavorite != null:
return addFavorite(_that.character);case RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.characterId);case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.character);case ChangeSortType() when changeSortType != null:
return changeSortType(_that.sortType);case _:
  return null;

}
}

}

/// @nodoc


class LoadFavorites implements FavoritesEvent {
  const LoadFavorites();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFavorites);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesEvent.loadFavorites()';
}


}




/// @nodoc


class AddFavorite implements FavoritesEvent {
  const AddFavorite(this.character);
  

 final  Character character;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddFavoriteCopyWith<AddFavorite> get copyWith => _$AddFavoriteCopyWithImpl<AddFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddFavorite&&(identical(other.character, character) || other.character == character));
}


@override
int get hashCode => Object.hash(runtimeType,character);

@override
String toString() {
  return 'FavoritesEvent.addFavorite(character: $character)';
}


}

/// @nodoc
abstract mixin class $AddFavoriteCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory $AddFavoriteCopyWith(AddFavorite value, $Res Function(AddFavorite) _then) = _$AddFavoriteCopyWithImpl;
@useResult
$Res call({
 Character character
});




}
/// @nodoc
class _$AddFavoriteCopyWithImpl<$Res>
    implements $AddFavoriteCopyWith<$Res> {
  _$AddFavoriteCopyWithImpl(this._self, this._then);

  final AddFavorite _self;
  final $Res Function(AddFavorite) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? character = null,}) {
  return _then(AddFavorite(
null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as Character,
  ));
}


}

/// @nodoc


class RemoveFavorite implements FavoritesEvent {
  const RemoveFavorite(this.characterId);
  

 final  int characterId;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFavoriteCopyWith<RemoveFavorite> get copyWith => _$RemoveFavoriteCopyWithImpl<RemoveFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFavorite&&(identical(other.characterId, characterId) || other.characterId == characterId));
}


@override
int get hashCode => Object.hash(runtimeType,characterId);

@override
String toString() {
  return 'FavoritesEvent.removeFavorite(characterId: $characterId)';
}


}

/// @nodoc
abstract mixin class $RemoveFavoriteCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory $RemoveFavoriteCopyWith(RemoveFavorite value, $Res Function(RemoveFavorite) _then) = _$RemoveFavoriteCopyWithImpl;
@useResult
$Res call({
 int characterId
});




}
/// @nodoc
class _$RemoveFavoriteCopyWithImpl<$Res>
    implements $RemoveFavoriteCopyWith<$Res> {
  _$RemoveFavoriteCopyWithImpl(this._self, this._then);

  final RemoveFavorite _self;
  final $Res Function(RemoveFavorite) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? characterId = null,}) {
  return _then(RemoveFavorite(
null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ToggleFavorite implements FavoritesEvent {
  const ToggleFavorite(this.character);
  

 final  Character character;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFavoriteCopyWith<ToggleFavorite> get copyWith => _$ToggleFavoriteCopyWithImpl<ToggleFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFavorite&&(identical(other.character, character) || other.character == character));
}


@override
int get hashCode => Object.hash(runtimeType,character);

@override
String toString() {
  return 'FavoritesEvent.toggleFavorite(character: $character)';
}


}

/// @nodoc
abstract mixin class $ToggleFavoriteCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory $ToggleFavoriteCopyWith(ToggleFavorite value, $Res Function(ToggleFavorite) _then) = _$ToggleFavoriteCopyWithImpl;
@useResult
$Res call({
 Character character
});




}
/// @nodoc
class _$ToggleFavoriteCopyWithImpl<$Res>
    implements $ToggleFavoriteCopyWith<$Res> {
  _$ToggleFavoriteCopyWithImpl(this._self, this._then);

  final ToggleFavorite _self;
  final $Res Function(ToggleFavorite) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? character = null,}) {
  return _then(ToggleFavorite(
null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as Character,
  ));
}


}

/// @nodoc


class ChangeSortType implements FavoritesEvent {
  const ChangeSortType(this.sortType);
  

 final  SortingModel sortType;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeSortTypeCopyWith<ChangeSortType> get copyWith => _$ChangeSortTypeCopyWithImpl<ChangeSortType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeSortType&&(identical(other.sortType, sortType) || other.sortType == sortType));
}


@override
int get hashCode => Object.hash(runtimeType,sortType);

@override
String toString() {
  return 'FavoritesEvent.changeSortType(sortType: $sortType)';
}


}

/// @nodoc
abstract mixin class $ChangeSortTypeCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory $ChangeSortTypeCopyWith(ChangeSortType value, $Res Function(ChangeSortType) _then) = _$ChangeSortTypeCopyWithImpl;
@useResult
$Res call({
 SortingModel sortType
});




}
/// @nodoc
class _$ChangeSortTypeCopyWithImpl<$Res>
    implements $ChangeSortTypeCopyWith<$Res> {
  _$ChangeSortTypeCopyWithImpl(this._self, this._then);

  final ChangeSortType _self;
  final $Res Function(ChangeSortType) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sortType = null,}) {
  return _then(ChangeSortType(
null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as SortingModel,
  ));
}


}

// dart format on
