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
        when '/help'
          answers = ['Помоги мне', 'Админ']
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
        when /Трек Spotify/
          answers = ["https://open.spotify.com/track/1hf7bOwsVzKqzMiTBbRCAC?si=989ffdae1dcb4a9a", "https://open.spotify.com/playlist/37i9dQZF1EIWR2Z7ggXEKn?si=f3de421053f0478f", "https://open.spotify.com/artist/0r3Nr12KW6sMFbgdzbJtgj?si=5kkYNT4gTx2XU2WNnJhH_g", "https://open.spotify.com/artist/0ksNNF08VvPbHDXN06mrYa?si=5w2HPyr2RiOt5LPyd0YrcQ", "https://open.spotify.com/album/3SpBlxme9WbeQdI9kx7KAV?si=anXnmQgmQJWFjnEaaPcjOg"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when /Админ/
          answers = ['@kartseva_iryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Правила'
          answers = ["Правила группы:\n\nЗапрещено:\n1) рекламировать сторонние чаты, каналы, и т.д.\n2)  спам, порно, треш и тп.\n3) вся хуйня, запрещенная телегой (нсфв, доксинг и тп.)\n4) остальное на усмотрение админа\nудачи🐽"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.join("\n"))
        end
      end
    end
  rescue Telegram::Bot::Exceptions::ResponseError
    p 'Упал я '
  end
end