import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'held_item.g.dart';

/// {@template held_item}
/// Held Item Model
/// {@endtemplate}
class HeldItem extends Equatable {
  /// {@macro held_item}
  const HeldItem({
    required this.item,
    required this.version_details,
  });

  /// Creates an instance of [HeldItem] from a [Map]
  factory HeldItem.fromJson(Map<String, dynamic> json) =>
      _$HeldItemFromJson(json);

  /// Creates a [Map] from an instance of [HeldItem]
  Map<String, dynamic> toJson() => _$HeldItemToJson(this);

  /// Item
  final NameUrl item;

  /// Version Details
  final List<VersionDetail> version_details;

  @override
  List<Object> get props => [
        item,
        version_details,
      ];
}
