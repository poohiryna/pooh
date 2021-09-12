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
          answers = ['Выполз из @kartseva_iryna', 'Я внебрачный сын @kartseva_iryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
          when 'Ебани разок'
            answers = ['Кинешь мусор - прострелю колено', 'лгбт говно', 'Ебу свою киску', 'Где мой член', 'Шлюха',  'полижи', "#{message&.chat&.first_name} ты же шел дрочить", 'енот ты же ишел дрочить', 'привет мой сладенький нубасик', 'Жук тётя шлюха', 'жук добрый']
            bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
          when 'Скинь член'
            answers = ['Не кидай сюда члены!', 'Сейчас я макаю член в Lipton', 'подрочить хочешь?']
            bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when '/help'
          answers = ['Детские приколы', 'лобок', 'Пид()рские будни', 'онлик2', 'онлик', 'ссылки', 'Ебани разок', 'Правила', 'Пух, а кто тебя сделал?', 'Донбасс', 'скинь член']
          bot.api.send_message(chat_id: message.chat.id, text: answers.join("\n"))
        when 'Онлик'
          answers = ["https://onlyfans.com/kartseva_iryna"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Лобок'
          answers = ["#{message&.chat&.first_name} иди пососи хуйца", 'хавайся', "брачная хуита?\nда или нет?"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Да'
          answers = ['ПИЗДА', 'ПОебалуНА', 'манда', 'Уебать бы тебе чем-нибудь тяжелым', 'отвечает тупорылая пизда']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Нет'
          answers = ['Вкусный винегрет?', 'Сука! Из яйца омлет', 'Из сосны паркет, блядь', 'Да', 'Скажи Да', 'иди в пизду', 'блять, теперь придумывать нужно что-то', 'Значит пошул нахуй', 'лучше скажи Да', 'Добрый дядя Фред', 'Мой менталитет', 'Голодный муравьед', 'Ну и п#д0%@ ответ', 'Из жука паштет', 'Старый добрый дед', 'Восемь здесь планет', 'Пламенный привет']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Онлик2'
          answers = ["https://onlyfans.com/kartseva.iryna"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Ссылки'
          answers = ["https://t.me/kartsevaair/2641"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пид()рские будни'
          answers = ["чпокнул #{message&.chat&.first_name}", 'енот нормальный', 'геев не люблю', 'не хочу в попку', 'енот пидр']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when '/help@pooh_pooh_bot'
          answers = ['Детские приколы', 'лобок', 'Пид()рские будни', 'онлик2', 'онлик', 'ссылки', 'Ебани разок', 'Правила', 'Пух, а кто тебя сделал?', 'Донбасс', 'скинь член']
          bot.api.send_message(chat_id: message.chat.id, text: answers.join("\n"))
        when 'Детские приколы'
          answers = ['скажи клей', 'скажи подвал', 'скажи кукуруза', 'скажи кружка', 'скажи аврора', 'скажи май', 'скажи кирпич', 'скажи арбуз', 'скажи ЗИЛ', 'скажи дура', 'скажи двести', 'скажи гараж', 'скажи газ', 'скажи воровка', 'скажи ваза', 'скажи баранка', 'скажи банан', 'скажи банка']
          bot.api.send_message(chat_id: message.chat.id, text: answers.join("\n"))
        when 'Клей'
          answers = ['выпей баночку соплей']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Май'
          answers = ['я пукну, ты поймай']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Кукуруза'
          answers = ['поцелуй цыганке пузо']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Кружка'
          answers = ['твоя мать болтушка']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Кирпич'
          answers = ['твой папа бич']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Дура'
          answers = ['у тебя красивая фигура']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Подвал'
          answers = ['тебя скелет поцеловал']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Аврора'
          answers = ['снимай трусы без разговора']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Арбуз'
          answers = ['твой папа карапуз']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Банка'
          answers = ['твоя бабушка цыганка']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Банан'
          answers = ['твой папа наркоман']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Баранка'
          answers = ['твоя мать цыганка']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Ваза'
          answers = ['поживи пока без газа']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Воровка'
          answers = ['тебя мама свяжет ловко']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
          answers = ['тебе цыганка титьку даст']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Гараж'
          answers = ['снимай трусы, иди на пляж']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Двести'
          answers = ['снимай трусы-иди к невесте']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        end
      end
    end
  rescue Telegram::Bot::Exceptions::ResponseError
    p 'Упал я '
  end
end