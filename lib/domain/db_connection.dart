abstract interface class DbConnection<T> {
  int get schemaVersion;
  Future<T> open();
  Future<T> close();
}
