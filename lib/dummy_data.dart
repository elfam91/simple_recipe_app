import 'package:simple_recipe_app/modal/recipe.dart';

// Method to remove Icelandic letters
String removeIcelandicLetters(String input) {
  if (input == null || input.isEmpty) {
    return input;
  }

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

  for (var entry in icelandicMap.entries) {
    input = input.replaceAll(entry.key, entry.value);
  }

  return input;
}

const recipes = [
  Recipe(
    title: removeIcelandicLetters('Kjötsúpa'), // Apply the method to the title
    imageUrl: 'https://example.com/kjotsupa.jpg', // Use a real image URL
    duration: 90,
    ingredients: [
      '1 kg lambakjöt (lamb meat)',
      '2 stórar kartöflur (2 large potatoes)',
      '2 gulrætur (2 carrots)',
      '1 laukur (1 onion)',
      '1 sellerí (celery)',
      '1 teskje timjan (1 tsp thyme)',
      'Salt og pipar eftir smekk (Salt and pepper to taste)',
      'Vandlega hreinsuð vatn (Fresh water to cover ingredients)'
    ],
    steps: [
      '1. Settu lambakjötið í pott og bættu vatni út í.',
      '2. Láttu suðu koma upp og fjarlægðu froðu.',
      '3. Bættu kryddum, lauk og sellerí í pottinn.',
      '4. Skerið kartöflur og gulrætur í bita og bættu þeim í pottinn.',
      '5. Láttu allt malla við lágan hita í 1-1,5 tíma.',
      '6. Smakkaðu til með salti og pipar.',
      '7. Berið fram heitt með brauði.'
    ],
  ),
  Recipe(
    title: removeIcelandicLetters('Pönnukökur'), // Apply the method to the title
    imageUrl: 'https://example.com/pannukokur.jpg', // Use a real image URL
    duration: 30,
    ingredients: [
      '1 bolla hveiti (1 cup flour)',
      '2 msk sykur (2 tbsp sugar)',
      '1/2 teskje lyftiduft (1/2 tsp baking powder)',
      '1/4 teskje salt (1/4 tsp salt)',
      '2 bollar mjólk (2 cups milk)',
      '2 egg (2 eggs)',
      '1 msk smjör (1 tbsp butter), brætt (melted)',
      'Sykur og kanill til að strá yfir (Sugar and cinnamon to sprinkle on top)',
      'Smjör fyrir steikinguna (Butter for frying)'
    ],
    steps: [
      '1. Blandið saman hveiti, sykur, lyftiduft og salt í skál.',
      '2. Hrærið saman mjólk og egg í annarri skál.',
      '3. Bætið blöndunni saman við þurrefnin og hrærið þar til deigið er slétt.',
      '4. Hitið pönnu á miðlungs hita og bætið smjöri á pönnuna.',
      '5. Hellið deigi á pönnuna og steikið pönnukökur í 2-3 mínútur á hvorri hlið.',
      '6. Stráið sykri og kanil yfir pönnukökurnar þegar þær eru tilbúnar.',
      '7. Berið fram með rjóma eða sultu.'
    ],
  ),
];

ingredients: [
removeIcelandicLetters('1 kg lambakjöt (lamb meat)'),
removeIcelandicLetters('2 stórar kartöflur (2 large potatoes)'),
// ... (apply to all ingredients)
],
steps: [
removeIcelandicLetters('1. Settu lambakjötið í pott og bættu vatni út í.'),
removeIcelandicLetters('2. Láttu suðu koma upp og fjarlægðu froðu.'),
// ... (apply to all steps)
],