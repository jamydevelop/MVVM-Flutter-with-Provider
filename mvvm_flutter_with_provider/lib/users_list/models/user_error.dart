import 'dart:convert';

// JSON utilities
UserError userErrorFromJson(String str) => UserError.fromJson(json.decode(str));
String userErrorToJson(UserError data) => json.encode(data.toJson());

class UserError {
  UserError({
    required this.code,
    required this.message,
  });

  final int code;
  final String message;

  // Factory constructor for creating from JSON
  factory UserError.fromJson(Map<String, dynamic> json) {
    return UserError(
      code: json["code"] ?? 0, // provide default if null
      message: json["message"] ?? "Unknown error",
    );
  }

  // Convert instance to JSON
  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
