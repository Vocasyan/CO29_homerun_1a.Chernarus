//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"2017 год. Республика Черноруссия. Страна поделена на две части в результате ожесточенной гражданской войны. Подобные конфликты всегда служили отличной кормушкой для ЧВК RAVEN и данная ситуация не исключение. В данные момент правительство республики экстренно нуждается в нескольких десятках современных пзрк.  К несчастью 15 минут назад на наш конвой,во главе с нашим эмиссаром,  который должен был доставить несколько ящиков этого оружия было совершено нападение, почти сразу связь с ним была потеряна. Вам приказано немедленно выдвинуться в сектор, где произошло нападение, найти и эвакуировать военного эмиссара, военный груз и других выживших.  При невозможности эвакуации груза-уничтожить"
END

TOPIC("А. Враждебные силы:")
"до 2 взводов повстанцев<br />Несколько вертолётов МИ-171"
END

TOPIC("Б. Дружественные силы:")
"3 отряда ЧВК"
END

TOPIC("II. Задание:")
"1. Найти ящик с ценными образцами<br />2. Найти эмиссара компании<br />3. Доставить ящик и VIP в безопасную зону"
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"2x Armored Land Rover<br />1x Land rover<br />2x SUV<br />1x Offroad<br />1x M977A4<br />2x KA-60<br />2x UH-60M"
END

TOPIC("V. Сигналы:")
"PL NET 50<br />1'1 - SR CH 1<br />1'2 - SR CH 2"
END

TOPIC("VI. Замечания:")
"Будьте бдительны зачищая дома, там могут быть выжившие"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Завершать миссию когда VIP(синий Офицер) и ящик(Box) будет на базе<br />Проследить за вертолётами, чтобы они взлетели"
END
};

ADD_TOPICS