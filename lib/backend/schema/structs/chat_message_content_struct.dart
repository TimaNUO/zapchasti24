// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessageContentStruct extends BaseStruct {
  ChatMessageContentStruct({
    String? type,
    String? text,
    String? imageUrl,
    String? videoUrl,
    String? audioUrl,
    String? thumbnailUrl,
    ChatMetaStruct? chatMeta,
  })  : _type = type,
        _text = text,
        _imageUrl = imageUrl,
        _videoUrl = videoUrl,
        _audioUrl = audioUrl,
        _thumbnailUrl = thumbnailUrl,
        _chatMeta = chatMeta;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "videoUrl" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  set videoUrl(String? val) => _videoUrl = val;

  bool hasVideoUrl() => _videoUrl != null;

  // "audioUrl" field.
  String? _audioUrl;
  String get audioUrl => _audioUrl ?? '';
  set audioUrl(String? val) => _audioUrl = val;

  bool hasAudioUrl() => _audioUrl != null;

  // "thumbnailUrl" field.
  String? _thumbnailUrl;
  String get thumbnailUrl => _thumbnailUrl ?? '';
  set thumbnailUrl(String? val) => _thumbnailUrl = val;

  bool hasThumbnailUrl() => _thumbnailUrl != null;

  // "ChatMeta" field.
  ChatMetaStruct? _chatMeta;
  ChatMetaStruct get chatMeta => _chatMeta ?? ChatMetaStruct();
  set chatMeta(ChatMetaStruct? val) => _chatMeta = val;

  void updateChatMeta(Function(ChatMetaStruct) updateFn) {
    updateFn(_chatMeta ??= ChatMetaStruct());
  }

  bool hasChatMeta() => _chatMeta != null;

  static ChatMessageContentStruct fromMap(Map<String, dynamic> data) =>
      ChatMessageContentStruct(
        type: data['type'] as String?,
        text: data['text'] as String?,
        imageUrl: data['imageUrl'] as String?,
        videoUrl: data['videoUrl'] as String?,
        audioUrl: data['audioUrl'] as String?,
        thumbnailUrl: data['thumbnailUrl'] as String?,
        chatMeta: data['ChatMeta'] is ChatMetaStruct
            ? data['ChatMeta']
            : ChatMetaStruct.maybeFromMap(data['ChatMeta']),
      );

  static ChatMessageContentStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatMessageContentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'text': _text,
        'imageUrl': _imageUrl,
        'videoUrl': _videoUrl,
        'audioUrl': _audioUrl,
        'thumbnailUrl': _thumbnailUrl,
        'ChatMeta': _chatMeta?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'videoUrl': serializeParam(
          _videoUrl,
          ParamType.String,
        ),
        'audioUrl': serializeParam(
          _audioUrl,
          ParamType.String,
        ),
        'thumbnailUrl': serializeParam(
          _thumbnailUrl,
          ParamType.String,
        ),
        'ChatMeta': serializeParam(
          _chatMeta,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ChatMessageContentStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChatMessageContentStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
        videoUrl: deserializeParam(
          data['videoUrl'],
          ParamType.String,
          false,
        ),
        audioUrl: deserializeParam(
          data['audioUrl'],
          ParamType.String,
          false,
        ),
        thumbnailUrl: deserializeParam(
          data['thumbnailUrl'],
          ParamType.String,
          false,
        ),
        chatMeta: deserializeStructParam(
          data['ChatMeta'],
          ParamType.DataStruct,
          false,
          structBuilder: ChatMetaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ChatMessageContentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatMessageContentStruct &&
        type == other.type &&
        text == other.text &&
        imageUrl == other.imageUrl &&
        videoUrl == other.videoUrl &&
        audioUrl == other.audioUrl &&
        thumbnailUrl == other.thumbnailUrl &&
        chatMeta == other.chatMeta;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([type, text, imageUrl, videoUrl, audioUrl, thumbnailUrl, chatMeta]);
}

ChatMessageContentStruct createChatMessageContentStruct({
  String? type,
  String? text,
  String? imageUrl,
  String? videoUrl,
  String? audioUrl,
  String? thumbnailUrl,
  ChatMetaStruct? chatMeta,
}) =>
    ChatMessageContentStruct(
      type: type,
      text: text,
      imageUrl: imageUrl,
      videoUrl: videoUrl,
      audioUrl: audioUrl,
      thumbnailUrl: thumbnailUrl,
      chatMeta: chatMeta ?? ChatMetaStruct(),
    );
