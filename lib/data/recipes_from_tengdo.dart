import 'package:simple_recipe_app/models/recipe.dart';

const recipes = [
Category.appetizers('Rækjufat:
1	franskbrauð í teningum
300 g.	majones
1 dós	sýrður rjómi (lítil dós)
300 g.	rækjur
½-1	paprika
2	tómatar
½	gúrka
púrrulaukur
½ dós	ananaskurl
Majónesi og sýrðum rjóma hrært saman.  Brauði og ananas  bætt útí, síðan restinni. Sett í skál
og kælt.'
],
),

const recipes = [
Category.mainCourses('Indverskur lambapottur:'
'1,8 kg.	úrbeinað lambakjöt, skorið í bita og brúnað á pönnu.
2 msk	smjör
1	uxahalasúpa
5 tsk.	karrý (Mild Madras Rajah)
2	laukar, smátt skornir
½ dós	mangó chutney
1 dós 	sveppir
3-4	gulrætur
2	paprikur
1 peli	rjómi
smjörlíkið brætt, karrýinu bætt útí og laukurinn látinn malla í.  Súpan, sem er gerð skv. leiðbeiningum á pakkanum, sett saman við, ásamt smátt skornu grænmetinu.
Kjötinu bætt í og látið malla í ca. 30 mínútur.  Rjóminn soðinn með síðustu 15 mínúturnar.
Borið fram með brauði, salati og hrísgrjónum.'
'
],
),

String removeIcelandicLetters(String input) {
// Define a map to replace Icelandic characters with their ASCII equivalents
Map<String, String> icelandicMap = {
'á': 'a',
'é': 'e',
'í': 'i',
'ó': 'o',
'ú': 'u',
'ý': 'y',
'þ': 'th',
'æ': 'ae',
'ö': 'o',
'ð': 'd',
'Á': 'A',
'É': 'E',
'Í': 'I',
'Ó': 'O',
'Ú': 'U',
'Ý': 'Y',
'Þ': 'Th',
'Æ': 'Ae',
'Ö': 'O',
'Ð': 'D',
};

// Iterate through the string and replace Icelandic characters
for (var entry in icelandicMap.entries) {
input = input.replaceAll(entry.key, entry.value);
}

return input;




