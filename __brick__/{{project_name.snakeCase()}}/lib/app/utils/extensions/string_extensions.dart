extension UriParsing on String {
  Uri toUri() {
    return Uri.parse(this);
  }
}
