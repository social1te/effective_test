// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharactersListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersListState()';
}


}

/// @nodoc
class $CharactersListStateCopyWith<$Res>  {
$CharactersListStateCopyWith(CharactersListState _, $Res Function(CharactersListState) __);
}


/// Adds pattern-matching-related methods to [CharactersListState].
extension CharactersListStatePatterns on CharactersListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CharactersListInitial value)?  initial,TResult Function( CharactersListLoading value)?  loading,TResult Function( CharactersListLoaded value)?  loaded,TResult Function( CharactersListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CharactersListInitial() when initial != null:
return initial(_that);case CharactersListLoading() when loading != null:
return loading(_that);case CharactersListLoaded() when loaded != null:
return loaded(_that);case CharactersListError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CharactersListInitial value)  initial,required TResult Function( CharactersListLoading value)  loading,required TResult Function( CharactersListLoaded value)  loaded,required TResult Function( CharactersListError value)  error,}){
final _that = this;
switch (_that) {
case CharactersListInitial():
return initial(_that);case CharactersListLoading():
return loading(_that);case CharactersListLoaded():
return loaded(_that);case CharactersListError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CharactersListInitial value)?  initial,TResult? Function( CharactersListLoading value)?  loading,TResult? Function( CharactersListLoaded value)?  loaded,TResult? Function( CharactersListError value)?  error,}){
final _that = this;
switch (_that) {
case CharactersListInitial() when initial != null:
return initial(_that);case CharactersListLoading() when loading != null:
return loading(_that);case CharactersListLoaded() when loaded != null:
return loaded(_that);case CharactersListError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Character> characters,  int currentPage,  bool hasMore,  bool isLoading)?  loaded,TResult Function( String message,  List<Character>? characters,  bool canRetry)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CharactersListInitial() when initial != null:
return initial();case CharactersListLoading() when loading != null:
return loading();case CharactersListLoaded() when loaded != null:
return loaded(_that.characters,_that.currentPage,_that.hasMore,_that.isLoading);case CharactersListError() when error != null:
return error(_that.message,_that.characters,_that.canRetry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Character> characters,  int currentPage,  bool hasMore,  bool isLoading)  loaded,required TResult Function( String message,  List<Character>? characters,  bool canRetry)  error,}) {final _that = this;
switch (_that) {
case CharactersListInitial():
return initial();case CharactersListLoading():
return loading();case CharactersListLoaded():
return loaded(_that.characters,_that.currentPage,_that.hasMore,_that.isLoading);case CharactersListError():
return error(_that.message,_that.characters,_that.canRetry);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Character> characters,  int currentPage,  bool hasMore,  bool isLoading)?  loaded,TResult? Function( String message,  List<Character>? characters,  bool canRetry)?  error,}) {final _that = this;
switch (_that) {
case CharactersListInitial() when initial != null:
return initial();case CharactersListLoading() when loading != null:
return loading();case CharactersListLoaded() when loaded != null:
return loaded(_that.characters,_that.currentPage,_that.hasMore,_that.isLoading);case CharactersListError() when error != null:
return error(_that.message,_that.characters,_that.canRetry);case _:
  return null;

}
}

}

/// @nodoc


class CharactersListInitial implements CharactersListState {
  const CharactersListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersListState.initial()';
}


}




/// @nodoc


class CharactersListLoading implements CharactersListState {
  const CharactersListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersListState.loading()';
}


}




/// @nodoc


class CharactersListLoaded implements CharactersListState {
  const CharactersListLoaded({required final  List<Character> characters, required this.currentPage, required this.hasMore, this.isLoading = false}): _characters = characters;
  

 final  List<Character> _characters;
 List<Character> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

 final  int currentPage;
 final  bool hasMore;
@JsonKey() final  bool isLoading;

/// Create a copy of CharactersListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharactersListLoadedCopyWith<CharactersListLoaded> get copyWith => _$CharactersListLoadedCopyWithImpl<CharactersListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersListLoaded&&const DeepCollectionEquality().equals(other._characters, _characters)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_characters),currentPage,hasMore,isLoading);

@override
String toString() {
  return 'CharactersListState.loaded(characters: $characters, currentPage: $currentPage, hasMore: $hasMore, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $CharactersListLoadedCopyWith<$Res> implements $CharactersListStateCopyWith<$Res> {
  factory $CharactersListLoadedCopyWith(CharactersListLoaded value, $Res Function(CharactersListLoaded) _then) = _$CharactersListLoadedCopyWithImpl;
@useResult
$Res call({
 List<Character> characters, int currentPage, bool hasMore, bool isLoading
});




}
/// @nodoc
class _$CharactersListLoadedCopyWithImpl<$Res>
    implements $CharactersListLoadedCopyWith<$Res> {
  _$CharactersListLoadedCopyWithImpl(this._self, this._then);

  final CharactersListLoaded _self;
  final $Res Function(CharactersListLoaded) _then;

/// Create a copy of CharactersListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? characters = null,Object? currentPage = null,Object? hasMore = null,Object? isLoading = null,}) {
  return _then(CharactersListLoaded(
characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CharactersListError implements CharactersListState {
  const CharactersListError({required this.message, required final  List<Character>? characters, this.canRetry = true}): _characters = characters;
  

 final  String message;
 final  List<Character>? _characters;
 List<Character>? get characters {
  final value = _characters;
  if (value == null) return null;
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@JsonKey() final  bool canRetry;

/// Create a copy of CharactersListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharactersListErrorCopyWith<CharactersListError> get copyWith => _$CharactersListErrorCopyWithImpl<CharactersListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersListError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._characters, _characters)&&(identical(other.canRetry, canRetry) || other.canRetry == canRetry));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_characters),canRetry);

@override
String toString() {
  return 'CharactersListState.error(message: $message, characters: $characters, canRetry: $canRetry)';
}


}

/// @nodoc
abstract mixin class $CharactersListErrorCopyWith<$Res> implements $CharactersListStateCopyWith<$Res> {
  factory $CharactersListErrorCopyWith(CharactersListError value, $Res Function(CharactersListError) _then) = _$CharactersListErrorCopyWithImpl;
@useResult
$Res call({
 String message, List<Character>? characters, bool canRetry
});




}
/// @nodoc
class _$CharactersListErrorCopyWithImpl<$Res>
    implements $CharactersListErrorCopyWith<$Res> {
  _$CharactersListErrorCopyWithImpl(this._self, this._then);

  final CharactersListError _self;
  final $Res Function(CharactersListError) _then;

/// Create a copy of CharactersListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? characters = freezed,Object? canRetry = null,}) {
  return _then(CharactersListError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,characters: freezed == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>?,canRetry: null == canRetry ? _self.canRetry : canRetry // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
