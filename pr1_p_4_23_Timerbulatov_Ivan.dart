
void main()
{

  String fio = "Тимербулатов Иван Михайлович";
  print("ФИО - ${fio}");

  int age = 18;
  print("Возвраст - ${age}");

  String gender = "Мужской";
  print("Пол - ${gender}");

  String numberGroup = "П-4-23";
  print("Номер группы - ${numberGroup}");

  String placeStudy = "МПТ (Московский Приборостроительный Техникум)";
  print(placeStudy);

  List<String> languageProgrammig = ["c#"];
  print("Языки которые я более менее знаю: ${languageProgrammig[0]}");

  print('*' * 100);


  String typeData = """
числа (int, double);
строки (String);
логические значения (bool);
списки (List);
записи (Record);
множества (Set);
таблицы или проще говоря карты, ключ-значения (Map);
руны (Rune);
символы (Symbol);
значение null (null)
""";

typeData.trim();

print("Конспект по всем типам: ${'\n'}${typeData}");
 

print("Слово Rune:");
print((typeData.contains("Rune")) ? "Есть" : "Отсуствует");
 print('*' * 100);


languageProgrammig.addAll(["python", "java", "c++"]);


Set<String> setLanguageProgramming = Set<String>.from(languageProgrammig);
setLanguageProgramming.addAll(languageProgrammig);


print("Языки, которые я знаю и которые я хочу изучить:");

for (var lang in languageProgrammig)
{
  print(lang);
}

print("*" * 100);
  

print("""
Использованные переменные:
fio
age
gender
numberGroup
placeStudy
languageProgrammig
typeData
setLanguageProgramming
""");
}
