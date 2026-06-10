// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMetaStruct extends BaseStruct {
  ChatMetaStruct({
    String? bucket,
    String? path,
    String? thumbPath,
    bool? expired,
  })  : _bucket = bucket,
        _path = path,
        _thumbPath = thumbPath,
        _expired = expired;

  // "bucket" field.
  String? _bucket;
  String get bucket => _bucket ?? '';
  set bucket(String? val) => _bucket = val;

  bool hasBucket() => _bucket != null;

  // "path" field.
  String? _path;
  String get path => _path ?? '';
  set path(String? val) => _path = val;

  bool hasPath() => _path != null;

  // "thumb_path" field.
  String? _thumbPath;
  String get thumbPath => _thumbPath ?? '';
  set thumbPath(String? val) => _thumbPath = val;

  bool hasThumbPath() => _thumbPath != null;

  // "expired" field.
  bool? _expired;
  bool get expired => _expired ?? false;
  set expired(bool? val) => _expired = val;

  bool hasExpired() => _expired != null;

  static ChatMetaStruct fromMap(Map<String, dynamic> data) => ChatMetaStruct(
        bucket: data['bucket'] as String?,
        path: data['path'] as String?,
        thumbPath: data['thumb_path'] as String?,
        expired: data['expired'] as bool?,
      );

  static ChatMetaStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatMetaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'bucket': _bucket,
        'path': _path,
        'thumb_path': _thumbPath,
        'expired': _expired,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bucket': serializeParam(
          _bucket,
          ParamType.String,
        ),
        'path': serializeParam(
          _path,
          ParamType.String,
        ),
        'thumb_path': serializeParam(
          _thumbPath,
          ParamType.String,
        ),
        'expired': serializeParam(
          _expired,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ChatMetaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatMetaStruct(
        bucket: deserializeParam(
          data['bucket'],
          ParamType.String,
          false,
        ),
        path: deserializeParam(
          data['path'],
          ParamType.String,
          false,
        ),
        thumbPath: deserializeParam(
          data['thumb_path'],
          ParamType.String,
          false,
        ),
        expired: deserializeParam(
          data['expired'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ChatMetaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatMetaStruct &&
        bucket == other.bucket &&
        path == other.path &&
        thumbPath == other.thumbPath &&
        expired == other.expired;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([bucket, path, thumbPath, expired]);
}

ChatMetaStruct createChatMetaStruct({
  String? bucket,
  String? path,
  String? thumbPath,
  bool? expired,
}) =>
    ChatMetaStruct(
      bucket: bucket,
      path: path,
      thumbPath: thumbPath,
      expired: expired,
    );
