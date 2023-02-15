import 'dart:convert';
import 'dart:io';

String _base = "test/fixtures/";

_read(String name) =>
    json.decode(File("$_base${name}_response.json").readAsStringSync());

class FixedReader {
  static validateLink() => _read("validate_link");
}
