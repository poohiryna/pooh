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
        when '/help'
          answers = ['Пух, как у тебя дела?', 'Пух, дай бабок', 'Пух, ты лох?', 'Пух, 123?', 'Пух, дай онлик для нищих', 'Пух, дай ссылку на чат', 'Пух, где живешь?', 'Пух, Бог есть?', 'Пух, иди нахуй', 'Пух, скинь член', 'Пух, ты куришь?', 'Пух, го пивка бахнем?', 'Пух, скинь фотку?', 'Пух, подари онлик']
          bot.api.send_message(chat_id: message.chat.id, text: answers.join("\n"))
        when '/help@pooh_pooh_bot'
          answers = ['Пух, как у тебя дела?', 'Пух, дай бабок', 'Пух, ты лох?', 'Пух, 123?', 'Пух, дай онлик для нищих', 'Пух, дай ссылку на чат', 'Пух, где живешь?', 'Пух, Бог есть?', 'Пух, иди нахуй', 'Пух, скинь член', 'Пух, ты куришь?', 'Пух, го пивка бахнем?', 'Пух, скинь фотку?', 'Пух, подари онлик']
          bot.api.send_message(chat_id: message.chat.id, text: answers.join("\n"))
        when 'Пух, как у тебя дела?'
          answers = ['Очень круто, пью чай', 'откуда тебе знать?', 'пиздос, сегодня не поела, хочу умереть', 'Э, Бык, ебаться хочешь?', 'А тебя ебет?', 'нахуй иди,Стреляю детей на Донбассе, ты следующий']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, где живешь?'
          answers = ['похуй,главное,что Бог есть', 'я живу там, где можно выжить']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, иди нахуй'
          answers = ['сам пошел нахуй','Ем Детей на Донбассе', 'Я вахуе', 'пиздос', 'yyy, иди-ка ты нахуй', 'Он уже занят- на нем твоя мамка',  "#{message&.chat&.first_name} соси писос"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, ты куришь?'
          answers = ['шманаю под падиком', 'нет']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, го пивка бахнем?'
          answers = ['Ток если Балтику семерку', 'У тебя ещё волосы на яйцах не выросли шоб со мной пить']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, скинь фотку?'
          answers = ['купи тут- https://onlyfans.com/kartseva_iryna', 'купи тут- https://boosty.to/_yourlollipop_', 'пошел нахуй', 'черт, если нищий открой порнхаб']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, подари онлик'
          answers = ['купи тут- https://onlyfans.com/kartseva_iryna', 'купи тут- https://boosty.to/_yourlollipop_', 'черт, иди нахуй заебал', 'кинь на карту 3$ - 4441114449339785']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, скинь член'
          answers = ['Не кидай сюда члены!', 'у бати попроси', 'Скинь свой или зассал']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, игра'
          answers = ["твой член 60 см #{message&.chat&.first_name}", 'купи тут- https://onlyfans.com/kartseva_iryna', "иди отсоси у бати #{message&.chat&.first_name}", "-3 см в хуе #{message&.chat&.first_name}", "теперь твой хуй 4см #{message&.chat&.first_name}", "-4см!!! Ну ты лох #{message&.chat&.first_name}", "ебанулся? ждешь +15см в члене? хер тебе! у тебя -18см #{message&.chat&.first_name}", "попробуй еще #{message&.chat&.first_name}", "нет игры  больше #{message&.chat&.first_name}", "Поздравляю! Ты удалил игру #{message&.chat&.first_name}"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, Бог есть?'
          answers = ['ебать, да!', 'Ты конь?', 'похуй на Бога, ты додик', 'Бог для долбаетов.', 'Какой Бог? Ты чепушила!', 'Кинь, ты в школу вообще ходил? Или ты думаешь, что я верю в какого-то небесного чувака?', 'Иди ты нахуй со своим Богом', 'Я верю в богомола, а ты?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, дай онлик для нищих'
          answers = ['ну ты наглый, на https://onlyfans.com/kartseva.iryna!', 'Нищий ты https://onlyfans.com/kartseva.iryna']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, дай ссылку на чат'
          answers = ['ебать, ты ахуел? это для вип чуваков - https://t.me/joinchat/0sW6wOAwXh9lODUy', 'https://t.me/joinchat/0sW6wOAwXh9lODUy с тебя подарок', 'https://t.me/joinchat/0sW6wOAwXh9lODUy хуй на']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, дай бабок'
          answers = ['дать тебе в рот?', "у бати попроси,ты же лох  #{message&.chat&.first_name}", "скинь член, #{message&.chat&.first_name}"]
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, ты лох?'
          answers = ['ебать, да!', 'тебя отмудохать а мясо?', 'ТЫ, МУДИЛА ГОРОХОВАЯ!', 'Ты кто такой, сука? Чтоб играть в игру', 'ты льешь бесподобно, подобно томной пизде', 'любишь в попку или в ротик?']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        when 'Пух, 123?'
          answers = ['в чем прикол?', 'Бля это фейк', 'Днём на твич, а вечером на вебкам 🤪🔞', 'Спасибо, что присоединились к моему фанатскому не могу дождаться, когда твой член вырастет для меня', "Мне нравится, что так многие из вас присылают фото членов оценивать. Я совершенно новичок в создании контента для взрослых в Интернете и на самом деле никогда не оценивала картинки с членами, поэтому я прошу всех моих поклонников и последователей забросать мой почтовый ящик фотографиями. Дерзай #{message&.chat&.first_name}", "слив для #{message&.chat&.first_name} - https://t.me/c/1242772937/18894", 'ты льешь бесподобно, подобно томной пизде', 'А закат был ал — был ал, как коленочки У долго-долго сосавшей хуй девочки  Закат пылал, как в костре краснокожий Бляди-закаты всегда на что-то похожи']
          bot.api.send_message(chat_id: message.chat.id, text: answers.sample)
        end
      end
    end
  rescue Telegram::Bot::Exceptions::ResponseError
    p 'Упал я '
  end
end