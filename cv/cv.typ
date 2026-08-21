#set page(paper: "us-letter", margin: (x: 0.55in, y: 0.5in))
#set text(size: 11pt)
#set par(justify: false)
#show link: set text(fill: rgb("#000000"))

#let rule-section(title, note: none) = {
  v(4pt)
  text(size: 13pt, smallcaps(title))
  if note != none [ #text(size: 11pt)[#note]]
  v(-6pt)
  line(length: 100%, stroke: 0.5pt)
  v(-4pt)
}

#let subheading(org, place, role, dates) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    strong(org), place,
    text(size: 10pt, style: "italic", role), text(size: 10pt, style: "italic", dates),
  )
}

#let item(label, body) = [#strong(label): #body]

#grid(
  columns: (1fr, auto),
  align: (left, right),
  text(size: 15pt, weight: "bold")[Karim Kimsanbaev — Senior Unity Developer],
  [Email: #link("mailto:karim.kimsanbaev@gmail.com")[karim.kimsanbaev\@gmail.com]],
  link("https://www.linkedin.com/in/karim-kimsanbaev-013851203/")[linkedin.com],
  [Telegram: #link("https://t.me/KarimGood")[\@KarimGood]],
  link("https://github.com/kimsanbaev-karim")[github.com/kimsanbaev-karim],
  link("https://kimsanbaev-karim.github.io")[kimsanbaev-karim.github.io],
)

#rule-section("Education")

#subheading(
  [BSTU "VOENMEH"], [Saint-Petersburg, Russia],
  [Systems Analyst; PhD program; GPA: 4.76], [Sep. 2022 -- Oct. 2025],
)
#subheading(
  [BSTU "VOENMEH"], [Saint-Petersburg, Russia],
  [Software Engineer; Master's degree; GPA: 4.88], [Sep. 2019 -- Aug. 2021],
)
#subheading(
  [BSTU "VOENMEH"], [Saint-Petersburg, Russia],
  [Software Engineer; Bachelor's degree; GPA: 4.68], [Sep. 2015 -- Aug. 2019],
)

#rule-section("Experience", note: [6 years])

#subheading(
  [Helio Games], [Limassol, Cyprus],
  [Software Engineer], [Oct 2021 - Present],
)
#list(
  spacing: 6pt,
  item("Features")[Led the design +15 different game features to release, including the development of a battle pass in multiple projects.],
  item("Library Integration")[Integrated Firebase, AppsFlyer, Pushwoosh for push notifications, Unity In-App, and Xsolla for in-game purchases.],
  item("Platforms and SDKs")[Updated +12 Android and iOS libraries.],
  item("Optimization")[Optimized the use of art assets in the project and documented the asset workflow pipeline. Improved and trained the team in writing allocation-free code. Improve +30% Memory and +20% CPU usage.],
  item("Mentoring")[Guided a mid-level programmer through the probation period.],
)

#subheading(
  [Nival], [Russia],
  [Junior Game Designer], [Jan 2019 - Jul 2020],
)
#list(
  spacing: 6pt,
  item("Description and Integration of Game Entities")[Delivered +10 different types of towers to the game release in a Tower Defense-style game, each with unique mechanics. Created technical specifications for artists and programmers.],
  item("Design Documentation")[Designed and implemented a complete feature for an in-game event.],
  item("Open Source")[Released 2 company projects as open source. Organized a team of enthusiasts and launched 2 community-run game servers.],
)

#rule-section("Projects")

#list(
  spacing: 6pt,
  item("Amikin Village RPG")[Survival RPG in a magic Amikins world Theme for mobile devices #link("https://apps.apple.com/us/app/amikin-village-magic-sim-rpg/id6478102304")[apps.apple.com]],
  item("Westland Survival RPG")[Survival RPG in a Western Cowboy Theme for mobile devices and PC #link("https://heliogames.com/westland-survival")[heliogames.com]],
  item("Mutiny: Pirates Survival")[Survival RPG in a Pirate Theme for mobile devices and PC #link("https://apps.apple.com/us/app/mutiny-pirate-survival-rpg/id1490838880")[apps.apple.com]],
  item("Cyber Fox (Pet Project)")[Adventure with a Programmer Cat: a project for hosting competitions among school students with support for C\#, C++, and Python. #link("https://gitlab.com/karim.kimsanbaev/cyber-cat")[gitlab.com]],
  item("Prime World")[MOBA game for PC #link("https://store.steampowered.com/app/235340/Prime_World/")[store.steampowered.com]],
  item("Prime World: Defenders 2")[Tower Defense in the Prime World universe for mobile devices and PC. #link("https://store.steampowered.com/app/429540/Prime_World_Defenders_2/")[store.steampowered.com]],
)

#rule-section("Programming Skills")

#grid(
  columns: (1fr, 1fr),
  [#strong[Languages]: C\#, Python, SQL],
  [#strong[Technologies]: Unity, ASP NET, Mongo],
)
