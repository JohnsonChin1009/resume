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
  items: (
    "Co-Director, Google Workspace Hackathon @ GDSC APU",
    "Guest Speaker, Notion @ Asia Pacific University",
  ),
)

// ── WORK EXPERIENCE ─────────────────────────────────────────────────────────

#section("Work Experience")

#entry(
  org: "Virtuals Protocol",
  location: "Kuala Lumpur",
  role: "Junior Software Engineer",
  date: "Oct 2025 - Present",
  cols: 2,
  items: (
    (
      "Software Engineering",
      (
        "Planned and deployed AWS infrastructure (Step Functions, ECS, Lambda, EventBridge) for the internal scoring pipeline, processing 30,000+ records daily",
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
        "Identified and refactored 10+ gaps in SDK functionality, reducing number of edge cases",
      ),
    ),
    (
      "Robotics",
      (
        "Built a fully sovereign, zero-cloud AI stack for the Unitree G1 humanoid robot — integrating STT, TTS, local LLM, and body movement control via Unitree SDK",
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
      "Organized industry level conferences such as DevFest KL, Cloud Day KL etc.",
      "Providing support and assistance to GCP users via content curation and presentation",
      "Managed social media presence and led outreach efforts to grow community engagement",
    ),
  ),
  (
    org: "MongoDB User Group KL", 
    role: "Volunteer", 
    date: "Jun 2024 – Present", 
    items: (
      "Spoke on MongoDB Security Basics at MUG KL Meetup #19 to 40 attendees", 
      "Volunteered at MongoDB.local Kuala Lumpur 2024",
    )
  ),
  (
    org: "OpenClaw KL",
    role: "Organizer & Speaker",
    date: "Mar 2026 - Present",
    items: (
      "Spoke on CLI, Skills, MCP to 200 attendees at OpenClaw KL Meetup #2",
      "Demonstrated how to build skills for OpenClaw agent and interesting use cases",
    )
  ),
  (
    org: "Independent",
    role: "Invited Hackathon Judge",
    date: "Sept 2025 - Present",
    items: (
      "CodeNection 2025 @ MMU",
      "Isek.AI ACG Buildathon 2025 @ Taylor's University",
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
    - *3rd Place*, Best Build on Scroll @ EthKL 2024
    - *2nd Place*, Protocol Labs @ ETHBangkok 2024
    - *3rd Place*, Best Build on Scroll & The Graph @ ETHUprising 2025
  ],
)
