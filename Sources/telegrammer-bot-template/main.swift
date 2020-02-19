import Foundation
import Telegrammer

///Getting token from enviroment variable (most safe, recommended)
guard let token = Enviroment.get("TELEGRAM_BOT_TOKEN") else {
    print("TELEGRAM_BOT_TOKEN variable wasn't found in enviroment variables")
    exit(1)
}

do {
    let bot = try Bot(token: token)

    let echoHandler = MessageHandler { (update, _) in
        _ = try? update.message?.reply(text: "Hello \(update.message?.from?.firstName ?? "anonymous")", from: bot)
    }

    let dispatcher = Dispatcher(bot: bot)
    dispatcher.add(handler: echoHandler)

    _ = try Updater(bot: bot, dispatcher: dispatcher).startLongpolling().wait()
} catch {
    exit(1)
}
