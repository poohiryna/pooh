# frozen_string_literal: true

require 'telegram/bot'

TOKEN = '1951505972:AAG3CIfN-nTrSXjbSB9HbL900N7lkk5X52Q'

Telegram::Bot::Client.new(TOKEN).run do |bot|
  bot.listen do |message|
    if message.chat
      case message
      when Telegram::Bot::Types::Message
        case message.text
        when 'Пух, а кто тебя сделал?'
          answers = ['Выполз из @kartseva_iryna', 'Я внебрачный сын @kartseva_iryna', 'мать @kartseva_iryna, отец @dmitrybereza']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when '/help'
          answers = ['не хочу']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /пух/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Хантер х хантер, лучшее аниме', 'Ты пиздабол', 'Донбасс Сила', 'Падай на четвереньки и ползи полировать мои ножки до состояния блеска', 'Разпетушнулся', 'Пк для пидоров', 'Ебаный', 'Айфоны для пидоров', 'Уёбак с тапаром', 'подрочить хочешь?', 'Нам похуй', 'Ты мне блять хуйню не заливай', 'Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Донбасс/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Илюха учу жизни', 'Я в игры не играю', 'Пидорнулся', 'Пиздак завалил', 'Ебать рова бежит', 'Айфоны для пидоров', 'Голодная, ща поем и снова буду тебя игнорить', 'Мальчик пи*ар', 'Заскамили', 'Донбасс Сила', 'подрочить хочешь?', 'Главное правильно дырки сделать', 'Нам похуй', 'Ты мне блять хуйню не заливай', 'Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Украина/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Нам похуй', 'Ебаный', 'Донбасс Сила', 'Я в игры не играю', 'Айфоны для пидоров', 'вот такой я консолехейтер', 'Енот хуйня и точка', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /ч/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Нам похуй', 'вот такой я консолехейтер', 'дед инсайды', 'Мальчик пи*ар', 'Пидорнулся', 'Голодная, ща поем и снова буду тебя игнорить','Главное правильно дырки сделать', '- уважение к тебе', 'Уёбак с тапаром', 'Главное правильно дырки сделать', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай', 'Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /мать/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Где гроши сука влад блять', 'Пидорнулся', 'Хантер х хантер, лучшее аниме', 'пк для пидоров', 'Теперь все новости с двача будем репостить?', 'Разпетушнулся', 'Я в игры не играю', 'А как по другому мне играть в твою гейскую кс', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /нюдсы/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Тут боты ссорятся', 'вот такой я консолехейтер', 'Айфоны для пидоров', 'Мальчик пи*ар', 'Пидорнулся', 'Ебаный', 'Главное правильно дырки сделать', 'Енота можна полечить', 'Хантер х хантер', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /ты/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Пока', 'Тут боты ссорятся', 'Енота можна полечить', 'Разпетушнулся', 'Голодная, ща поем и снова буду тебя игнорить','В фиксиках можно узнать большое чем в школе', 'Хантер х хантер, лучшее аниме', 'Хантер х хантер', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /да/
          answers = ['ПИЗДА', 'ПОебалуНА', 'манда', 'Уебать бы тебе чем-нибудь тяжелым', 'Мальчик пи*ар', 'Я в игры не играю', 'Пиздак завалил', 'обезьяны шарят в развлечениях', 'Уёбак с тапаром', 'отвечает тупорылая пизда']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /нет/
          answers = ['Вот это топовый мульт', 'Тут боты ссорятся', 'Пошел н а х у й', 'Мальчик пи*ар', 'вот такой я консолехейтер', 'Разпетушнулся', 'Пидорнулся', 'А как по другому мне играть в твою гейскую кс', 'А почему один из вас не закроет ебало?', 'Да', 'Скажи Да', 'иди в пизду', 'блять, теперь придумывать нужно что-то', 'Значит пошел нахуй', 'лучше скажи Да', 'Ахуенно', 'Бл, короче', 'Шма троллит вас', 'Ну и п#д0%@ ответ', 'Он войну хочет устроить', 'Когда муркает кит - это пиздато', 'Украинцы жгут', 'Я за Украину']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /или/
          answers = ['Я в игры не играю', 'вот такой я консолехейтер', 'Голодная, ща поем и снова буду тебя игнорить', 'Ебать рова бежит', 'пк для пидоров', 'Падай на четвереньки и ползи полировать мои ножки до состояния блеска', 'Пиздак завалил', 'Теперь все новости с двача будем репостить?','Да или Нет?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /dick/
          answers = ['Иди нахуй', '+4 см в члене', 'Получается Илья что ты гей', 'Мальчик пи*ар', 'Голодная, ща поем и снова буду тебя игнорить', 'Я в игры не играю', 'Ебаный', 'Пидорнулся', '-22 см радуйся', '- уважение к тебе', 'Дима вас слушает', 'хватит оргазмировать', 'Сука Артем', '-10 см в члене', 'Где гроши сука влад блять', 'Это примерно, хз я же не лизун']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /top/
          answers = ['Иди нахуй', 'Получается Илья что ты гей', '- уважение к тебе', 'Дима вас слушает', 'вот такой я консолехейтер', 'Теперь все новости с двача будем репостить?', 'Разпетушнулся', 'Чел умер', 'хватит оргазмировать', 'Сука Артем', 'Уёбак с тапаром', '-10 см в члене', 'Где гроши сука влад блять', 'Это примерно, хз я же не лизун']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /лизун/
          answers = ['Здоровые члены', 'Стрелку метнул,  хуйца соснул', 'Ну тогда не спиздел', 'дед инсайды', 'Голодная, ща поем и снова буду тебя игнорить', 'Мальчик пи*ар', 'Главное правильно дырки сделать', 'Чел умер', 'Не пизди', 'Тебе все нравилось', 'Дима лизун', 'Это примерно, хз я же не лизун']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /приват/
          answers = ['Я в игры не играю', 'Разпетушнулся', 'Мальчик пи*ар', 'Пидорнулся', 'вот такой я консолехейтер', 'Айфоны для пидоров', 'Падай на четвереньки и ползи полировать мои ножки до состояния блеска', 'Привет, приват 900 гривен. Видео и фото. Более 600 публикаций']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /енот/
          answers = ["чпокнул #{message&.chat&.first_name}", 'Кстати он реально гей', 'Мальчик пи*ар', 'Теперь все новости с двача будем репостить?', 'Пиздак завалил', 'Голодная, ща поем и снова буду тебя игнорить', 'Чел умер', 'Разпетушнулся', 'Хантер х хантер, лучшее аниме', 'Я в игры не играю', 'А как по другому мне играть в твою гейскую кс', 'Уёбак с тапаром', 'Нам похуй', 'Енот молодец', 'Тут боты ссорятся', 'За енота респект', 'Ослепла от моего члена?', 'Ебаный бот', 'енот нормальный', 'Шутки шутками, но в попку то больно', 'геев не люблю', 'Жук тётя шлюха', 'не хочу в попку', 'енот пидр']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /он/
          answers = ["чпокнул #{message&.chat&.first_name}", 'Где гроши сука влад блять', 'Кстати он реально гей', 'Ебать рова бежит', 'Пидорнулся', 'вот такой я консолехейтер', 'Главное правильно дырки сделать', 'Закрой поддувало', 'Клоун ты', 'Нам похуй', 'Ослепла от моего члена?', 'Ебаный бот', 'енот нормальный', 'Шутки шутками, но в попку то больно', 'геев не люблю', 'Жук тётя шлюха', 'не хочу в попку', 'енот пидр']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /гей/
          answers = ['Гей', 'Нам похуй', 'С ботом играть в игры - это нужно быть пид*лиз*м', 'Пидорнулся', 'Голодная, ща поем и снова буду тебя игнорить', 'Теперь все новости с двача будем репостить?', 'А как по другому мне играть в твою гейскую кс', 'Я в игры не играю', 'Тут боты ссорятся', 'Лобок побрей', 'Пиздализ', 'Тут нужен семейный врач', 'Слава Украине', 'Слава нации', 'Ебальник закрой', 'Ебани разок', 'Ты бот? LoL', 'Ебать', 'Донбасс', 'скинь член']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /лол/
          answers = ['Гей', 'Нам похуй', 'Закрой поддувало', 'Мальчик пи*ар', 'С ботом играть в игры - это нужно быть пид*лиз*м', 'Голодная, ща поем и снова буду тебя игнорить', 'Ебаный', 'Разпетушнулся', 'Лобок побрей', 'Тут нужен семейный врач', 'Слава Украине', 'Слава нации', 'Ебальник закрой', 'Ебани разок', 'Ты бот? LoL', 'Ебать', 'Донбасс', 'скинь член']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /член/
          answers = ['Ботяра ты', 'Где гроши сука влад блять', 'пк для пидоров', 'Нам похуй', 'Закрой поддувало', 'Ебать рова бежит', 'Ща разберёмся', 'Тут боты ссорятся', 'Голодная, ща поем и снова буду тебя игнорить', 'вот такой я консолехейтер', 'Пидорнулся', 'Господи мне кажется я сейчас блевать буду', 'Ебал я тебя, Шма', '@dmitrybereza, сскинь письку', '@dmitrybereza жук, скинь пенис мне', 'Жук он один, а вас много', 'Пж я пытаюсь перестать говорить маты', 'Я в ахуе', 'Ха, всем сосать', 'Иди нахуй чертила', 'Чи на', 'Та ты лох', 'Нетушки']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /бля/
          answers = ['Ты не неси ересь', 'Закрой поддувало', 'Чел умер', 'Главное правильно дырки сделать', 'Теперь все новости с двача будем репостить?', 'Разпетушнулся', 'А как по другому мне играть в твою гейскую кс', 'Клоун ты', 'Ща разберёмся', 'Нам похуй', 'Безкультурный']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /блять/
          answers = ['Ты не неси ересь', 'Закрой поддувало', 'Тут боты ссорятся', 'Главное правильно дырки сделать', 'Айфоны для пидоров', 'Пидорнулся', 'Пиздак завалил', 'Голодная, ща поем и снова буду тебя игнорить', 'вот такой я консолехейтер', 'Нам похуй', 'Клоун ты', 'Уёбак с тапаром', 'Безкультурный']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /нихуя/
          answers = ['пк для пидоров', 'Это енот письку помыл', 'Закрой поддувало', 'Нам похуй', 'Тут боты ссорятся', 'дед инсайды', 'Теперь все новости с двача будем репостить?', 'Ща разберёмся', 'Пидорнулся', 'Мат для лохов', 'Здоровья парню слева', 'Аоаоао, бесят эти боты', 'Бот остановлен', 'Царство небесное', 'Влад сука', 'Роботы хули', 'Интимные подробности при себе оставляйте', 'РПГ - игра про ядерную войну']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /хуй/
          answers = ['Это енот письку помыл', 'Нам похуй', 'Мальчик пи*ар', 'Закрой поддувало', 'Уёбак с тапаром', 'Разпетушнулся', 'Главное правильно дырки сделать', 'А как по другому мне играть в твою гейскую кс', 'Нет 50 грн', 'Тут боты ссорятся', 'Ща разберёмся', 'Мат для лохов', 'Здоровья парню слева', 'Бот остановлен', 'Царство небесное', 'Влад сука', 'Роботы хули', 'Интимные подробности при себе оставляйте', 'РПГ - игра про ядерную войну']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /писька/
          answers = ['Это енот письку помыл', 'Нет 50 грн', 'Клоун ты', 'Тут боты ссорятся', 'Падай на четвереньки и ползи полировать мои ножки до состояния блеска', 'Ебать рова бежит', 'Мат для лохов', 'Здоровья парню слева', 'Пидорнулся', 'Бот остановлен', 'Царство небесное', 'Влад сука', 'Роботы хули', 'Интимные подробности при себе оставляйте', 'РПГ - игра про ядерную войну']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Доброе/
          answers = ['Это енот письку помыл', 'Ты псих ебаный', 'Мальчик пи*ар', 'Пиздак завалил', 'Я в игры не играю', 'пк для пидоров', 'Уёбак с тапаром', 'Голодная, ща поем и снова буду тебя игнорить', 'вот такой я консолехейтер', 'Разпетушнулся', 'Она все равно со мной не поиграет', 'Нет 50 грн', 'Тут боты ссорятся', 'Мат для лохов', 'Здоровья парню слева', 'Бот остановлен', 'Царство небесное', 'Влад сука', 'Роботы хули', 'Интимные подробности при себе оставляйте', 'РПГ - игра про ядерную войну']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /стим/
          answers = ['1238511303 - код', 'Я в игры не играю', 'Нет 50 грн']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /фортнайт/
          answers = ['пк для пидоров', 'Ник poohiryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /форт/
          answers = ['Пиздак завалил', 'Ник poohiryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /кс го/
          answers = ['Мальчик пи*ар', 'Бля ну го', 'Ща разберёмся', 'Нет 50 грн', 'Я в игры не играю', 'дед инсайды', 'Айфоны для пидоров', 'вот такой я консолехейтер', 'Ты уебок совсем?', 'Ебаный', 'Пидорнулся', 'Разпетушнулся', 'Уёбак с тапаром', 'Давай через 30 мин', 'код A9KHC-U5VG  добавляйся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /кс/
          answers = ['Бля ну го', 'Давай через 30 мин', 'А как по другому мне играть в твою гейскую кс', 'Разпетушнулся', 'Теперь все новости с двача будем репостить?', 'вот такой я консолехейтер', 'код A9KHC-U5VG  добавляйся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)    
         when /го/
          answers = ['Бля ну го', 'Давай через 30 мин','Мальчик пи*ар', 'Уёбак с тапаром', 'пк для пидоров', 'вот такой я консолехейтер', 'Я в игры не играю', 'Ты уебок совсем?', 'Ебаный', 'Пидорнулся', 'Разпетушнулся', 'код A9KHC-U5VG  добавляйся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /слив/
          answers = ['Слив? пошел ты нахуй', 'Голодная, ща поем и снова буду тебя игнорить', 'Ебать рова бежит', 'Падай на четвереньки и ползи полировать мои ножки до состояния блеска😋😇', 'Главное правильно дырки сделать', 'Клоун ты', 'Ща разберёмся', 'Схуяли?', 'Какие сливы? Я абрикосы люблю', 'Мальчик пи*ар', 'Вот бот пиздабол']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Слив/
          answers = ['Слив? пошел ты нахуй', 'С какого это хуя я должна кидать вам слив?', 'Взяли свои бабки и вперед платить мне на онлик', 'Пидорнулся', 'Ща разберёмся', 'Схуяли?', 'Какие сливы? Я абрикосы люблю', 'Вот бот пиздабол']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /слива/
          answers = ['Слив? пошел ты нахуй', 'Голодная, ща поем и снова буду тебя игнорить', 'Пиздак завалил', 'Ты уебок совсем?', 'Нет 50 грн', 'Схуяли?', 'Клоун ты', 'Какие сливы? Я абрикосы люблю', 'Мальчик пи*ар', 'Разпетушнулся', 'Пидорнулся', 'Вот бот пиздабол']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /игры/
          answers = ['А-ну давай скажи во что мне поиграть', 'Уёбак с тапаром', 'Мальчик пи*ар', 'Айфоны для пидоров', 'вот такой я консолехейтер', 'Я в игры не играю', 'Разпетушнулся', 'Ебаный', 'Главное правильно дырки сделать']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /еноту/
          answers = ['Закрой рот', 'Закрой поддувало', 'Шма забань всех', 'Клоун ты', 'Ты уебок совсем?', 'Я в игры не играю','Хантер х хантер, лучшее аниме', 'Пидорнулся', 'Мальчик пи*ар','@dmitrybereza свят!', 'Просвяти', 'Зачем жука трогаешь?', 'ты ему не интересен', 'Это вообще нацизм', 'Напиши лонг стори']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /жук/
          answers = ['Закрой рот', 'Пидар', 'Голодная, ща поем и снова буду тебя игнорить', 'Ты уебок совсем?', 'Хантер х хантер, лучшее аниме', 'Шма забань всех', '@dmitrybereza свят!', 'Просвяти', 'Зачем жука трогаешь?', 'ты ему не интересен', 'Это вообще нацизм', 'Напиши лонг стори']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ира/
          answers = ['Менеджер вас слушает', 'Голодная, ща поем и снова буду тебя игнорить', 'пк для пидоров', 'Пиздак завалил', 'Клоун ты', 'Здоровые члены', 'Ебать рова бежит', 'Айфоны для пидоров', 'Ебаный', 'Хантер х хантер, лучшее аниме', 'Разпетушнулся', 'Мальчик пи*ар', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ир/
          answers = ['Менеджер вас слушает', 'Голодная, ща поем и снова буду тебя игнорить', 'Ты уебок совсем?', 'А как по другому мне играть в твою гейскую кс', 'Здоровые члены', 'дед инсайды', 'Хантер х хантер, лучшее аниме', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Дима/
          answers = ['Менеджер вас слушает', 'Клоун ты', 'Ща разберёмся', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'вот такой я консолехейтер', 'Ты еблан?', 'Главное правильно дырки сделать', 'Я в игры не играю', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Максим/
          answers = ['Менеджер вас слушает', 'Ебаный', 'Чел умер', 'Пидар', 'Хантер х хантер, лучшее аниме', 'Ты уебок совсем?', 'Разпетушнулся', 'Аоаоао, бесят эти боты', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Влад/
          answers = ['Менеджер вас слушает', 'Клоун ты', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Айфоны для пидоров', 'Мальчик пи*ар', 'вот такой я консолехейтер', 'Ты еблан?', 'Пидорнулся', 'Уёбак с тапаром', 'Я в игры не играю', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Коля/
          answers = ['Менеджер вас слушает', 'Чел умер', 'Иди нахер, я сейчас офф', 'Ты уебок совсем?', 'Пошел в пизду Ты', 'Пиздак завалил', 'Ты еблан?', 'Главное правильно дырки сделать', 'Я в игры не играю', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Я/
          answers = ['Менеджер вас слушает', 'Хантер х хантер, лучшее аниме', 'Тут боты ссорятся', 'Ты уебок совсем?', 'Иди нахер, я сейчас офф', 'Ебать рова бежит','Аоаоао, бесят эти боты', 'Пидорнулся', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ты/
          answers = ['Менеджер вас слушает', 'Пидорнулся', 'Клоун ты', 'Иди нахер, я сейчас офф', 'дед инсайды', 'Голодная, ща поем и снова буду тебя игнорить', 'вот такой я консолехейтер', 'Пошел в пизду Ты', 'Разпетушнулся','Ты еблан?', 'Главное правильно дырки сделать', 'Я в игры не играю', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ярослав/
          answers = ['Менеджер вас слушает', 'Кстати он реально гей', 'вот такой я консолехейтер', 'Айфоны для пидоров', 'Иди нахер, я сейчас офф', 'Чел умер', 'Пошел в пизду Ты', 'Ты еблан?', 'Уёбак с тапаром', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ярик/
          answers = ['Менеджер вас слушает', 'пк для пидоров', 'Чел умер', 'Иди нахер, я сейчас офф', 'Кстати он реально гей', 'Пиздак завалил', 'Пошел в пизду Ты', 'Ты еблан?', 'Уёбак с тапаром', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /она/
          answers = ['Менеджер вас слушает', 'Тут боты ссорятся', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Ты уебок совсем?', 'Пиздак завалил', 'Пидорнулся', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /ты/
          answers = ['Менеджер вас слушает', 'Тут боты ссорятся', 'Ебать рова бежит', 'Иди нахер, я сейчас офф', 'Айфоны для пидоров', 'Пидорнулся', 'Разпетушнулся', 'Голодная, ща поем и снова буду тебя игнорить', 'Пошел в пизду Ты', 'Уёбак с тапаром', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        end
      end
    end
  rescue Telegram::Bot::Exceptions::ResponseError
    p 'Упал я '
  end
end