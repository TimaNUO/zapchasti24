import 'package:collection/collection.dart';

enum Status {
  pendingReview,
  rejected,
  approved,
}

enum OrderStatus {
  created,
  completedBuyer,
  cancelledBuyer,
  cancelledSeller,
  completedSeller,
}

enum MessageType {
  text,
  image,
  video,
  audio,
  system_call,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (OrderStatus):
      return OrderStatus.values.deserialize(value) as T?;
    case (MessageType):
      return MessageType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
