class LoginResponse {
  final int status;
  final Data data;
  final String message;
  final int statusCode;

  const LoginResponse({
    required this.status,
    required this.data,
    required this.message,
    required this.statusCode,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      status: json['status'],
      data: json['data'],
      message: json['message'],
      statusCode: json['statusCode'],
    );
  }
}

class Data {
  final String coreId;
  final String partyId;
  final String gender;
  final String name;
  final String age;

  const Data({
    required this.coreId,
    required this.partyId,
    required this.gender,
    required this.name,
    required this.age,
  });
}
