class User {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String password;

  const User(
      {required this.id,
      required this.email,
      required this.first_name,
      required this.last_name,
      required this.password});
}
