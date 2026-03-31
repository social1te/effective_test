// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent()';
}


}

/// @nodoc
class $ThemeEventCopyWith<$Res>  {
$ThemeEventCopyWith(ThemeEvent _, $Res Function(ThemeEvent) __);
}


/// Adds pattern-matching-related methods to [ThemeEvent].
extension ThemeEventPatterns on ThemeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadTheme value)?  loadTheme,TResult Function( ChangeTheme value)?  changeTheme,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadTheme() when loadTheme != null:
return loadTheme(_that);case ChangeTheme() when changeTheme != null:
return changeTheme(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadTheme value)  loadTheme,required TResult Function( ChangeTheme value)  changeTheme,}){
final _that = this;
switch (_that) {
case LoadTheme():
return loadTheme(_that);case ChangeTheme():
return changeTheme(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadTheme value)?  loadTheme,TResult? Function( ChangeTheme value)?  changeTheme,}){
final _that = this;
switch (_that) {
case LoadTheme() when loadTheme != null:
return loadTheme(_that);case ChangeTheme() when changeTheme != null:
return changeTheme(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadTheme,TResult Function( AppThemeMode mode)?  changeTheme,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadTheme() when loadTheme != null:
return loadTheme();case ChangeTheme() when changeTheme != null:
return changeTheme(_that.mode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadTheme,required TResult Function( AppThemeMode mode)  changeTheme,}) {final _that = this;
switch (_that) {
case LoadTheme():
return loadTheme();case ChangeTheme():
return changeTheme(_that.mode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadTheme,TResult? Function( AppThemeMode mode)?  changeTheme,}) {final _that = this;
switch (_that) {
case LoadTheme() when loadTheme != null:
return loadTheme();case ChangeTheme() when changeTheme != null:
return changeTheme(_that.mode);case _:
  return null;

}
}

}

/// @nodoc


class LoadTheme implements ThemeEvent {
  const LoadTheme();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTheme);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent.loadTheme()';
}


}




/// @nodoc


class ChangeTheme implements ThemeEvent {
  const ChangeTheme(this.mode);
  

 final  AppThemeMode mode;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeThemeCopyWith<ChangeTheme> get copyWith => _$ChangeThemeCopyWithImpl<ChangeTheme>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeTheme&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'ThemeEvent.changeTheme(mode: $mode)';
}


}

/// @nodoc
abstract mixin class $ChangeThemeCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $ChangeThemeCopyWith(ChangeTheme value, $Res Function(ChangeTheme) _then) = _$ChangeThemeCopyWithImpl;
@useResult
$Res call({
 AppThemeMode mode
});




}
/// @nodoc
class _$ChangeThemeCopyWithImpl<$Res>
    implements $ChangeThemeCopyWith<$Res> {
  _$ChangeThemeCopyWithImpl(this._self, this._then);

  final ChangeTheme _self;
  final $Res Function(ChangeTheme) _then;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mode = null,}) {
  return _then(ChangeTheme(
null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AppThemeMode,
  ));
}


}

/// @nodoc
mixin _$ThemeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState()';
}


}

/// @nodoc
class $ThemeStateCopyWith<$Res>  {
$ThemeStateCopyWith(ThemeState _, $Res Function(ThemeState) __);
}


/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ThemeInitial value)?  initial,TResult Function( ThemeLoading value)?  loading,TResult Function( ThemeLoaded value)?  loaded,TResult Function( ThemeError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ThemeInitial() when initial != null:
return initial(_that);case ThemeLoading() when loading != null:
return loading(_that);case ThemeLoaded() when loaded != null:
return loaded(_that);case ThemeError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ThemeInitial value)  initial,required TResult Function( ThemeLoading value)  loading,required TResult Function( ThemeLoaded value)  loaded,required TResult Function( ThemeError value)  error,}){
final _that = this;
switch (_that) {
case ThemeInitial():
return initial(_that);case ThemeLoading():
return loading(_that);case ThemeLoaded():
return loaded(_that);case ThemeError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ThemeInitial value)?  initial,TResult? Function( ThemeLoading value)?  loading,TResult? Function( ThemeLoaded value)?  loaded,TResult? Function( ThemeError value)?  error,}){
final _that = this;
switch (_that) {
case ThemeInitial() when initial != null:
return initial(_that);case ThemeLoading() when loading != null:
return loading(_that);case ThemeLoaded() when loaded != null:
return loaded(_that);case ThemeError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppThemeMode mode)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ThemeInitial() when initial != null:
return initial();case ThemeLoading() when loading != null:
return loading();case ThemeLoaded() when loaded != null:
return loaded(_that.mode);case ThemeError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppThemeMode mode)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ThemeInitial():
return initial();case ThemeLoading():
return loading();case ThemeLoaded():
return loaded(_that.mode);case ThemeError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppThemeMode mode)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ThemeInitial() when initial != null:
return initial();case ThemeLoading() when loading != null:
return loading();case ThemeLoaded() when loaded != null:
return loaded(_that.mode);case ThemeError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ThemeInitial implements ThemeState {
  const ThemeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState.initial()';
}


}




/// @nodoc


class ThemeLoading implements ThemeState {
  const ThemeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState.loading()';
}


}




/// @nodoc


class ThemeLoaded implements ThemeState {
  const ThemeLoaded({this.mode = AppThemeMode.system});
  

@JsonKey() final  AppThemeMode mode;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeLoadedCopyWith<ThemeLoaded> get copyWith => _$ThemeLoadedCopyWithImpl<ThemeLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeLoaded&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'ThemeState.loaded(mode: $mode)';
}


}

/// @nodoc
abstract mixin class $ThemeLoadedCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory $ThemeLoadedCopyWith(ThemeLoaded value, $Res Function(ThemeLoaded) _then) = _$ThemeLoadedCopyWithImpl;
@useResult
$Res call({
 AppThemeMode mode
});




}
/// @nodoc
class _$ThemeLoadedCopyWithImpl<$Res>
    implements $ThemeLoadedCopyWith<$Res> {
  _$ThemeLoadedCopyWithImpl(this._self, this._then);

  final ThemeLoaded _self;
  final $Res Function(ThemeLoaded) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mode = null,}) {
  return _then(ThemeLoaded(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AppThemeMode,
  ));
}


}

/// @nodoc


class ThemeError implements ThemeState {
  const ThemeError({required this.message});
  

 final  String message;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeErrorCopyWith<ThemeError> get copyWith => _$ThemeErrorCopyWithImpl<ThemeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ThemeState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ThemeErrorCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory $ThemeErrorCopyWith(ThemeError value, $Res Function(ThemeError) _then) = _$ThemeErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ThemeErrorCopyWithImpl<$Res>
    implements $ThemeErrorCopyWith<$Res> {
  _$ThemeErrorCopyWithImpl(this._self, this._then);

  final ThemeError _self;
  final $Res Function(ThemeError) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ThemeError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
