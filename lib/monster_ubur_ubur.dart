import 'package:Inheritance/monster.dart';

// class MonsterUburUbur merupakan turunan dari class monster
// class turunan akan mempunyai sifat dan perilaku (properti/field dan method) dari class induk nya.
// didalam class MonsterUburUbur tidak ada method healpoint, namun si monterUburuUbur dapat mempunyai healtPoint
// karena class MonterUburuUbur merupakan turunan/anak dari class Monster
// didalam class anak , juga dapat mempunyai method sendiri , yang tidak dipunyai oleh class induk
// seperti method swim , yang hanya dipunyai oleh class MonsterUburUbur
class MonsterUburUbur extends Monster {
  String swim() => 'Woooshh...Woooshh...Woooshh';
}
