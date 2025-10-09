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
    #link("tel:" + phone)[#phone] |
    #link("mailto:" + email)[#email] |
    #link("https://" + personal-site)[#personal-site] |
    #link("https://" + linkedin)[#linkedin] |
    #link("https://" + github)[#github]
  ]
]

#v(-0.8em)

#category-title(
  "Education",
)[
  #school-container(
    "Case Western Reserve University", "Cleveland, OH", "B.S. Computer Science, 3.93 GPA", "September, 2023", "Anticipated 2027",
  )[
    - *Courses:* Networks, Linux Tools & Scripting; Algo/Data Structures, OS,
      Persuasion
    - *Experience:* #link(
        "https://case.edu/entrepreneurship/fellowships/veale-snyder-fellows-program",
      )[Veale Snyder Fellow], Linux Club Co-President, Board Game Club VP, Software
      Craftsmanship TA
  ]

  #school-container(
    "Bard Early College", "Queens, NY", "Associates of Arts, 4.00 GPA", "September, 2021", "June, 2023",
  )[]
]

#v(1.9em)

#category-title(
  "Awards & Honors",
)[
  #awards-container(
    (
      ([HackCWRU (University Hackathon) First Place], "February 2024"), ([Case Western ThinkBox Student Project Fund (\$630)], "October 2023"), ([Microsoft Bug Hunter Acknowledgment], "March 2022"),
    ),
  )
]

#v(0.3em)

#category-title(
  "Experience",
)[
  #job-container(
    "Fullstack Software Engineer", "Val Town", "Easy, fun, & instant serverless Javascript functions.", "May 2025", "Present", "NYC",
  )[
    - Designed and wrote our CLI companion (#link("https://404wolf.com/posts/valtowncli/")[blog], #link("https://github.com/val-town/vt")[code])
      to author Vals locally, with atomic bidirectional syncing.
    - Integrated Deno (Typescript) language server into Codemirror web editor (#link("https://404wolf.com/posts/valtowneditor/")[blog], #link("https://github.com/val-town/vtlsp")[code])
      w/Cloudflare Containers.
    - Helped architect and implement custom K8s load balancing system. Worked on
      backend redesign to enable higher throughput with sharding using Pingora, and
      eventual WebSocket support via Undici w/Unix socket file watchers.
    - Currently working on next-edit code completions.
  ]

  #job-container(
    "Participant", "Recurse Center", "Brooklyn-based self-led coding retreat", "June 2023", "August 2024", "NYC & Remote",
  )[
    - Learned Nix and contributed packages to #link("https://github.com/NixOS/nixpkgs")[nixpkgs].
      Working on project to dockerize Android emulators with Nix docker tools (#link("https://404wolf.com/posts/androidinthebrowser/", "blog"), #link("https://github.com/404Wolf/android-docker")[code]).
      Configured NixOS desktop system from scratch w/Hyprland, home-manager, and other
      extensive customizations (#link("https://github.com/404wolf/nixos-laptop")[code]).
    - Created Python Django server to merge Webster, OpenAI, and other API data into
      elegant English Vocab flashcard PDFs (#link("https://404wolf.com/posts/eclecticenglishvocabdeck/", "blog"), #link("https://github.com/orgs/Logophilio/repositories")[code]).
      Generated vector art using template SVGs and Chrome Devtools Protocol.
  ]

  #job-container(
    "Co-founder; Solo Software Engineer; Sales Manager", "Minecraft Name Autoclaiming", "Online self-run business", "June 2021", "July 2022", "Remote",
  )[
    - Developed (Python) system to autoclaim desirable Minecraft usernames at moment
      of release. Automated server deployment and account distribution for 50-80
      accounts/servers.
    - Implemented automatic name queue, server-setup scripts w/AsyncSSH & SFTP,
      concurrent deployments w/Vultr API & Aiohttp, & admin interfaces.
    - Facilitated sales process and auctions for over 100 buyers, generating \$6,000+
      in revenue with around 200 unique accounts sold. Maintained consistently
      positive customer feedback and regular reorders.
  ]
]

#category-title(
  "Projects",
)[
  #project-container(
    [DNA Nanotube Designer Tool ("NATuG") (#link("https://404wolf.com/posts/project/DNANanotubes")[blog], #link(
        "https://wolf-mermelstein-personal-website.s3.us-east-2.amazonaws.com/programOverview_0001_0001_0001.webm",
      )[demo], #link("https://github.com/NATuG3/NATuG3")[code])],
  )[
    DNA nanotechnology academic research project. Developed interactive PY-QT
    desktop app to streamline geometrically constrained DNA nanotube design.
    Collaborated w/bionanotechnologist to create important algorithms like
    determining helix strand switch behavior on junction clicks. Designed export
    file format. Wrote manual and began working on scholarly paper.
  ]

  #project-container(
    [CWRU Food Finder (#link("https://404wolf.com/posts/project/freeCwruFood")[blog], #link("https://free-cwru-food.404wolf.com/")[demo], #link("https://github.com/404Wolf/free-cwru-food")[code])],
  )[
    Website using fine-tuned OpenAI model w/Google Cloud Run & MongoDB automated
    workflow to scrape on-campus events and categorize by free food. 2024 1st
    place university hackathon project. About 50 visitors/month.
  ]
]

#category-title(
  "Skills",
)[
  #set list(spacing: 0.6em)

  - *Languages:* TypeScript/JavaScript, Nix, Go, Rust, Java, Bash, Lua, C/C++,
    Scheme/Racket, HTML & CSS, Markdown & LaTeX, Typst
  - *Tools:* Nix & NixOS, Linux, OCI Containers, Modern web frameworks (React, Next,
    React-router, Tailwind, Prisma/Drizzle, remark/rehype, etc), Modern python
    frameworks (numpy, pandas, django, PyQt/PyQtGraph, etc), Modern database systems
    (Postgres, Clickhouse, Redis/valkey), General devtools (Git, github workflows,
    gnu, etc), AWS (s3, ec2, etc), realtime networking WebAPIs (WebSockets, WebRTC,
    etc), Vim wizard :\)
]

#align(right)[
  #text(size: 6pt)[
    #link(
      "https://github.com/404wolf/resume-v2",
    )[Built with Nix; Source on GitHub]
  ]
]
