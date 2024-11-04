class PredikatControl {
  String getPredikat(int nilai) {
    if (nilai >= 85 && nilai <= 100) {
      return 'A';
    } else if (nilai >= 70 && nilai <= 84) {
      return 'B';
    } else if (nilai >= 55 && nilai <= 69) {
      return 'C';
    } else if (nilai >= 0 && nilai <= 54) {
      return 'D';
    } else {
      return 'Nilai tidak valid';
    }
  }
}
