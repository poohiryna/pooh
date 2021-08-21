# frozen_string_literal: true

require 'telegram/bot'

TOKEN = '1943989745:AAEkF_EEOBAHEwG6ot9DmDpIBro982BwcxQ'

Telegram::Bot::Client.new(TOKEN).run do |bot|
  bot.listen do |message|
    if message.from
      case message
      when Telegram::Bot::Types::Message
        case message.text
        when 'Пух, а кто тебя сделал?'
          answers = ['Выполз из @kartseva_iryna', 'Я внебрачный сын @kartseva_iryna']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when '/help'
          answers = ['Пух, как у тебя дела?', 'Пух, дай бабок', 'Пух, ты лох?', 'Пух, 123?', 'Пух, дай онлик для нищих', 'Пух, дай ссылку на чат', 'Пух, где живешь?', 'Пух, Бог есть?', 'Пух, иди нахуй', 'Пух, скинь член', 'Пух, ты куришь?', 'Пух, го пивка бахнем?', 'Пух, скинь фотку?', 'Пух, подари онлик']
          bot.api.send_message(chat_id: message.from.id, text: answers.join("\n"))
        when 'Пух, как у тебя дела?'
          answers = ['Очень круто, пью чай', 'пиздос, сегодня не поела, хочу умереть', 'Э, Бык, ебаться хочешь?', 'А тебя ебет?', 'нахуй иди,Стреляю детей на Донбассе, ты следующий']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, где живешь?'
          answers = ['Ем Детей на Донбассе', 'похуй,главное, слава Богу', 'я живу там, где можно выжить.']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, иди нахуй'
          answers = ['сам пошел нахуй', 'yyy, иди-ка ты нахуй', 'Он уже занят- на нем твоя мамка',  "#{message&.from&.first_name} соси писос"]
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, ты куришь?'
          answers = ['шманаю под падиком']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, го пивка бахнем?'
          answers = ['Ток если Балтику семерку', 'У тебя ещё волосы на яйцах не выросли шоб со мной пить']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, скинь фотку?'
          answers = ['купи тут- https://onlyfans.com/kartseva_iryna', 'купи тут- https://boosty.to/_yourlollipop_', 'пошел нахуй', 'черт, если нищий открой порнхаб']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, подари онлик'
          answers = ['купи тут- https://onlyfans.com/kartseva_iryna', 'купи тут- https://boosty.to/_yourlollipop_', 'черт, иди нахуй заебал', 'кинь на карту 3$ - 4441114449339785']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, скинь член'
          answers = ['Не кидай сюда члены!', 'у бати попроси', 'Скинь свой или зассал']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, Бог есть?'
          answers = ['ебать, да!', 'похуй,Бог, ты додик', 'Бог для долбаетов.']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, дай онлик для нищих'
          answers = ['ну ты наглый, на https://onlyfans.com/kartseva.iryna!', 'Нищий ты https://onlyfans.com/kartseva.iryna']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, дай ссылку на чат'
          answers = ['ебать, ты ахуел? это для вип чуваков - https://t.me/joinchat/0sW6wOAwXh9lODUy', 'https://t.me/joinchat/0sW6wOAwXh9lODUy с тебя подарок', 'https://t.me/joinchat/0sW6wOAwXh9lODUy хуй на']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, дай бабок'
          answers = ['дать тебе в рот?', "у бати попроси,ты же лох  #{message&.from&.first_name}", "скинь член, #{message&.from&.first_name}"]
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, ты лох?'
          answers = ['ебать, да!', 'тебя отмудохать а мясо?', 'ты льешь бесподобно, подобно томной пизде', 'любишь в попку или в ротик?']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        when 'Пух, 123?'
          answers = ['в чем прикол?', 'слив - https://t.me/kartsevaair/2650', 'ты льешь бесподобно, подобно томной пизде', 'А закат был ал — был ал, как коленочки У долго-долго сосавшей хуй девочки  Закат пылал, как в костре краснокожий Бляди-закаты всегда на что-то похожи']
          bot.api.send_message(chat_id: message.from.id, text: answers.sample)
        end
      end
    end
  rescue Telegram::Bot::Exceptions::ResponseError
    p 'Упал я '
  end
end