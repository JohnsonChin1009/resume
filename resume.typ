#import "template.typ": resume, section, entry, compact-grid

#show: resume.with(
  name: "Hong Wei Chin (Johnson)",
  tagline: "Full-Stack Developer  |  DevRel  |  Community Builder",
  contact: (
    "KL, Malaysia",
    "(+60) 11 208 94395",
    "johnsonchin1009@gmail.com",
    "0xjohnson.xyz",
  ),
)

// ── EDUCATION ───────────────────────────────────────────────────────────────

#section("Education")

#entry(
  org: "Asia Pacific University",
  location: "Kuala Lumpur",
  role: "Bachelor of Science (Honours) in Software Engineering",
  date: "Nov 2023 - Oct 2025",
)

// ── WORK EXPERIENCE ─────────────────────────────────────────────────────────

#section("Work Experience")

#entry(
  org: "Virtuals Protocol",
  location: "Kuala Lumpur",
  role: "Full-Stack Engineer (Mid-Level)",
  date: "Oct 2025 - Sept 2026",
  cols: 2,
  items: (
    (
      "Software Engineering",
      (
        "Led development and architect infrastructure for edge computing with companion app and server stack",
        "Planned and deployed AWS infrastructure (Step Functions, ECS, Lambda, EventBridge) for an internal scoring pipeline, processing 30,000+ records daily",
        "Implemented PageRank-based ranking logic to rank 30,000+ crypto wallets within core product systems",
      ),
    ),
    (
      "Developer Relations",
      (
        "Onboarded 30+ agent teams into Agentic Commerce Protocol (ACP) by providing technical guidance and integration assistance",
        "Evaluated 50+ agent teams through manual and automated testing processes to maintain product quality standards"
      ),
    ),
    (
      "Quality Assurance (QA)",
      (
        "Built end-to-end automated test infrastructure for Node.js and Python SDKs from scratch — 500+ unit and integration tests with 85%+ coverage",
        "Performed manual QA validation on 20+ on-chain and platform features prior to release",
        "Identified and refactored 10+ gaps in SDK functionality, reducing number of edge cases and points of failure",
      ),
    ),
    (
      "Robotics",
      (
        "Built a fully sovereign, zero-cloud AI stack for Unitree G1 humanoid robot — integrating STT, TTS, local LLM, and body movement control via UnitreeSDK",
        "Trained custom wake word using openWakeWord library achieving 90% accuracy for internal R&D product that runs on edge devices using onnxruntime",
        "Solo built custom firmware + MentraOS fork that runs on dual-chip (MTK + BES) edge devices with optimized battery and cpu usage"
      )
    ),
  ),
)

// ── SPEAKING & COMMUNITY ────────────────────────────────────────────────────

#section("Community Building")

#compact-grid(
  (
    org: "GDG Cloud KL",
    role: "Organizer",
    date: "Aug 2025 – Present",
    items: (
      "Organized industry level conferences such as DevFest KL, Cloud Next Extended etc.",
      "Providing support and assistance to GCP users via content curation and presentation",
    ),
  ),
  (
    org: "MongoDB User Group KL", 
    role: "Core Contributor", 
    date: "Jun 2024 – Present", 
    items: (
      "Spoke on MongoDB Security Basics at MUG KL Meetup #19 to 40 attendees", 
      "Co-hosted MongoDB Meetups with MongoDB Champions",
    )
  ),
  (
    org: "Claw Collective KL",
    role: "Core Contributor",
    date: "Mar 2026 - Present",
    items: (
      "Spoke on CLI, Skills, MCP to 200 attendees at OpenClaw KL Meetup #2",
      "Lead Mentor for OpenClaw KL Builder Campus Cohort 01",
    )
  ),
  (
    org: "Notion Malaysia",
    role: "Core Contributor",
    date: "Sept 2026 - Present",
    items: (
      "Deliver curated content to community",
      "Handle event logistics",
    )
  )
)

// ── SKILLS ──────────────────────────────────────────────────────────────────

// ── OPEN SOURCE + SKILLS ────────────────────────────────────────────────────

#v(4pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  [
    #text(weight: "bold")[OPEN SOURCE CONTRIBUTIONS]
    #v(-3pt)
    #line(length: 100%, stroke: 0.5pt)
    #v(2pt)
    - *Virtuals Protocol SDK* — Built test infrastructure; 500+ tests, 85%+ coverage
    - *Typst* — WIP
    - *NeoVim* — WIP
  ],
  [
    #text(weight: "bold")[HACKATHONS]
    #v(-3pt)
    #line(length: 100%, stroke: 0.5pt)
    #v(2pt)
    - *3rd Place*, Best Build on Scroll \@ EthKL 2024
    - *2nd Place*, Protocol Labs \@ ETHBangkok 2024
    - *3rd Place*, Best Build on Scroll & The Graph \@ ETHUprising 2025
  ],
)
