#set page(paper: "us-letter", margin: (x: 0.45in, y: 0.3in))
#set text(size: 9pt, lang: "ru")
#set par(justify: false, leading: 0.52em)
#show link: set text(fill: rgb("#000000"))

#let rule-section(title) = {
  v(2pt)
  text(size: 12pt, smallcaps(title))
  v(-6pt)
  line(length: 100%, stroke: 0.5pt)
  v(-4pt)
}

#let subheading(org, place, role, dates) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    row-gutter: 3pt,
    strong(org), place,
    text(size: 9.5pt, style: "italic", role), text(size: 9.5pt, style: "italic", dates),
  )
}

#let item(label, body) = [#strong(label): #body]

#grid(
  columns: (1fr, auto),
  align: (left, right),
  row-gutter: 4pt,
  text(size: 15pt, weight: "bold")[Карим Кимсанбаев],
  [#link("mailto:karim.kimsanbaev@gmail.com")[karim.kimsanbaev\@gmail.com] · Telegram #link("https://t.me/KarimGood")[\@KarimGood]],
  text(size: 11pt)[Senior-инженер Unity и .NET · Бишкек, Кыргызстан],
  [#link("https://www.linkedin.com/in/karim-kimsanbaev-013851203/")[linkedin.com/in/karim-kimsanbaev] · #link("https://github.com/kimsanbaev-karim")[github.com/kimsanbaev-karim]],
  link("https://kimsanbaev-karim.github.io/ru.html")[kimsanbaev-karim.github.io],
  [],
)

#v(4pt)

Игровой инженер, 7+ лет в индустрии, из них 6 в одной студии: мобильные и PC-проекты на C\# и Unity плюс
.NET-сервисы под ними. Зовут за три вещи — двигать легаси-движок, не останавливая продукт; превращать прототипы
в архитектуру, которая держит тесты; ставить ИИ-агентов на реальную работу в конвейере.

#rule-section("Опыт")

#subheading(
  [Helio Games], [Лимасол, Кипр],
  [Senior Programmer с июля 2025 (Middle 2021--2025, Junior 2020--2021)], [июль 2020 -- настоящее время],
)
#list(
  spacing: 5pt,
  item("Миграция легаси-движка")[Перевёл живой Unity-клиент с 2017 на Unity 6.3 шестью LTS-этапами; каждый закрыт тегом-чекпоинтом и проверен компиляцией, боем 5v5, standalone-билдом и сборкой ассет-бандлов. По пути обойдена бага Unity 6 VideoPlayer: первое воспроизведение девять секунд стояло на месте.],
  item("Прототип в продакшн-архитектуру")[Разложил режим из 343 файлов на слоистые сборки: тесты 98 #sym.arrow 289 EditMode плюс 14 сквозных PlayMode, ScriptableObject-конфиги 29 #sym.arrow 0 (перешли на JSON), изменяемые статики 9 #sym.arrow 0 (DI-реестр), крупнейшая система 1665 #sym.arrow 780 строк. Выбрал рефакторинг на месте после того, как полное переписывание оказалось медленнее.],
  item("Бэкенд мета-слоя с нуля")[Сервис на MagicOnion StreamingHub, MongoDB и .NET Aspire: JWT access и refresh с хранением только хешей токенов, Steam как провайдер авторизации, разграничение прав по ролям, heartbeat с авто-реконнектом и замер потерь пакетов.],
  item("Диагностика инцидента на проде")[По 46 клиентским сессиям и 2 краш-дампам нашёл корень амплификации DDoS в слое RUDP (O(n)-скан на каждый неизвестный пакет плюс лог на каждый пакет), убрал оба за флагом failover и счётчиками, закрыл 5 регрессионными тестами.],
  item("Фичи и платформы")[Довёл до релиза 15+ фич, включая батл-пасс в нескольких проектах; интегрировал Firebase, AppsFlyer, Pushwoosh, Unity IAP и Xsolla; снизил потребление памяти на 30% и CPU на 20% за счёт allocation-free паттернов.],
  item("Менторство")[Провёл мид-программиста через испытательный срок и научил команду писать allocation-free код, задокументировав пайплайн работы с ассетами.],
)

#subheading(
  [Nival], [Санкт-Петербург, Россия],
  [Junior Game Designer], [январь 2019 -- июль 2020],
)
#list(
  spacing: 5pt,
  item("Контентные системы")[Довёл до релиза 10+ типов башен с разными механиками в tower-defense проекте и написал техзадания, по которым работали художники и программисты.],
  item("Опенсорс и сообщество")[Выпустил 2 проекта компании в открытый доступ, собрал команду энтузиастов и запустил 2 сообществом поддерживаемых игровых сервера.],
)

#rule-section("Избранные проекты")

#list(
  spacing: 5pt,
  item("Платформа управления ИИ-работой")[Заменил учёт задач в таблице локальной платформой: ASP.NET Core (.NET 10), Blazor WASM PWA, MongoDB, собственный MCP-сервер на 13 инструментов и оркестрация в n8n со своей нодой для шагов агента. MVP за одну сессию при 41/41 юнит-тестов, подтверждено задачей, прошедшей весь конвейер целиком.],
  item("RAG-помощник для абитуриентов")[С нуля до задеплоенного сервиса за 10 дней: корпус на 700 чанков по двум доменам, Chroma с fastembed и LLM-судья релевантности вместо хрупкого порога 0,52; деплой под systemd после того, как Docker упал по OOM на машине с 961 МБ памяти.],
  item("Telegram-бот тренировки общения")[Работает в проде, аналитика построена с нуля: 0 #sym.arrow 374 события за 35 дней от 12 пользователей, завершаемость диалогов 88%, 295 проходящих тестов.],
  item("Prime World в опенсорсе")[Опубликовал кодовую базу MOBA 2014 года: проверил лицензии компонентов и вычистил проприетарные вендорские SDK из всей истории git, а не только из текущего состояния #sym.dash.en github.com/kimsanbaev-karim/Prime-World.],
  item("Выпущенные проекты")[Mutiny: Pirate Survival, Westland Survival, Amikin Village, Prime World, Prime World: Defenders 2.],
)

#rule-section("Навыки")

#grid(
  columns: (auto, 1fr),
  row-gutter: 3pt,
  column-gutter: 8pt,
  strong[Языки], [C\#, Python, SQL],
  strong[Геймдев], [Unity, DoTween, Unity IAP, NoesisGUI, пайплайны ассетов, IL2CPP],
  strong[Бэкенд], [ASP.NET Core, Blazor, MagicOnion/gRPC, MongoDB, .NET Aspire, Docker],
  strong[ИИ-инструменты], [агенты Claude Code, MCP-серверы, RAG, n8n],
)

#rule-section("Образование")

#subheading(
  [БГТУ «ВОЕНМЕХ» им. Д. Ф. Устинова], [Санкт-Петербург, Россия],
  [Аспирантура, системный анализ (диссертация в работе); средний балл 4,76], [сентябрь 2022 -- октябрь 2025],
)
#subheading(
  [БГТУ «ВОЕНМЕХ» им. Д. Ф. Устинова], [Санкт-Петербург, Россия],
  [Магистратура, программная инженерия; средний балл 4,88], [сентябрь 2019 -- август 2021],
)
#subheading(
  [БГТУ «ВОЕНМЕХ» им. Д. Ф. Устинова], [Санкт-Петербург, Россия],
  [Бакалавриат, программная инженерия; средний балл 4,68], [сентябрь 2015 -- август 2019],
)

#v(3pt)
Статья о методах оценки качества распознавания ситуаций принята к публикации (2027).
