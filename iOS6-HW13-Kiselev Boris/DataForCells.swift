//
//  DataForCells.swift
//  iOS6-HW13-Kiselev Boris
//
//  Created by Борис Киселев on 01.06.2022.
//

import UIKit

struct Data {
    var image: [UIImage?]
    var text: [String]
    var secondText: [String?]
}

var settingsData = [Data]()

let idSettings = Data(image: [UIImage(named: "Portrait"), nil],
                      text: ["Борис Киселев", 
                             "Копия не создавалась"],
                      secondText: ["AppleID, iCloud, контент и покупки", nil])

let connectionData = Data(image: [UIImage(named: "Airplane"), 
                                  UIImage(named: "WiFi"),
                                  UIImage(named: "Bluetooth"), 
                                  UIImage(named: "CellSvyaz"),
                                  UIImage(named: "ModemMode"), 
                                  UIImage(named: "VPN")],
                          text: ["Авиарежим", 
                                 "Wi-Fi",
                                 "Bluetooth",
                                 "Сотовая связь",
                                 "Режим модема",
                                 "VPN"],
                          secondText: [nil, nil, nil, nil, nil, nil])

let notificationData = Data(image: [UIImage(named: "Notification"), 
                                    UIImage(named: "Dinamic"),
                                    UIImage(named: "Moon"), 
                                    UIImage(named: "Hourglass")],
                            text: ["Уведомления", 
                                   "Звуки, тактильные сигналы",
                                   "Фокусирование",
                                   "Экранное время"],
                            secondText: [nil, nil, nil, nil])

let mainData = Data(image: [UIImage(named: "Gear"), 
                            UIImage(named: "Toggles"),
                            UIImage(named:  "Aa"),
                            UIImage(named: "HomeScreen"),
                            UIImage(named: "UniversalControl"), 
                            UIImage(named: "Oboi"),
                            UIImage(named: "Siri"), 
                            UIImage(named: "FaceId"),
                            UIImage(named: "SOS"), 
                            UIImage(named: "NotificationOfContact"),
                            UIImage(named: "Battery"), 
                            UIImage(named: "Confidetial")],
                    text: ["Основные", 
                           "Пункт управления",
                           "Экран и яркость",
                           "Экран «Домой»",
                           "Универсальный доступ",
                           "Обои",
                           "Siri и поиск",
                           "Face ID и код-пароль",
                           "Экстренный вызов - SOS",
                           "Уведомление о контакте",
                           "Аккумулятор",
                           "Конфиденциальность"],
                    secondText: [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil])

let appStoreData = Data(image: [UIImage(named: "AppStore"), 
                                UIImage(named: "Wallet")],
                        text: ["App Store",
                               "Wallet и Apple Pay"],
                        secondText: [nil, nil])

let basicsAppData = Data(image: [UIImage(named: "Passwords"), 
                                 UIImage(named: "Post"),
                                 UIImage(named: "Contacts"),
                                 UIImage(named: "Calendar"),
                                 UIImage(named: "Notes"),
                                 UIImage(named: "Reminders"),
                                 UIImage(named: "Dictaphone"),
                                 UIImage(named: "Phone"),
                                 UIImage(named: "Message"),
                                 UIImage(named: "Facetime"),
                                 UIImage(named: "Safari"),
                                 UIImage(named: "Stocks"),
                                 UIImage(named: "Weather"),
                                 UIImage(named: "Translate"),
                                 UIImage(named: "Maps"),
                                 UIImage(named: "Compass"),
                                 UIImage(named: "TapeMeasure"),
                                 UIImage(named: "FastCommands"),
                                 UIImage(named: "Health")],
                         text: ["Пароли", 
                                "Почта",
                                "Контакты",
                                "Календарь",
                                "Заметки",
                                "Напоминания",
                                "Диктофон",
                                "Телефон",
                                "Сообщения",
                                "FaceTime",
                                "Safari",
                                "Акции",
                                "Погода",
                                "Перевод",
                                "Карты",
                                "Компас",
                                "Рулетка",
                                "Быстрые команды",
                                "Здоровье",],
                         secondText: [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil])

let basicsMultimediaAppData = Data(image: [UIImage(named: "Music"), 
                                           UIImage(named: "TV"),
                                           UIImage(named: "Photo"),
                                           UIImage(named: "Camera"),
                                           UIImage(named: "Books"),
                                           UIImage(named: "Podcasts"),
                                           UIImage(named: "GameCenter")],
                                   text: ["Музыка", 
                                          "TV",
                                          "Фото",
                                          "Камера",
                                          "Книги",
                                          "Подкасты",
                                          "Game Center"],
                                   secondText: [nil, nil, nil, nil, nil, nil, nil])

let tvProvaiderData = Data(image: [UIImage(named: "TVProvaider")], 
                           text: ["Телепровайдер"],
                           secondText: [nil])

let developerData = Data(image: [UIImage(named: "Developer")], 
                         text: ["Developer"],
                         secondText: [nil])

let thirdPartyAppData = Data(image: [UIImage(named: "VK"), 
                                     UIImage(named: "Y.Music"),
                                     UIImage(named: "Discord"),
                                     UIImage(named: "Kinopoisk"),
                                     UIImage(named: "AppleStore"),
                                     UIImage(named: "Telegram"),
                                     UIImage(named: "Slack"),
                                     UIImage(named: "WhatsApp"),
                                     UIImage(named: "YOTA")],
                             text: ["VK", 
                                    "Я.Музыка",
                                    "Discord",
                                    "Кинопоиск",
                                    "Apple Store",
                                    "Telegram",
                                    "Slack",
                                    "WhatsApp",
                                    "YOTA"],
                             secondText: [nil, nil, nil, nil, nil, nil, nil, nil, nil])



