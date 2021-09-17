import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

//HINT: https://codelabs.developers.google.com/codelabs/google-maps-in-flutter#4

@JsonSerializable()
class Account {

  final dynamic id;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final double balance;

  Account({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.balance,
  });

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

