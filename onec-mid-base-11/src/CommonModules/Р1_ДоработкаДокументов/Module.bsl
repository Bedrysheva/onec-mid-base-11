#Область ПрограммныйИнтерфейс
//Процедура выводит на форму документов поле "контактное лицо"
//
// Параметры:
//   Форма - ФормаКлиентскогоПриложения - форма, в которой необходимо разместить поле "Контактное лицо".
Процедура ВывестиПолеКонтактноеЛицо(Форма) Экспорт
// ++ Бедрышева Н.В. Задача Выведение поля "Контактное лицо" (09.02.2025) 
	ИмяФормы = Форма.ИмяФормы; 	
	Если Форма.Элементы.Найти("КонтактноеЛицо") = Неопределено Тогда
		Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" ИЛИ
		 	 	ИмяФормы =  "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" ИЛИ 
		 		ИмяФормы =  "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента"  Тогда
		 			
						НовыйЭлемент = Форма.Элементы.Добавить("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
						НовыйЭлемент.ПутьКДанным = "Объект.Р1_КонтактноеЛицо"; 
						НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
						НовыйЭлемент.Заголовок = "КонтактноеЛицо";
						
		ИначеЕсли ИмяФормы =  "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" ИЛИ 
		 			ИмяФормы =  "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда
		 			
		 				СледующийЭлемент = Форма.Элементы.Найти("СуммаДокумента");
						НовыйЭлемент = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"), , СледующийЭлемент);
						НовыйЭлемент.ПутьКДанным = "Объект.Р1_КонтактноеЛицо"; 
						НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
						НовыйЭлемент.Заголовок = "КонтактноеЛицо";		 								
		КонецЕсли;				
	КонецЕсли;
// -- Бедрышева Н.В. Задача Выведение поля "Контактное лицо" (09.02.2025) 

КонецПроцедуры
//конец области Программный Интерфейс	

#КонецОбласти
