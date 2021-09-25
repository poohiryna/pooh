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
        when /пух/, /Украина/, /Россия/, /мать/, /а/, /не/, /нюдсы/
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'подрочить хочешь?', 'Ты мне блять хуйню не заливай','Ты нищий какие нюдсы', 'Денег дай, а потом проси', 'Мне было грустно и одиноко и я увидела его, банан', 'Где суши сука влад блять', 'Бля, пойду повешусь', 'О выеби нас', 'хавайся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /да/
          answers = ['ПИЗДА', 'ПОебалуНА', 'манда', 'Уебать бы тебе чем-нибудь тяжелым', 'обезьяны шарят в развлечениях', 'отвечает тупорылая пизда']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /нет/
          answers = ['Вот это топовый мульт', 'Пошел н а х у й', 'А почему один из вас не закроет ебало?', 'Да', 'Скажи Да', 'иди в пизду', 'блять, теперь придумывать нужно что-то', 'Значит пошел нахуй', 'лучше скажи Да', 'Ахуенно', 'Бл, короче', 'Шма троллит вас', 'Ну и п#д0%@ ответ', 'Он войну хочет устроить', 'Когда муркает кит - это пиздато', 'Украинцы жгут', 'Я за Украину']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /или/
          answers = ['Да или Нет?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /dick/
          answers = ['Иди нахуй', '-10 см в члене']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /приват/
          answers = ['Привет, приват 900 гривен. Видео и фото. Более 600 публикаций']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /енот/, /он/
          answers = ["чпокнул #{message&.chat&.first_name}", 'Ослепла от моего члена?', 'Ебаный бот', 'енот нормальный', 'Шутки шутками, но в попку то больно', 'геев не люблю', 'Жук тётя шлюха', 'не хочу в попку', 'енот пидр']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /гей/, /./
          answers = ['Гей', 'С ботом играть в игры - это нужно быть пид*лиз*м', 'Лобок побрей', 'Тут нужен семейный врач', 'Слава Украине', 'Слава нации', 'Ебальник закрой', 'Ебани разок', 'Ты бот? LoL', 'Ебать', 'Донбасс', 'скинь член']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /член/
          answers = ['Ботяра ты', 'Господи мне кажется я сейчас блевать буду', 'Ебал я тебя, Шма', '@dmitrybereza, сскинь письку', '@dmitrybereza жук, скинь пенис мне', 'Жук он один, а вас много', 'Пж я пытаюсь перестать говорить маты', 'Я в ахуе', 'Ха, всем сосать', 'Иди нахуй чертила', 'Чи на', 'Та ты лох', 'Нетушки']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /бля/, /блять/
          answers = ['Ты не неси ересь', 'Безкультурный']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /нихуя/, /хуй/, /писька/
          answers = ['Это енот письку помыл', 'Мат для лохов', 'Здоровья парню слева', 'Бот остановлен', 'Царство небесное', 'Влад сука', 'Роботы хули', 'Интимные подробности при себе оставляйте', 'РПГ - игра про ядерную войну']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /стим/
          answers = ['1238511303 - код']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /фортнайт/, /форт/
          answers = ['Ник poohiryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /кс го/, /кс/, /го/
          answers = ['Бля ну го', 'Давай через 30 мин', 'код A9KHC-U5VG  добавляйся']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /слив/, /слива/
          answers = ['Слив? пошел ты нахуй', 'Схуяли?', 'Какие сливы? Я абрикосы люблю', 'Вот бот пиздабол']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /игры/
          answers = ['А-ну давай скажи во что мне поиграть']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /жук/, /еноту/
          answers = ['Закрой рот', 'Шма забань всех', '@dmitrybereza свят!', 'Просвяти', 'Зачем жука трогаешь?', 'ты ему не интересен', 'Это вообще нацизм', 'Напиши лонг стори']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Ира/, /Дима/, /Максим/, /Влад/, /Коля/, /Я/, /Ты/, /ты/
          answers = ['Менеджер вас слушает', 'Иди нахер, я сейчас офф', 'Пошел в пизду Ты', 'Ты еблан?', 'Сосать или лизать?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        end
      end
    end
  rescue Telegram::Bot::Exceptions::ResponseError
    p 'Упал я '
  end
end