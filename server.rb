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
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Хантер х хантер, лучшее аниме', 'Ты пиздабол', 'Донбасс Сила', 'подрочить хочешь?', 'Нам похуй', 'Ты мне блять хуйню не заливай', 'Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Донбасс/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Илюха учу жизни', 'Заскамили', 'Донбасс Сила', 'подрочить хочешь?', 'Нам похуй', 'Ты мне блять хуйню не заливай', 'Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Украина/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Нам похуй', 'Донбасс Сила', 'Енот хуйня и точка', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /ю/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Нам похуй', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай', 'Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /мать/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Хантер х хантер, лучшее аниме', 'А как по другому мне играть в твою гейскую кс', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /нюдсы/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Тут боты ссорятся', 'Енота можна полечить', 'Хантер х хантер', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /ты/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'Пока', 'Тут боты ссорятся', 'Енота можна полечить', 'В фиксиках можно узнать большое чем в школе', 'Хантер х хантер, лучшее аниме', 'Хантер х хантер', 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /да/
          answers = ['ПИЗДА', 'ПОебалуНА', 'манда', 'Уебать бы тебе чем-нибудь тяжелым', 'обезьяны шарят в развлечениях', 'отвечает тупорылая пизда']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /нет/
          answers = ['Вот это топовый мульт', 'Тут боты ссорятся', 'Пошел н а х у й', 'А как по другому мне играть в твою гейскую кс', 'А почему один из вас не закроет ебало?', 'Да', 'Скажи Да', 'иди в пизду', 'блять, теперь придумывать нужно что-то', 'Значит пошел нахуй', 'лучше скажи Да', 'Ахуенно', 'Бл, короче', 'Шма троллит вас', 'Ну и п#д0%@ ответ', 'Он войну хочет устроить', 'Когда муркает кит - это пиздато', 'Украинцы жгут', 'Я за Украину']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /или/
          answers = ['Да или Нет?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /dick/
          answers = ['Иди нахуй', '-10 см в члене', 'Это примерно, хз я же не лизун']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /лизун/
          answers = ['Здоровые члены', 'Стрелку метнул,  хуйца соснул', 'Ну тогда не спиздел', 'Не пизди', 'Тебе все нравилось', 'Дима лизун', 'Это примерно, хз я же не лизун']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /приват/
          answers = ['Привет, приват 900 гривен. Видео и фото. Более 600 публикаций']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /енот/
          answers = ["чпокнул #{message&.chat&.first_name}", 'Хантер х хантер, лучшее аниме', 'А как по другому мне играть в твою гейскую кс', 'Нам похуй', 'Енот молодец', 'Тут боты ссорятся', 'За енота респект', 'Ослепла от моего члена?', 'Ебаный бот', 'енот нормальный', 'Шутки шутками, но в попку то больно', 'геев не люблю', 'Жук тётя шлюха', 'не хочу в попку', 'енот пидр']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /он/
          answers = ["чпокнул #{message&.chat&.first_name}", 'Закрой поддувало', 'Нам похуй', 'Ослепла от моего члена?', 'Ебаный бот', 'енот нормальный', 'Шутки шутками, но в попку то больно', 'геев не люблю', 'Жук тётя шлюха', 'не хочу в попку', 'енот пидр']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /гей/
          answers = ['Гей', 'Нам похуй', 'С ботом играть в игры - это нужно быть пид*лиз*м', 'А как по другому мне играть в твою гейскую кс', 'Тут боты ссорятся', 'Лобок побрей', 'Пиздализ', 'Тут нужен семейный врач', 'Слава Украине', 'Слава нации', 'Ебальник закрой', 'Ебани разок', 'Ты бот? LoL', 'Ебать', 'Донбасс', 'скинь член']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /лол/
          answers = ['Гей', 'Нам похуй', 'Закрой поддувало', 'С ботом играть в игры - это нужно быть пид*лиз*м', 'Лобок побрей', 'Тут нужен семейный врач', 'Слава Украине', 'Слава нации', 'Ебальник закрой', 'Ебани разок', 'Ты бот? LoL', 'Ебать', 'Донбасс', 'скинь член']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /член/
          answers = ['Ботяра ты', 'Нам похуй', 'Закрой поддувало', 'Ща разберёмся', 'Тут боты ссорятся', 'Господи мне кажется я сейчас блевать буду', 'Ебал я тебя, Шма', '@dmitrybereza, сскинь письку', '@dmitrybereza жук, скинь пенис мне', 'Жук он один, а вас много', 'Пж я пытаюсь перестать говорить маты', 'Я в ахуе', 'Ха, всем сосать', 'Иди нахуй чертила', 'Чи на', 'Та ты лох', 'Нетушки']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /бля/
          answers = ['Ты не неси ересь', 'Закрой поддувало', 'А как по другому мне играть в твою гейскую кс', 'Ща разберёмся', 'Нам похуй', 'Безкультурный']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /блять/
          answers = ['Ты не неси ересь', 'Закрой поддувало', 'Тут боты ссорятся', 'Нам похуй', 'Безкультурный']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /нихуя/
          answers = ['Это енот письку помыл', 'Закрой поддувало', 'Нам похуй', 'Тут боты ссорятся', 'Ща разберёмся', 'Мат для лохов', 'Здоровья парню слева', 'Аоаоао, бесят эти боты', 'Бот остановлен', 'Царство небесное', 'Влад сука', 'Роботы хули', 'Интимные подробности при себе оставляйте', 'РПГ - игра про ядерную войну']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /хуй/
          answers = ['Это енот письку помыл', 'Нам похуй', 'Закрой поддувало', 'А как по другому мне играть в твою гейскую кс', 'Нет 50 грн', 'Тут боты ссорятся', 'Ща разберёмся', 'Мат для лохов', 'Здоровья парню слева', 'Бот остановлен', 'Царство небесное', 'Влад сука', 'Роботы хули', 'Интимные подробности при себе оставляйте', 'РПГ - игра про ядерную войну']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /писька/
          answers = ['Это енот письку помыл', 'Нет 50 грн', 'Тут боты ссорятся', 'Мат для лохов', 'Здоровья парню слева', 'Бот остановлен', 'Царство небесное', 'Влад сука', 'Роботы хули', 'Интимные подробности при себе оставляйте', 'РПГ - игра про ядерную войну']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /стим/
          answers = ['1238511303 - код', 'Нет 50 грн']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /фортнайт/
          answers = ['Ник poohiryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /форт/
          answers = ['Ник poohiryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /кс го/
          answers = ['Бля ну го', 'Ща разберёмся', 'Нет 50 грн', 'Давай через 30 мин', 'код A9KHC-U5VG  добавляйся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /кс/
          answers = ['Бля ну го', 'Давай через 30 мин', 'А как по другому мне играть в твою гейскую кс', 'код A9KHC-U5VG  добавляйся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)    
         when /го/
          answers = ['Бля ну го', 'Давай через 30 мин', 'код A9KHC-U5VG  добавляйся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /слив/
          answers = ['Слив? пошел ты нахуй', 'Ща разберёмся', 'Схуяли?', 'Какие сливы? Я абрикосы люблю', 'Вот бот пиздабол']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /слива/
          answers = ['Слив? пошел ты нахуй', 'Нет 50 грн', 'Схуяли?', 'Какие сливы? Я абрикосы люблю', 'Вот бот пиздабол']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /игры/
          answers = ['А-ну давай скажи во что мне поиграть']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /еноту/
          answers = ['Закрой рот', 'Закрой поддувало', 'Шма забань всех', 'Хантер х хантер, лучшее аниме', '@dmitrybereza свят!', 'Просвяти', 'Зачем жука трогаешь?', 'ты ему не интересен', 'Это вообще нацизм', 'Напиши лонг стори']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /жук/
          answers = ['Закрой рот', 'Пидар', 'Хантер х хантер, лучшее аниме', 'Шма забань всех', '@dmitrybereza свят!', 'Просвяти', 'Зачем жука трогаешь?', 'ты ему не интересен', 'Это вообще нацизм', 'Напиши лонг стори']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ира/
          answers = ['Менеджер вас слушает', 'Здоровые члены', 'Хантер х хантер, лучшее аниме', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ир/
          answers = ['Менеджер вас слушает', 'А как по другому мне играть в твою гейскую кс', 'Здоровые члены', 'Хантер х хантер, лучшее аниме', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Дима/
          answers = ['Менеджер вас слушает', 'Ща разберёмся', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Максим/
          answers = ['Менеджер вас слушает', 'Пидар', 'Хантер х хантер, лучшее аниме', 'Аоаоао, бесят эти боты', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Влад/
          answers = ['Менеджер вас слушает', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Коля/
          answers = ['Менеджер вас слушает', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Я/
          answers = ['Менеджер вас слушает', 'Хантер х хантер, лучшее аниме', 'Тут боты ссорятся', 'Иди нахер, я сейчас офф', 'Аоаоао, бесят эти боты', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ты/
          answers = ['Менеджер вас слушает', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ярослав/
          answers = ['Менеджер вас слушает', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ярик/
          answers = ['Менеджер вас слушает', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /она/
          answers = ['Менеджер вас слушает', 'Тут боты ссорятся', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /ты/
          answers = ['Менеджер вас слушает', 'Тут боты ссорятся', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        end
      end
    end
  rescue Telegram::Bot::Exceptions::ResponseError
    p 'Упал я '
  end
end