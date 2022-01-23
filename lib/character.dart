class character {
  ///character merupakan class parent/superClass
  int _healtPoint;

  int get healtPoint => _healtPoint;

  // Validasi healtPoint agar tidak bernilai negatif atau dibawah 10
  set healtPoint(int value) {
    if (value < 0) {
      value = value * -1;
    }
    _healtPoint = value;

    if (value < 10) {
      value = 20;
    }
    _healtPoint = value;
  }
}
/*
 keutungan Inheritance
 1. proese pengetikan lebih sedikit
 2. lebih tertata
 3. kode yang ditulis minim kesalahan

 */