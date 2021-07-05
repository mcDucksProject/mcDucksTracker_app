// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pair _$PairFromJson(Map<String, dynamic> json) {
  return Pair(
    json['id'] as int,
    _$enumDecode(_$StakeCurrencyEnumMap, json['stakeCurrency']),
    json['currency'] as String,
    (json['orders'] as List<dynamic>)
        .map((e) => Order.fromJson(e as Map<String, dynamic>))
        .toList(),
    _$enumDecode(_$ExchangeEnumMap, json['exchange']),
  );
}

Map<String, dynamic> _$PairToJson(Pair instance) => <String, dynamic>{
      'id': instance.id,
      'orders': instance.orders.map((e) => e.toJson()).toList(),
      'stakeCurrency': _$StakeCurrencyEnumMap[instance.stakeCurrency],
      'currency': instance.currency,
      'exchange': _$ExchangeEnumMap[instance.exchange],
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

const _$StakeCurrencyEnumMap = {
  StakeCurrency.USDT: 'USDT',
  StakeCurrency.BTC: 'BTC',
};

const _$ExchangeEnumMap = {
  Exchange.BINANCE: 'BINANCE',
};
