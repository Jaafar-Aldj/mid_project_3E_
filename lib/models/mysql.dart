import 'dart:async';
import 'package:mysql1/mysql1.dart';

//TODO : sql connection not working

Future sql() async {
  // Open a connection
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'mashwerni',
      password: ''));

  // Insert some data
  var result = await conn.query(
      'INSERT INTO `email`(`email`, `password`) VALUES (?, ?)',
      ['bob@bob.com', 'dv']);
  print('Inserted row id=${result.insertId}');

  // // Query the database using a parameterized query
  // var results = await conn.query(
  //     'select name, email, age from users where id = ?', [result.insertId]);
  // for (var row in results) {
  //   print('Name: ${row[0]}, email: ${row[1]} age: ${row[2]}');
  // }

  // // Update some data
  // await conn.query('update users set age=? where name=?', [26, 'Bob']);

  // // Query again database using a parameterized query
  // var results2 = await conn.query(
  //     'select name, email, age from users where id = ?', [result.insertId]);
  // for (var row in results2) {
  //   print('Name: ${row[0]}, email: ${row[1]} age: ${row[2]}');
  // }

  // Finally, close the connection
  await conn.close();
}