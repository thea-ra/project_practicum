// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelData _$ModelDataFromJson(Map<String, dynamic> json) {
  return _ModelData.fromJson(json);
}

/// @nodoc
mixin _$ModelData {
  @JsonKey(name: "id")
  num? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  num? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelDataCopyWith<ModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelDataCopyWith<$Res> {
  factory $ModelDataCopyWith(ModelData value, $Res Function(ModelData) then) =
      _$ModelDataCopyWithImpl<$Res, ModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") num? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "amount") num? amount});
}

/// @nodoc
class _$ModelDataCopyWithImpl<$Res, $Val extends ModelData>
    implements $ModelDataCopyWith<$Res> {
  _$ModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelDataCopyWith<$Res> implements $ModelDataCopyWith<$Res> {
  factory _$$_ModelDataCopyWith(
          _$_ModelData value, $Res Function(_$_ModelData) then) =
      __$$_ModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") num? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "amount") num? amount});
}

/// @nodoc
class __$$_ModelDataCopyWithImpl<$Res>
    extends _$ModelDataCopyWithImpl<$Res, _$_ModelData>
    implements _$$_ModelDataCopyWith<$Res> {
  __$$_ModelDataCopyWithImpl(
      _$_ModelData _value, $Res Function(_$_ModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_ModelData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelData implements _ModelData {
  _$_ModelData(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "amount") this.amount});

  factory _$_ModelData.fromJson(Map<String, dynamic> json) =>
      _$$_ModelDataFromJson(json);

  @override
  @JsonKey(name: "id")
  final num? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "amount")
  final num? amount;

  @override
  String toString() {
    return 'ModelData(id: $id, title: $title, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelDataCopyWith<_$_ModelData> get copyWith =>
      __$$_ModelDataCopyWithImpl<_$_ModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelDataToJson(
      this,
    );
  }
}

abstract class _ModelData implements ModelData {
  factory _ModelData(
      {@JsonKey(name: "id") final num? id,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "amount") final num? amount}) = _$_ModelData;

  factory _ModelData.fromJson(Map<String, dynamic> json) =
      _$_ModelData.fromJson;

  @override
  @JsonKey(name: "id")
  num? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "amount")
  num? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_ModelDataCopyWith<_$_ModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
