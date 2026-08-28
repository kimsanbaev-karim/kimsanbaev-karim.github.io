#set page(paper: "us-letter", margin: (x: 0.45in, y: 0.3in))
#set text(size: 9.3pt)
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
  text(size: 15pt, weight: "bold")[Karim Kimsanbaev],
  [#link("mailto:karim.kimsanbaev@gmail.com")[karim.kimsanbaev\@gmail.com] · Telegram #link("https://t.me/KarimGood")[\@KarimGood]],
  text(size: 11pt)[Senior Unity & .NET Engineer · Bishkek, Kyrgyzstan],
  [#link("https://www.linkedin.com/in/karim-kimsanbaev-013851203/")[linkedin.com/in/karim-kimsanbaev] · #link("https://github.com/kimsanbaev-karim")[github.com/kimsanbaev-karim]],
  link("https://kimsanbaev-karim.github.io")[kimsanbaev-karim.github.io],
  [],
)

#v(4pt)

Game engineer with 7+ years in the industry, 6 of them at one studio: mobile and PC titles in C\# and Unity plus
the .NET services behind them. Hired for three things — moving legacy engines forward without stopping the
product, turning prototypes into architecture that holds tests, and putting AI agents to real work in a delivery
pipeline.

#rule-section("Experience")

#subheading(
  [Helio Games], [Limassol, Cyprus],
  [Senior Programmer since Jul 2025 (Middle 2021--2025, Junior 2020--2021)], [Jul 2020 -- Present],
)
#list(
  spacing: 5pt,
  item("Legacy engine migration")[Moved a live Unity client from 2017 to Unity 6.3 across six LTS steps, each closed by a tagged checkpoint and verified by compile, a 5v5 match, a standalone build and asset bundles; included working around a Unity 6 VideoPlayer defect that left the first playback frozen for nine seconds.],
  item("Prototype to production architecture")[Restructured a 343-file game mode into layered assemblies: tests 98 #sym.arrow 289 EditMode plus 14 PlayMode end-to-end, ScriptableObject configs 29 #sym.arrow 0 (JSON-driven), mutable statics 9 #sym.arrow 0 (DI registry), the largest system 1665 #sym.arrow 780 LOC. Chose in-place refactoring after a full rewrite attempt proved slower.],
  item("Game meta backend from scratch")[Built the meta service on MagicOnion StreamingHub, MongoDB and .NET Aspire: JWT access and refresh with only token hashes stored, Steam as an auth provider, role-based access, heartbeat with automatic reconnect, and packet-loss measurement under load.],
  item("Production incident diagnosis")[Traced a live DDoS through 46 client sessions and 2 crash dumps to its amplification root in the RUDP layer (an O(n) scan per unknown packet plus per-packet logging), removed both behind a failover flag and counters, and covered the change with 5 regression tests.],
  item("Feature delivery and platforms")[Shipped 15+ features including a battle pass across several projects; integrated Firebase, AppsFlyer, Pushwoosh, Unity IAP and Xsolla; cut memory use 30% and CPU 20% via allocation-free patterns.],
  item("Mentoring")[Guided a mid-level programmer through their probation period, and trained the team to write allocation-free code, documenting the asset workflow pipeline they follow.],
)

#subheading(
  [Nival], [Saint-Petersburg, Russia],
  [Junior Game Designer], [Jan 2019 -- Jul 2020],
)
#list(
  spacing: 5pt,
  item("Content systems")[Delivered 10+ tower types with distinct mechanics to release in a tower-defense title, and wrote the technical specifications artists and programmers built from.],
  item("Open source and community")[Released 2 company projects as open source, then organised a team of enthusiasts and launched 2 community-run game servers.],
)

#rule-section("Selected Projects")

#list(
  spacing: 5pt,
  item("AI work platform")[Replaced spreadsheet-based task tracking with a local platform: ASP.NET Core (.NET 10), Blazor WASM PWA, MongoDB, an own MCP server exposing 13 tools, and n8n orchestration with a custom node for agent steps. MVP in a single session at 41/41 unit tests, verified by a task running the full pipeline end to end.],
  item("RAG assistant for university applicants")[Took a retrieval assistant from nothing to a deployed service in 10 days: a 700-chunk corpus over two domains, Chroma with fastembed, and an LLM relevance judge that replaced a brittle 0.52 similarity threshold; deployed under systemd after Docker hit OOM on a 961 MB host.],
  item("Conversation-practice Telegram bot")[Runs in production with analytics built from scratch: 0 #sym.arrow 374 events over 35 days from 12 users, 88% dialogue completion, 295 passing tests.],
  item("Prime World open source")[Published the codebase of a 2014 MOBA: audited component licences and purged proprietary vendor SDKs from the entire git history rather than the current tree #sym.dash.en github.com/kimsanbaev-karim/Prime-World.],
  item("Shipped titles")[Mutiny: Pirate Survival, Westland Survival, Amikin Village, Prime World, Prime World: Defenders 2.],
)

#rule-section("Skills")

#grid(
  columns: (auto, 1fr),
  row-gutter: 3pt,
  column-gutter: 8pt,
  strong[Languages], [C\#, Python, SQL],
  strong[Game], [Unity, DoTween, Unity IAP, NoesisGUI, asset pipelines, IL2CPP],
  strong[Backend], [ASP.NET Core, Blazor, MagicOnion/gRPC, MongoDB, .NET Aspire, Docker],
  strong[AI tooling], [Claude Code agents, MCP servers, RAG, n8n],
)

#rule-section("Education")

#subheading(
  [BSTU "VOENMEH"], [Saint-Petersburg, Russia],
  [PhD programme, Systems Analysis (thesis in progress); GPA 4.76], [Sep 2022 -- Oct 2025],
)
#subheading(
  [BSTU "VOENMEH"], [Saint-Petersburg, Russia],
  [MSc, Software Engineering; GPA 4.88], [Sep 2019 -- Aug 2021],
)
#subheading(
  [BSTU "VOENMEH"], [Saint-Petersburg, Russia],
  [BSc, Software Engineering; GPA 4.68], [Sep 2015 -- Aug 2019],
)

#v(3pt)
Paper on methods for assessing situation-recognition quality accepted for publication (2027).
