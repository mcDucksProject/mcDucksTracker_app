// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    json['id'] as int,
    (json['amount'] as num).toDouble(),
    (json['unitPrice'] as num).toDouble(),
    _$enumDecode(_$OrderStatusEnumMap, json['status']),
    _$enumDecode(_$TypeEnumMap, json['type']),
    DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'unitPrice': instance.unitPrice,
      'status': _$OrderStatusEnumMap[instance.status],
      'type': _$TypeEnumMap[instance.type],
      'dateTime': instance.dateTime.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$OrderStatusEnumMap = {
  OrderStatus.OPEN: 'OPEN',
  OrderStatus.FILLED: 'FILLED',
  OrderStatus.CANCELLED: 'CANCELLED',
};

const _$TypeEnumMap = {
  Type.BUY: 'BUY',
  Type.SELL: 'SELL',
};
