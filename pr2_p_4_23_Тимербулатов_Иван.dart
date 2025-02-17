import 'dart:io';

void main(){
    
    var time = DateTime.now().toString();


    File booksFile = File('D:\\flutterCode\\pr2_p_4_23_Тимербулатов_Иван\\books\\${time.substring(0,10)}.txt');
    Directory directory = Directory("D:\\flutterCode\\pr2_p_4_23_Тимербулатов_Иван\\books");

    if(directory.existsSync()){}
    else
    {
        directory.createSync();
    }

    if(booksFile.existsSync()){}
    else
    {
        booksFile.createSync();
    }

    stdout.write("Введите название книги: ");
    String? titleBook = stdin.readLineSync();

    stdout.write("Введите автора книги: ");
    String? authorBook = stdin.readLineSync();

    stdout.write("Введите год издания: ");
    int? yearOfPublication = int.tryParse(stdin.readLineSync() ?? "");

    var book = <String>["${authorBook} - ${titleBook} - ${yearOfPublication}"];

    booksFile.writeAsStringSync(book.join(" ") + "\n", mode: FileMode.append);

}