# frozen_string_literal: true

require 'telegram/bot'

TOKEN = '1951505972:AAG3CIfN-nTrSXjbSB9HbL900N7lkk5X52Q'

Telegram::Bot::Client.new(TOKEN).run do |bot|
  bot.listen do |message|
    if message.chat
      case message
      when Telegram::Bot::Types::Message
        case message.text
        when 'Кто тебя сделал?'
          answers = ['Выполз из @kartseva_iryna', 'Я внебрачный сын @kartseva_iryna', 'мать @kartseva_iryna, отец @dmitrybereza']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Как дела?'
          answers = ['Выполз из @kartseva_iryna', 'Я внебрачный сын @kartseva_iryna', 'мать @kartseva_iryna, отец @dmitrybereza']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when '/help'
          answers = ['Помоги мне', 'Админ', '@kartseva_iryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Пух/
          answers = ['Привет, как дела?', 'Я очень хочу пить', 'Чем занят?', 'Твой любимый трек?', 'Что нового?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Скучно/
          answers = ['Я люблю смотреть порно, но дрочить нет', "https://www.twitch.tv/poohiryna посмотри стрим", 'Ножки очень нравятся', 'Смотрел кальмара?', 'Я уже старый, школу закончил', 'А вы вообще как живете?', 'Хочешь подарю 3 грн на карту?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Политика/
          answers = ['Прости, я пас', 'Вообще Украина прекрасная страна', 'Я украинец', 'Хочешь поговорить об этом?', 'Это опасно обсуждать тут', 'ЛУчше я не буду лезть в эту тему']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Админ/
          answers = ['@kartseva_iryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        end
      end
    end
  rescue Telegram::Bot::Exceptions::ResponseError
    p 'Упал я '
  end
end