import 'package:Inheritance/monster.dart';

// class MonsterKecoa merupakan turunan dari class monster
// class turunan akan mempunyai sifat dan perilaku (properti/field dan method) dari class induk nya.
// didalam class MonsterKecoa tidak ada method healpoint, namun si MonsterKecoa dapat mempunyai healtPoint
// karena class MonsterKecoa merupakan turunan/anak dari class Monster
// didalam class anak , juga dapat mempunyai method sendiri , yang tidak dipunyai oleh class induk
// seperti method fly , yang hanya dipunyai oleh class MonsterKecoa
class MonsterKecoa extends Monster {
  String fly() => 'Syuuung...Syuuung...Syuuung';
}
