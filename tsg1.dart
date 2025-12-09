import 'dart:io';

  const String nama = "Nabila Nurul Alifah";
  const String nim = "103012500236";
  const int tahunlahir = 2007;
  const String jeniskelamin = "Perempuan";
  const String kewarganegaraan = "Indonesia";
  const String statusmahasiswa = "Mahasiswa Semester 1";

int hitungumur(int tahunlahir) {
  const int tahunskrng = 2025;
  return tahunskrng - tahunlahir;
}

void profile ({
  required String nama,
  required String nim,
  required int tahunlahir,
  required int umur,
  required String jeniskelamin,
  required String kewarganegaraan,
  required String statusmahasiswa,
}) {
  print("=============================================");
  print("           D A T A   P R O F I L E           ");
  print("=============================================");
  print("Nama Lengkap        = $nama");
  print("NIM                 = $nim");
  print("---------------------------------------------");
  print("Tahun Kelahiran     = $tahunlahir");
  print("Umur (Tahun 2025)   = $umur tahun");
  print("---------------------------------------------");
  print("Jenis Kelamin       = $jeniskelamin");
  print("Kewarganegaraan     = $kewarganegaraan");
  print("Status Mahasisw     = $statusmahasiswa");
  print("=============================================\n");
}

void main(){

  const String usnbenar = "Rifa";
  final int passbenar = 236;
  var attempts = 3;

  print("===== Program Log-in Profile Sederhana =====\n");

  // user diberikan kesempatan attempts sebanyak 3 kali
  // apabila usn dan pin yang dimasukkan salah, maka attemps tersisa i - 1

  for (attempts = 3; attempts > 0; attempts--){

    stdout.write("Masukkan Username: ");
    String name = stdin.readLineSync()!;

    stdout.write("Masukkan Password (3 angka): ");
    int pass = int.parse(stdin.readLineSync()!);

      if (name == usnbenar && pass == passbenar) {
          print("Selamat datang $name!\n");
          profile(
            nama: nama, 
            nim: nim, 
            tahunlahir: tahunlahir, 
            umur: hitungumur(tahunlahir), 
            jeniskelamin: jeniskelamin,
            kewarganegaraan: kewarganegaraan, 
            statusmahasiswa: statusmahasiswa
          ); 
          return;

      } else if (name != usnbenar && pass != passbenar) {
        print("Username dan Password Salah!\n");
      } else if (name != usnbenar) {
        print("Username Salah!\n");
      } else if (pass != passbenar) {
        print("Password Salah!\n");
      } else {
        print("Inpun tidak valid!\n");
      }
    print("Sisa percobaan: ${attempts - 1}\n");
  }
}