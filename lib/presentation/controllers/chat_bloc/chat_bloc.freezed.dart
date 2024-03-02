// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  String get userMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userMessage) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userMessage)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userMessage)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
  @useResult
  $Res call({String userMessage});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userMessage = null,
  }) {
    return _then(_value.copyWith(
      userMessage: null == userMessage
          ? _value.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$sendMessageImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$sendMessageImplCopyWith(
          _$sendMessageImpl value, $Res Function(_$sendMessageImpl) then) =
      __$$sendMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userMessage});
}

/// @nodoc
class __$$sendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$sendMessageImpl>
    implements _$$sendMessageImplCopyWith<$Res> {
  __$$sendMessageImplCopyWithImpl(
      _$sendMessageImpl _value, $Res Function(_$sendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userMessage = null,
  }) {
    return _then(_$sendMessageImpl(
      null == userMessage
          ? _value.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$sendMessageImpl implements _sendMessage {
  const _$sendMessageImpl(this.userMessage);

  @override
  final String userMessage;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(userMessage: $userMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sendMessageImpl &&
            (identical(other.userMessage, userMessage) ||
                other.userMessage == userMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sendMessageImplCopyWith<_$sendMessageImpl> get copyWith =>
      __$$sendMessageImplCopyWithImpl<_$sendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userMessage) sendMessage,
  }) {
    return sendMessage(userMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userMessage)? sendMessage,
  }) {
    return sendMessage?.call(userMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userMessage)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(userMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _sendMessage implements ChatEvent {
  const factory _sendMessage(final String userMessage) = _$sendMessageImpl;

  @override
  String get userMessage;
  @override
  @JsonKey(ignore: true)
  _$$sendMessageImplCopyWith<_$sendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<ChatEnity> get messages => throw _privateConstructorUsedError;
  String? get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatEnity> messages, String? failure)
        userMessage,
    required TResult Function(List<ChatEnity> messages, String? failure)
        botMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatEnity> messages, String? failure)? userMessage,
    TResult? Function(List<ChatEnity> messages, String? failure)? botMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatEnity> messages, String? failure)? userMessage,
    TResult Function(List<ChatEnity> messages, String? failure)? botMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserMessge value) userMessage,
    required TResult Function(_BotMessage value) botMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserMessge value)? userMessage,
    TResult? Function(_BotMessage value)? botMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserMessge value)? userMessage,
    TResult Function(_BotMessage value)? botMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({List<ChatEnity> messages, String? failure});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatEnity>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMessgeImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$UserMessgeImplCopyWith(
          _$UserMessgeImpl value, $Res Function(_$UserMessgeImpl) then) =
      __$$UserMessgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatEnity> messages, String? failure});
}

/// @nodoc
class __$$UserMessgeImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$UserMessgeImpl>
    implements _$$UserMessgeImplCopyWith<$Res> {
  __$$UserMessgeImplCopyWithImpl(
      _$UserMessgeImpl _value, $Res Function(_$UserMessgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? failure = freezed,
  }) {
    return _then(_$UserMessgeImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatEnity>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserMessgeImpl implements _UserMessge {
  const _$UserMessgeImpl(
      {final List<ChatEnity> messages = const <ChatEnity>[], this.failure})
      : _messages = messages;

  final List<ChatEnity> _messages;
  @override
  @JsonKey()
  List<ChatEnity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? failure;

  @override
  String toString() {
    return 'ChatState.userMessage(messages: $messages, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMessgeImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messages), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMessgeImplCopyWith<_$UserMessgeImpl> get copyWith =>
      __$$UserMessgeImplCopyWithImpl<_$UserMessgeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatEnity> messages, String? failure)
        userMessage,
    required TResult Function(List<ChatEnity> messages, String? failure)
        botMessage,
  }) {
    return userMessage(messages, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatEnity> messages, String? failure)? userMessage,
    TResult? Function(List<ChatEnity> messages, String? failure)? botMessage,
  }) {
    return userMessage?.call(messages, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatEnity> messages, String? failure)? userMessage,
    TResult Function(List<ChatEnity> messages, String? failure)? botMessage,
    required TResult orElse(),
  }) {
    if (userMessage != null) {
      return userMessage(messages, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserMessge value) userMessage,
    required TResult Function(_BotMessage value) botMessage,
  }) {
    return userMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserMessge value)? userMessage,
    TResult? Function(_BotMessage value)? botMessage,
  }) {
    return userMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserMessge value)? userMessage,
    TResult Function(_BotMessage value)? botMessage,
    required TResult orElse(),
  }) {
    if (userMessage != null) {
      return userMessage(this);
    }
    return orElse();
  }
}

abstract class _UserMessge implements ChatState {
  const factory _UserMessge(
      {final List<ChatEnity> messages,
      final String? failure}) = _$UserMessgeImpl;

  @override
  List<ChatEnity> get messages;
  @override
  String? get failure;
  @override
  @JsonKey(ignore: true)
  _$$UserMessgeImplCopyWith<_$UserMessgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BotMessageImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$BotMessageImplCopyWith(
          _$BotMessageImpl value, $Res Function(_$BotMessageImpl) then) =
      __$$BotMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatEnity> messages, String? failure});
}

/// @nodoc
class __$$BotMessageImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$BotMessageImpl>
    implements _$$BotMessageImplCopyWith<$Res> {
  __$$BotMessageImplCopyWithImpl(
      _$BotMessageImpl _value, $Res Function(_$BotMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? failure = freezed,
  }) {
    return _then(_$BotMessageImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatEnity>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BotMessageImpl implements _BotMessage {
  const _$BotMessageImpl(
      {final List<ChatEnity> messages = const <ChatEnity>[], this.failure})
      : _messages = messages;

  final List<ChatEnity> _messages;
  @override
  @JsonKey()
  List<ChatEnity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? failure;

  @override
  String toString() {
    return 'ChatState.botMessage(messages: $messages, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotMessageImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messages), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BotMessageImplCopyWith<_$BotMessageImpl> get copyWith =>
      __$$BotMessageImplCopyWithImpl<_$BotMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatEnity> messages, String? failure)
        userMessage,
    required TResult Function(List<ChatEnity> messages, String? failure)
        botMessage,
  }) {
    return botMessage(messages, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatEnity> messages, String? failure)? userMessage,
    TResult? Function(List<ChatEnity> messages, String? failure)? botMessage,
  }) {
    return botMessage?.call(messages, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatEnity> messages, String? failure)? userMessage,
    TResult Function(List<ChatEnity> messages, String? failure)? botMessage,
    required TResult orElse(),
  }) {
    if (botMessage != null) {
      return botMessage(messages, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserMessge value) userMessage,
    required TResult Function(_BotMessage value) botMessage,
  }) {
    return botMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserMessge value)? userMessage,
    TResult? Function(_BotMessage value)? botMessage,
  }) {
    return botMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserMessge value)? userMessage,
    TResult Function(_BotMessage value)? botMessage,
    required TResult orElse(),
  }) {
    if (botMessage != null) {
      return botMessage(this);
    }
    return orElse();
  }
}

abstract class _BotMessage implements ChatState {
  const factory _BotMessage(
      {final List<ChatEnity> messages,
      final String? failure}) = _$BotMessageImpl;

  @override
  List<ChatEnity> get messages;
  @override
  String? get failure;
  @override
  @JsonKey(ignore: true)
  _$$BotMessageImplCopyWith<_$BotMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
