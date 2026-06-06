#import "./layout/utils.typ": *

#let name = "Wolf Mermelstein"
#let phone = "(212)767-WOLF"
#let email = "wolf@404wolf.com"
#let github = "github.com/404Wolf"
#let linkedin = "linkedin.com/in/wolfmermelstein"
#let personal-site = "404wolf.com"

#let author-name = "Wolf Mermelstein"

#set document(
  title: "Résumé | " + author-name, author: author-name, keywords: "cv", date: none,
)

#show link: set text(fill: rgb("#0010c3"))

#set par(leading: 0.4em)
#set list(indent: 0.2em, spacing: 0.7em)

#set page(
  paper: "us-letter", margin: (top: 0.3in, bottom: 0.2in, left: 0.3in, right: 0.3in),
)

#set text(font: "New Computer Modern", size: 11pt, lang: "en", ligatures: false)

#align(center, [
  #text(25pt, weight: "extrabold")[#author-name]
  #v(-1.6em)
])

#align(center)[
  #text(9.2pt)[
    #link("https://" + personal-site)[#personal-site] |
    #link("https://" + github)[#github] |
    #link("https://" + linkedin)[#linkedin] |
    #link("mailto:" + email)[#email] |
    #link("tel:" + phone)[#phone]
  ]
]

#v(-.8em)

#category-title(
  "Education",
)[
  #school-container(
    "Case Western Reserve University", "Cleveland, OH", "B.S. Computer Science, Minor in Math & Finance, Cum Laude, 3.9 GPA", "August, 2023", "May 2026",
  )[
    - *Courses* OS, Compilers, Networks, Algo/Data Structures
    - *Experience* #link("https://case.edu/entrepreneurship/fellowships/veale-snyder-fellows-program")[Veale Snyder Fellow], #link("https://github.com/CWRUnix/presentations/releases")[Linux Club Co-President], Case Western ThinkBox Student Project Fund \@ \$630 (#link("https://404wolf.com/posts/coinsortbot/")[blog]), Software Craftsmanship TAing
  ]

  #school-container(
    "Bard Early College", "Queens, NY", "Associate of Arts, 4.00 GPA", "September, 2021", "June, 2023",
  )[]
]

#category-title(
  "Awards & Honors",
)[
  #awards-container((
    ([HackCWRU (University Hackathon) First Place (#link("https://404wolf.com/posts/cwrufreefoodfinder/")[project blog])], "February 2024"),
    ([Microsoft Bug Hunter Acknowledgment (#link("https://404wolf.com/posts/msnemails/")[writeup blog])], "March 2022"),
  ))
]

#category-title(
  "Experience",
)[
  #job-container(
    "Software Engineer", link("https://macro.com", "Macro"), "Open-source, keyboard-shortcut infused productivity platform unifying notes, tasks, and messaging, built in Rust and SolidJS.", "June 2026", "Present", "NYC",
  )[
  \
  ]

  #job-container(
    "Fullstack Software Engineer", link("https://val.town", "Val Town"), "Easy, fun, & instant serverless JavaScript functions-as-a-service platform.", "May 2025", "May 2026", "NYC",
  )[
    - Designed and wrote CLI companion (#link("https://404wolf.com/posts/valtowncli/")[blog], #link("https://github.com/val-town/vt")[code]) to author Vals locally, with atomic bidirectional syncing.
    - Integrated #link("https://deno.com")[Deno] (TS) language server into Codemirror web editor (#link("https://404wolf.com/posts/valtowneditor/")[blog], #link("https://github.com/val-town/vtlsp")[code]) with Cloudflare Containers (#link("https://www.youtube.com/live/UiZ8JqSnoa0?si=ZLfttZFBQB-YaOKs&t=1519")[talk]).
    - Helped architect and implement custom K8s load balancing system (#link("https://404wolf.com/posts/projectbanana/")[blog]).
  ]

  #job-container(
    "Participant", link("https://recurse.com", "Recurse Center"), "Brooklyn-based self-led coding retreat", "June 2023", "August 2024", "NYC",
  )[
    - Learned #link("https://nixos.org")[Nix] and #link("https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr%20404wolf")[contributed] packages to #link("https://github.com/NixOS/nixpkgs")[nixpkgs]. Working on project to dockerize Android emulators with Nix docker tools (#link("https://404wolf.com/posts/androidinthebrowser/")[blog], #link("https://github.com/orgs/Cliquets/repositories")[code]).
    - Created Python Django server to merge Webster, OpenAI, and other API data into elegant English Vocab flashcard PDFs; rendered templated SVGs via CDP. (#link("https://404wolf.com/posts/eclecticenglishvocabdeck/")[blog], #link("https://github.com/orgs/Logophilio/repositories")[code])
  ]

  #job-container(
    "Co-founder; Solo Software Engineer; Sales Manager", "Minecraft Name Autoclaiming", "Online self-run business", "June 2021", "July 2022", "Remote",
  )[
    - Developed system to autoclaim desirable Minecraft usernames at moment of release. Automated server deployment and account distribution for 50-80 accounts/servers with custom admin interfaces. (#link("https://404wolf.com/posts/minecraftusernameautoclaiming/")[blog], #link("https://github.com/404Wolf/Ember")[code])
    - Managed auctions and sales for 100+ buyers, generating \$6,000+ in revenue with 200+ unique accounts sold. Maintained consistent positive customer feedback & regular reorders.
  ]
]

#category-title("Projects")[
  #project-container(
    [*DNA Nanotube Designer Tool* (#link("https://404wolf.com/posts/project/DNANanotubes")[blog],
      #link("https://wolf-mermelstein-personal-website.s3.us-east-2.amazonaws.com/programOverview_0001_0001_0001.webm")[demo],
      #link("https://github.com/NATuG3/NATuG-Technical-Overview")[overview],
      #link("https://github.com/NATuG3/NATuG3")[code])],
  )[
    DNA nanotechnology academic research project. Developed interactive PyQT desktop app to streamline geometrically constrained DNA nanotube design. Collaborated w/bionanotechnologist to create algorithms like determining helix strand switch behavior on junction clicks.
  ]

  #project-container(
    [*MDvalidate* (#link("https://404wolf.com/posts/mdvalidate/")[blog],
      #link("https://github.com/404Wolf/mdvalidate")[code])],
  )[
    CLI tool to validate the _shape_ of arbitrary Markdown and extract data from it using a custom schema language that aesthetically _resembles_ the Markdown it validates. Designed schema language and custom AST zipper tree algorithm with streaming support for incomplete trees. Built with #link("https://www.rust-lang.org")[Rust] and #link("https://tree-sitter.github.io/tree-sitter/")[Treesitter].
  ]
]

#category-title(
  "Skills",
)[
  #set list(spacing: 0.6em)

  - *Languages:* TypeScript/JavaScript, Nix, Rust, Go, Python, Bash, Java, Lua, C/C++, Scheme/Racket, (postgre)SQL, HTML & CSS, Markdown & LaTeX, Typst
  - *Tools:* Nix & NixOS, Linux, Web frameworks (React, Next, React-router, Tailwind, Prisma/Drizzle, Remark/rehype, etc), Python frameworks (numpy, pandas, django, PyQt/PyQtGraph, etc), database systems (Postgres, Clickhouse, Redis/valkey), General devtools (Git, github workflows, GNU, #link("https://github.com/sxyazi/yazi")[Yazi] etc), AWS (s3, ec2, etc), real-time networking WebAPIs (WebSockets, WebRTC, etc) (#link("https://github.com/404Wolf/live-webapis-demo")[demo]), Vim wizard :\)
]

#align(right)[
  #v(-0.35in)
  #text(size: 6pt)[
    #link("https://github.com/404wolf/resume-v2")[Built with Nix; Source on GitHub]
  ]
]
