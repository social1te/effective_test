// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharactersListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersListEvent()';
}


}

/// @nodoc
class $CharactersListEventCopyWith<$Res>  {
$CharactersListEventCopyWith(CharactersListEvent _, $Res Function(CharactersListEvent) __);
}


/// Adds pattern-matching-related methods to [CharactersListEvent].
extension CharactersListEventPatterns on CharactersListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadCharactersEvent value)?  load,TResult Function( LoadNextPageEvent value)?  loadNextPage,TResult Function( RefreshCharactersEvent value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadCharactersEvent() when load != null:
return load(_that);case LoadNextPageEvent() when loadNextPage != null:
return loadNextPage(_that);case RefreshCharactersEvent() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadCharactersEvent value)  load,required TResult Function( LoadNextPageEvent value)  loadNextPage,required TResult Function( RefreshCharactersEvent value)  refresh,}){
final _that = this;
switch (_that) {
case LoadCharactersEvent():
return load(_that);case LoadNextPageEvent():
return loadNextPage(_that);case RefreshCharactersEvent():
return refresh(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadCharactersEvent value)?  load,TResult? Function( LoadNextPageEvent value)?  loadNextPage,TResult? Function( RefreshCharactersEvent value)?  refresh,}){
final _that = this;
switch (_that) {
case LoadCharactersEvent() when load != null:
return load(_that);case LoadNextPageEvent() when loadNextPage != null:
return loadNextPage(_that);case RefreshCharactersEvent() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  load,TResult Function( int page)?  loadNextPage,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadCharactersEvent() when load != null:
return load(_that.page);case LoadNextPageEvent() when loadNextPage != null:
return loadNextPage(_that.page);case RefreshCharactersEvent() when refresh != null:
return refresh();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  load,required TResult Function( int page)  loadNextPage,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case LoadCharactersEvent():
return load(_that.page);case LoadNextPageEvent():
return loadNextPage(_that.page);case RefreshCharactersEvent():
return refresh();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  load,TResult? Function( int page)?  loadNextPage,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case LoadCharactersEvent() when load != null:
return load(_that.page);case LoadNextPageEvent() when loadNextPage != null:
return loadNextPage(_that.page);case RefreshCharactersEvent() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class LoadCharactersEvent implements CharactersListEvent {
  const LoadCharactersEvent({required this.page});
  

 final  int page;

/// Create a copy of CharactersListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCharactersEventCopyWith<LoadCharactersEvent> get copyWith => _$LoadCharactersEventCopyWithImpl<LoadCharactersEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCharactersEvent&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'CharactersListEvent.load(page: $page)';
}


}

/// @nodoc
abstract mixin class $LoadCharactersEventCopyWith<$Res> implements $CharactersListEventCopyWith<$Res> {
  factory $LoadCharactersEventCopyWith(LoadCharactersEvent value, $Res Function(LoadCharactersEvent) _then) = _$LoadCharactersEventCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$LoadCharactersEventCopyWithImpl<$Res>
    implements $LoadCharactersEventCopyWith<$Res> {
  _$LoadCharactersEventCopyWithImpl(this._self, this._then);

  final LoadCharactersEvent _self;
  final $Res Function(LoadCharactersEvent) _then;

/// Create a copy of CharactersListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(LoadCharactersEvent(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadNextPageEvent implements CharactersListEvent {
  const LoadNextPageEvent({required this.page});
  

 final  int page;

/// Create a copy of CharactersListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadNextPageEventCopyWith<LoadNextPageEvent> get copyWith => _$LoadNextPageEventCopyWithImpl<LoadNextPageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadNextPageEvent&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'CharactersListEvent.loadNextPage(page: $page)';
}


}

/// @nodoc
abstract mixin class $LoadNextPageEventCopyWith<$Res> implements $CharactersListEventCopyWith<$Res> {
  factory $LoadNextPageEventCopyWith(LoadNextPageEvent value, $Res Function(LoadNextPageEvent) _then) = _$LoadNextPageEventCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$LoadNextPageEventCopyWithImpl<$Res>
    implements $LoadNextPageEventCopyWith<$Res> {
  _$LoadNextPageEventCopyWithImpl(this._self, this._then);

  final LoadNextPageEvent _self;
  final $Res Function(LoadNextPageEvent) _then;

/// Create a copy of CharactersListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(LoadNextPageEvent(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RefreshCharactersEvent implements CharactersListEvent {
  const RefreshCharactersEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshCharactersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersListEvent.refresh()';
}


}




// dart format on
