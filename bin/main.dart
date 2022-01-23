import 'dart:io';
import 'package:Inheritance/character.dart';
import 'package:Inheritance/hero.dart';
import 'package:Inheritance/monster.dart';
import 'package:Inheritance/monster_ubur_ubur.dart';
import 'package:Inheritance/monster_kecoa.dart';

void main(List<String> arguments) async {
  // miya , layla, lord, kecoa, dan uburUbur merupakan "nickname" saja, bukan sebuah objek.
  Hero miya = Hero(); // hero() adalah sebuah objek dan yang lain nya juga objek
  var layla = Hero();
  var lord = Monster();
  var kecoa = MonsterKecoa();
  var uburUbur = MonsterUburUbur();

  //meminta inputan healtPoint untuk hero dan monster
  stdout.write('Masukan HealtPoint layla :');
  layla.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan HealtPoint miya :');
  miya.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan healtPoint lord :');
  lord.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan HealtPoint kecoa :');
  kecoa.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan healtPoint uburUbur :');
  uburUbur.healtPoint = int.tryParse(stdin.readLineSync());

  print('Menampilkan healpoint yang sudah divalidasi');
  print('healtPoint lalya : ' + layla.healtPoint.toString());
  print('healtPoint miya : ' + miya.healtPoint.toString());
  print('healtPoint lord : ' + lord.healtPoint.toString());
  print('healtPoint kecoa : ' + kecoa.healtPoint.toString());
  print('healtPoint uburUbur : ' + uburUbur.healtPoint.toString());

  print('------------------------------------------');
  print('hero layla membunuh monters :' + layla.killAMonster());
  print('monster kecoa membunuh hero :' + lord.eatHuman);
  print('------------------------------------------');
  print('Monster Kecoa Fly :' + kecoa.fly());
  print('Monster uburUbur Berenang:' + uburUbur.swim());
  print('Monster kecoa membunuh hero :' + kecoa.eatHuman);
  print('Monster uburUbur membunuh hero :' + uburUbur.eatHuman);

  print('------------------------------------------');

  // List <character> kumpulanMonsters = []; , penulisan list , dart menyarankan menggunakan var, seperti dibawah
  // class  juga bisa dijadikan type didalam sebuah list
  var kumpulanMonsters = <character>[];
  kumpulanMonsters.add(MonsterKecoa());
  kumpulanMonsters.add(Monster());
  kumpulanMonsters.add(MonsterKecoa());
  kumpulanMonsters.add(MonsterUburUbur());
  kumpulanMonsters.add(Hero());

// u hanya sebuah parameter anonymous , atau penyebutan nama pada suatu isi didalam List.
  for (Monster u in kumpulanMonsters) {
    if (u is MonsterUburUbur) {
      //is adalah penunjuk bahwa apakah ubur ubur  adl MonsterUburubur
      print(u.swim());
    }
  }

  print((uburUbur as MonsterUburUbur).swim());
  // as adl penujuk bahwa  / penegasan ubur ubru merupakan jenis monterUburuUbur
}
