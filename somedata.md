
All projects
AssignArch Branding
Supports Assign Arch Personal Branding, includes: 1. Support personal brand decision making 2. Plan marketing and sales strategy 3. Sales funnel design including Book, Online Course, Software, Education Game, Website, Newsletter, Social media, lead generation and sales conversion
Show more



How can I help you today?


Start a task in Cowork
AssignArch 網站需要 SSR 而非 CSR
Last message 4 days ago
Personal brand strategy for project management book launch
Last message 7 days ago
Creating a bilingual ConvertKit sequence
Last message 7 days ago
Personal brand strategy for project management book launch
Last message 7 days ago
Memory
Only you
Purpose & context NCCU is building a personal brand and creator ecosystem around a project management book titled Organized Through Chaos: A PM Survival Guide, targeting a November 2026 launch. The broader mission is helping PMs, project-adjacent professionals, and solopreneurs perform at high levels through efficient methods, lean operations, and AI. NCCU operates under two brand names: AssignArch (English) and 萬事屋阿泰 (Chinese), with the website at assignarch.com. The brand covers three content pillars: Project Management, Productivity & Systems, and Personal Growth. NCCU is based in Taiwan, lectures at NCCU, and is a doctoral researcher. An existing high-ticket corporate cohort (operations optimization and PM training) is a separate, energy-intensive offer that runs in parallel. Current state Website: Being rebuilt in custom code on a Linode server; logo designer already engaged. The current homepage is plain HTML. Architecture must support SSR or SSG (not CSR) to protect SEO — a critical requirement given that blog articles, book landing pages, and a bilingual URL structure (/en/ and /zh/) are core to the traffic strategy. Brand identity: Color palette finalized — Deep Navy (#1A2744), Forest Green (#2C4A3E), Sage (#7BBFAD), Near Black (#1C1C1E), Gray (#6B7280), Light Gray (#E5E7EB), White (#FFFFFF). Homepage mockup iterated through multiple rounds with alternating section backgrounds and a context-sensitive CTA button rule (navy buttons on light backgrounds, sage on dark). Email/newsletter: ConvertKit (Kit) setup uses a single sequence with Liquid conditional logic ({% if subscriber.language == "zh" %}) to serve English and Chinese subscribers without duplicate automations or extra cost. Bilingual subject line format: 中文標題 | English Subject, Chinese first, target under ~50 characters total. Sender email: hi@assignarch.com. Social: Threads is the most active platform (~1,800 followers, most comfortable). All other major platforms exist but are largely dormant. Content production: An AI agent system generates multi-platform content from a single source article, so strategy focuses on tone and platform role rather than production volume. Weekly time budget for content and marketing: 3–5 hours. On the horizon Book self-published in English on Amazon KDP (~$10 USD); Chinese edition to be pursued through a Taiwan publisher post-launch. Full pre-launch funnel and lead generation system to be built out. Blog system and dynamic pages to be developed on the Linode setup — must be SSR/SSG-compliant from the start. Platform reactivation and content cadence to be established across dormant channels. Key learnings & principles CSR is an SEO liability: Pure client-side rendering will silently undermine search indexing — a risk that may not surface until months later. All dynamic pages must be server-rendered or statically generated. Lean over elaborate: Every system decision is filtered through energy cost. Complexity that doesn't serve the November launch or long-term sustainability gets cut. Bilingual without duplication: The ConvertKit Liquid approach and translation-only content strategy (EN source → CN translation) avoids maintaining two parallel systems. Welcome sequence = pure value: No sales in the welcome sequence; trust-building first. Lead magnets have standards, not prescriptions: Quality and relevance criteria matter more than specific formats. Approach & patterns Prefers a direct, no-BS professional tone across all content and communications. Asks focused, specific follow-up questions rather than broad ones — iterates tightly. Strategy documents are built iteratively with explicit review rounds; NCCU provides numbered feedback points and expects precise revisions. Offer ladder is documented as available options, not a prescribed timeline. Platform role and tone are differentiated even when content originates from the same source. Tools & resources Hosting: Linode (custom code) Email: ConvertKit (Kit) with Liquid conditional logic for bilingual sequences Book distribution: Amazon KDP (English); Taiwan publisher (Chinese, future) Content: AI agent system for multi-platform repurposing Design: External logo designer engaged; HTML mockups for web UI iteration

Last updated 2 days ago

Instructions
Add instructions to tailor Claude’s responses

Files
1% of project capacity used

AssignArch_Color_Palette.md
61 lines

md



AssignArch_Color_Palette.html
188 lines

html



AssignArch_Homepage.html
328 lines

html



AssignArch_Brand_Strategy.md
463 lines

md



ConvertKit_Bilingual_Sequence_Guide.md
79 lines

md



AssignArch_Brand_Strategy.md
24.08 KB •463 lines
•
Formatting may be inconsistent from source

# ASSIGNARCH / 萬事屋阿泰
## Personal Brand & Creator Strategy
### Book Launch · Funnel · Content · Offers

**Book:** *Organized Through Chaos: A PM Survival Guide*
**Target Launch:** November 2026
**Prepared:** March 2026

---

# Strategy Overview

## How Content Flows (Workflow)

```
┌─────────────────────────────────────────────────────────┐
│  YOU: Write 1 article per week (EN)                     │
│  Time: 2-3 hours in one batch session                   │
└──────────────────────┬──────────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────────┐
│  AI AGENT: Translate to CN                              │
│  AI AGENT: Generate platform-specific content           │
│                                                         │
│  → Threads post (EN + CN)                               │
│  → LinkedIn post (EN)                                   │
│  → X / Twitter tweets (EN)                              │
│  → Instagram carousel text (CN)                         │
│  → Facebook share (CN)                                  │
└──────────────────────┬──────────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────────┐
│  YOU: Review & approve (15-20 min)                      │
└──────────────────────┬──────────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────────┐
│  AI AGENT: Schedule & publish across all platforms       │
│  CONVERTKIT: Newsletter goes out bi-weekly (EN + CN)    │
│  WEBSITE: Article published on blog (EN + CN)           │
└─────────────────────────────────────────────────────────┘
```

**Total weekly effort: ~3 hours** (2-3 hrs writing + 30 min review)

## How the Funnel Works

```
DISCOVERY                    CAPTURE                  NURTURE                    MONETIZE
─────────                    ───────                  ───────                    ────────

Social media posts    →    Lead magnet signup    →    Welcome sequence     →    Book (~$10)
Blog articles (SEO)   →    Book waitlist         →    Bi-weekly newsletter  →    Course / Cohort
Guest appearances     →    Newsletter signup     →    Ongoing free content  →    1-on-1 Coaching
Word of mouth         →                          →                         →    Corporate Cohort
                                                                           →    ERP Subscription
                                                                                (future)

                      ┌──────────────────────┐
                      │  All signups enter    │
                      │  ConvertKit with      │
                      │  language tag (EN/CN) │
                      │  → Same welcome       │
                      │    sequence (Liquid)   │
                      │  → Same newsletter    │
                      │    (translated)        │
                      └──────────────────────┘
```

**Key principle:** Each tier builds trust for the next. No one buys coaching without first reading your content. No company hires you for a cohort without knowing your thinking deeply.

---

# 1. Brand Foundation

## 1.1 Brand Identity

- **Brand Name (EN):** AssignArch
- **Brand Name (CN):** 萬事屋阿泰
- **Domain:** assignarch.com (bilingual, language toggle)
- **Brand Tone:** Direct, no-BS professional. You speak from experience, not theory. You simplify complexity without dumbing it down.

## 1.2 Brand Positioning Statement

I help PMs, professionals handling project work, and solopreneurs perform at high levels by introducing efficient methods, lean operations, and AI — drawn from 15+ years of real-world experience surviving chaotic projects.

## 1.3 Content Pillars

All content across every platform maps back to these three pillars. PMs and professionals who manage projects are the core audience across all three.

| Pillar | What It Covers | Who It Serves |
|--------|---------------|---------------|
| Project Management | PM fundamentals, crisis management, communication, cost thinking, risk sensing, surviving nightmare projects | PMs, professionals managing projects, aspiring PMs |
| Productivity & Systems | Workflows, tools (Heptabase, AI agents), decision-making frameworks, getting more done with less | PMs, solopreneurs, knowledge workers, professionals managing projects |
| Personal Growth | Career planning, life design, thinking frameworks, problem-solving | PMs, young professionals, career switchers, professionals managing projects |

## 1.4 Audience Segments

| Segment | Needs | Entry Point |
|---------|-------|-------------|
| New/Aspiring PMs | Fundamentals, survival skills, career start | Book, free content, newsletter |
| Professionals who manage projects | Better ways to handle project work without formal PM training | Blog, lead magnets, newsletter, course |
| Solo/Micro-Company Owners | Efficiency, AI tools, ops frameworks | Blog, course, cohort |

---

# 2. Website Architecture

The redesigned assignarch.com serves as your central hub. It must handle two languages, support the full offer funnel, and convert visitors into email subscribers. Below is the page-by-page plan.

## 2.1 Site Structure

| Page | Purpose | Key Elements |
|------|---------|-------------|
| Home | First impression + routing | Hero with book announcement, content pillars overview, newsletter CTA, language toggle |
| About | Trust & credibility | Your story (EN rewrite), credentials, photo, mission statement, social proof |
| Book Landing Page | Pre-launch capture → sales page post-launch | Book cover, synopsis, author credibility, email capture for launch notification, early-bird offer |
| Blog / Articles | SEO + authority + content hub | Categorized by pillars, bilingual, search/filter, each post has email CTA |
| Services | Mid-to-high ticket conversion | Tiered: coaching → courses → corporate cohort. Clear pricing or inquiry CTA |
| Free Resources | Lead magnet delivery + trust | Downloadable templates, checklists, guides. Gated by email signup |
| Portfolio / Case Studies | B2B proof | Corporate cohort results, speaking engagements, teaching at NCCU |
| Newsletter Signup | Dedicated capture page | Split EN/CN signup, value proposition, past issue previews |

## 2.2 Navigation Menu Recommendation

Eight pages is too many for a top nav. Recommended structure to keep the menu lean:

**Primary Nav (visible):** Home · About · Blog · Book · Services

**Grouped under "Resources" dropdown:** Free Resources, Portfolio / Case Studies, Newsletter Signup

This keeps the menu to 5-6 items max. The newsletter CTA can also live as a persistent button or banner rather than a nav item, since its job is conversion, not navigation.

## 2.3 Bilingual Strategy

- Single domain with language toggle (assignarch.com/en/ and assignarch.com/zh/)
- EN is the source content; CN is a direct translation of the same content
- Shared visual design, shared content structure, two language versions
- URL structure: /en/blog/article-slug and /zh/blog/article-slug for SEO

## 2.4 Website Conversion Points

Every page must have at least one email capture opportunity:

- Home: hero section CTA + floating bar
- Blog posts: inline CTA after first section + end-of-post CTA
- Book page: primary capture (pre-launch) or buy button (post-launch)
- Free Resources: gated downloads requiring email
- Services: inquiry form that also adds to email list (with consent)

---

# 3. Email & Newsletter Strategy

## 3.1 Tool & Setup

- **Platform:** ConvertKit (Kit) — you already have experience with it
- **Sender address:** hi@assignarch.com (single address for both EN and CN)
- **EN subscribers:** New list, starting from 0. Primary growth vehicle for book launch.
- **CN subscribers:** Reactivate and migrate existing 80 subscribers. Grow alongside CN content.
- **Segmentation:** Use a custom field (`language = en` or `language = zh`) to tag subscribers at signup. Signup forms on /en/ pages auto-tag EN; /zh/ pages auto-tag CN.

### Bilingual Welcome Sequence (Cost-Saving Approach)

Instead of paying for two separate sequences, use **one sequence with Liquid conditional content**. Each email contains both EN and CN versions, and ConvertKit's Liquid logic displays only the matching language based on the subscriber's `language` field.

Example template structure:
```
{% if subscriber.language == "zh" %}
[Chinese version of email content]
{% else %}
[English version of email content]
{% endif %}
```

This keeps everything in one sequence, one plan tier, zero extra cost. Broadcasts for the regular newsletter use the same Liquid logic or segment-filtered sends.

## 3.2 Newsletter Format

EN and CN newsletters share the same content — CN is a translation of the EN issue. One workflow, two languages.

| Element | Details |
|---------|---------|
| Name | TBD (finalize at launch) |
| Frequency | Bi-weekly (both EN and CN) |
| Format | 1 insight + 1 actionable tip + CTA |
| Tone | Direct, practical, no fluff |
| CTA | Resource download, reply to engage, or relevant link |

## 3.3 Welcome Email Sequence

Once someone signs up (via lead magnet or newsletter), they enter this automated welcome sequence. This sequence is pure value — no sales, no book promotion. Book-related announcements belong in regular newsletter issues as a soft mention at the bottom, not as dedicated emails.

| Email # | Timing | Subject / Purpose |
|---------|--------|-------------------|
| 1 | Immediate | Welcome + deliver lead magnet + your story in 3 sentences |
| 2 | Day 3 | Your #1 PM survival lesson — a practical framework they can use today |
| 3 | Day 7 | The biggest mistake new PMs make (value + authority building) |
| 4 | Day 11 | How you think about productivity differently (personal growth angle) |
| 5 | Day 14 | What to expect from this newsletter + invite to reply with their biggest challenge |

**Book mentions:** Include a small, non-pushy footer line in regular newsletter issues (e.g. "I'm writing a book about surviving chaotic projects — more soon"). Never make it the subject or main CTA of the welcome sequence.

---

# 4. Lead Magnet Strategy

You need lead magnets to convert website visitors and social followers into email subscribers. Below are the standards for what makes a good lead magnet, followed by current ideas.

## 4.1 Lead Magnet Standards

Any lead magnet you create should meet ALL of these criteria:

| Standard | What It Means |
|----------|--------------|
| **Immediately useful** | The reader can apply it within 10 minutes of downloading |
| **Specific outcome** | It solves one clear problem, not "everything about PM" |
| **Low effort to consume** | 1-3 pages max. Checklist, worksheet, or single framework |
| **Tied to a content pillar** | Maps directly to PM, Productivity, or Personal Growth |
| **Not gated book content** | Lead magnets stand alone — no free chapters or book excerpts |
| **Works in both languages** | Easy to translate EN → CN without losing value |
| **Evergreen** | Doesn't expire or require constant updating |
| **Branded** | Carries your name, domain, and visual identity |

## 4.2 Current Lead Magnet Ideas

These meet the standards above. Pick one to start, rotate others in over time:

- **PM Survival Checklist:** "10 Things to Do Before Your Project Goes Off the Rails" — actionable, tied to PM pillar
- **Career Planning Checklist:** Self-assessment worksheet for professionals rethinking their path — tied to Personal Growth pillar
- **PM Starter Kit:** Template bundle (project brief, risk register, stakeholder map) — practical, tied to PM pillar
- **"Chaos to Clarity" Framework:** A 1-page visual framework for turning messy situations into structured plans — brandable and shareable

## 4.3 Lead Magnet Funnel Flow

Social post → Link in bio → Landing page → Email signup → Deliver lead magnet → Welcome sequence → Newsletter → Deeper offers

---

# 5. Social Media Platform Strategy

Your AI agent handles content repurposing from one source article. The strategy below defines what each platform is FOR, the tone, and how content flows from your article to each channel.

## 5.1 Platform Roles & Priority

| Platform | Role | Priority | Language | Content Type |
|----------|------|----------|----------|-------------|
| Threads | Primary — home base for writing | HIGH | EN + CN | Thread-style insights, PM tips, hot takes |
| LinkedIn | Authority & B2B visibility | HIGH | EN primary | Long-form posts, PM thought leadership, corporate proof |
| X (Twitter) | Discovery & EN networking | MEDIUM | EN | Sharp 1-2 line takes, repurposed from Threads |
| YouTube | Long-form authority (post-launch) | LOW (for now) | EN first | PM tutorials, book companion content — start after launch |
| Podcast | Audio strip from YouTube | LOW (for now) | EN first | Same content as YouTube, audio-only distribution |
| Instagram | Visual presence & CN reach | LOW | CN primary | Carousel infographics from articles |
| Facebook | CN community & older demo | LOW | CN | Share blog posts, community engagement |

## 5.2 Platform-Specific Tone Guide

Your overall tone is direct and no-BS. Here is how it adapts per platform:

### Threads (Home Base)

- Tone: Conversational expert. Like texting a mentor who doesn't sugarcoat.
- Format: 3-7 post threads. Open with a hook, close with a CTA or question.
- Example hooks: "Most PMs fail not because they lack skill — they lack systems." / "Your project isn't chaotic. Your process is."
- Post frequency: 3-5x/week (your agent can handle this)

### LinkedIn (Authority)

- Tone: Professional but human. Lead with insight, not self-promotion.
- Format: 150-300 word posts. Personal story + lesson structure works best.
- Always end with a question or clear takeaway — LinkedIn rewards comments.
- Use for: book announcements, corporate cohort results, PM industry takes.
- Post frequency: 2-3x/week

### X / Twitter (Discovery)

- Tone: Sharpest, most compressed version of your thinking. Punchy.
- Format: Single tweets or 2-3 tweet threads max. Repurpose best Threads lines.
- Post frequency: 3-5x/week (agent-repurposed from Threads)

### YouTube + Podcast (Post-Launch Only)

- Tone: Teacher mode. Calm, structured, clear. Think "experienced PM explaining to a junior."
- Format: 8-15 min YouTube tutorials. Podcast is the audio stripped from the same video — no extra production.
- Do NOT start this before the book launches. Protect your energy.
- Post frequency: 1x/week or biweekly after launch

### Instagram (Visual / CN)

- Tone: Clean, visual, insightful. Less text, more designed content.
- Format: Carousel posts (5-7 slides) summarizing blog articles or PM frameworks.
- Post frequency: 1-2x/week (agent-generated carousels)

### Facebook (CN Community)

- Tone: Slightly warmer, community-oriented. Good for longer CN discussions.
- Format: Share blog posts with a personal note. Engage in comments.
- Post frequency: 1-2x/week (share from blog)

## 5.3 Content Repurposing Flow

You write one article. Your AI agents handle the rest — platform-specific content generation is managed by your other agent.

1. **Write 1 article per week** (blog post / newsletter issue — EN source)
2. **CN translation** of the same article
3. **AI agents generate:** Threads post, LinkedIn post, X tweets, IG carousel, FB share
4. **You review and approve** (15-20 min)
5. **Agents schedule across platforms**

**Total weekly effort:** 2-3 hours writing + 30 min reviewing = fits your 3-5 hour budget

---

# 6. Funnel & Offer Ladder

## 6.1 The Full Funnel

Your funnel moves people from discovery to high-ticket offers. Each tier builds trust for the next:

| Tier | Offer | Price | Audience | Trust Required |
|------|-------|-------|----------|---------------|
| Free | Blog, social content, lead magnets, newsletter | $0 | Everyone | None |
| Low | Book: Organized Through Chaos | ~$10 USD | New/aspiring PMs, professionals managing projects | Low — book description sells it |
| Mid | Online course / cohort | $297-497 | Serious learners | Medium — book + newsletter trust |
| Mid-High | 1-on-1 PM coaching | $150-300/hr | Individuals wanting personal guidance | High — they know your thinking |
| High | Corporate cohort (ops + PM training) | High ticket / year | B2B micro-companies | Very high — trust with company secrets |
| Recurring | ERP subscription (future) | Monthly SaaS | Corporate cohort graduates | Highest — ongoing relationship |

## 6.2 Available Offers (decide sequencing later)

These are the offers in your ecosystem. You decide which to build and when based on energy, demand, and audience readiness.

| Offer | Format | Audience | Notes |
|-------|--------|----------|-------|
| Book: Organized Through Chaos | Self-published EN (Amazon KDP) | New PMs, professionals | First product, funnel entry point |
| CN Book | Published via Taiwan publisher | CN audience | Leverage EN success for publisher pitch |
| Online course / cohort | Video + live sessions | Serious learners | Pilot with small beta group first |
| 1-on-1 PM coaching | Live sessions | Individuals | Raise price from current 1000 NTD, position as premium |
| Corporate cohort | Year-long engagement | B2B micro-companies | High ticket, high energy — limit capacity |
| ERP subscription | SaaS product | Corporate cohort graduates | Only after cohort proves demand |

---

# 7. Content Revamp Plan

Your existing CN articles need rewriting, and you plan to add foundational explainer content. All content is written in EN first, then translated to CN.

## 7.1 Existing Content Audit

- Review all current articles on assignarch.com (approx. 12-15 posts)
- Categorize each: rewrite, merge, archive, or keep as-is
- Rewrite priority: PM series articles first (they support the book)
- Every rewritten article is written in EN, then translated to CN

## 7.2 New Foundational Content (Priority Articles)

These are "101-level" articles that your target audience will search for. They serve as SEO entry points and trust builders:

| Article Topic | Pillar | Purpose |
|--------------|--------|---------|
| What Does a Project Manager Actually Do? | PM | SEO foundational, book funnel entry |
| PM vs. Product Manager: The Real Difference | PM | Common search query, authority builder |
| How to Run Your First Project (Step by Step) | PM | Directly tied to book content |
| 5 PM Tools Every New PM Should Know | Productivity | Practical, shareable, linkable |
| How I Use AI to Run a One-Person Business | Productivity | Differentiator content, attracts solopreneurs |
| The 3 Thinking Frameworks That Changed How I Work | Personal Growth | Personal brand authority piece |

All articles published in EN + CN (translated).

## 7.3 Content Calendar Approach

- **Weeks 1-4 (April):** Rewrite top 4 CN articles + create EN versions
- **Weeks 5-8 (May):** Write 4 new foundational EN articles + CN translations
- **Weeks 9-12 (June):** Mix of rewrites and new content, start newsletter
- **July-October:** Weekly publishing cadence, ramp up social distribution
- **November:** Book launch content blitz

---

# 8. Master Timeline: March → November 2026

**Note:** March is for planning and strategic decisions. Execution begins in April.

## Phase 0: Planning (March)

1. Finalize this strategy document — review, adjust, commit
2. Brief designer on logo and brand colors
3. Plan website information architecture and page wireframes
4. Decide on primary lead magnet and outline it
5. Set up ConvertKit accounts (EN/CN lists, basic forms)
6. Audit existing content — categorize what to rewrite, merge, or archive

## Phase 1: Foundation (April)

1. Receive brand identity assets from designer
2. Build new website (custom code on Linode)
3. Set up ConvertKit: welcome sequences, signup forms, automation
4. Create and design primary lead magnet
5. Rewrite first 4 articles (EN source + CN translation)
6. Set up all social bios with consistent branding + link-in-bio page

## Phase 2: Content Engine (May – June)

1. Launch website with core pages live
2. Publish 4 new foundational articles (EN + CN)
3. Start bi-weekly newsletter (EN + CN, same content translated)
4. Begin consistent Threads posting (3-5x/week via AI agent)
5. Begin LinkedIn posting (2-3x/week)
6. Set up book landing page with email capture ("Get notified at launch")

## Phase 3: Growth (July – September)

1. Weekly content publishing cadence (1 article → multi-platform)
2. Guest appearances: podcasts, LinkedIn Lives, or collaborations with other PM creators
3. Optimize lead magnets based on conversion data
4. Create secondary lead magnet
5. Build book launch email sequence (separate from welcome sequence)
6. Goal: 500+ EN subscribers, 300+ CN subscribers by end of September

## Phase 4: Launch (October – November)

1. October: pre-launch buzz — book cover reveal, sneak peeks, early access offers
2. Early November: launch week — daily emails, social blitz, limited-time bonus
3. Mid November: sustain momentum — reader testimonials, behind-the-scenes content
4. Late November: reflect + plan next phase — which offer to build next (course, cohort, coaching), YouTube + podcast strategy, CN publisher outreach

---

# 9. Energy Management Rules

You have 3-5 hours per week. The corporate cohort already drains you. These rules protect your energy:

- **One source article per week.** Your AI agent handles the rest. If you can't write the article, skip that week. No guilt.
- **No YouTube or Podcast until after book launch.** It's a time and energy black hole. Revisit in December 2026. Podcast is just the audio strip from YouTube — no extra production needed.
- **Threads first, everything else second.** If you only have 30 minutes, write a Threads post. That's enough.
- **Batch content creation.** Dedicate one block (2-3 hours) to writing. Don't spread it across the week.
- **Automate everything possible.** AI agents post, ConvertKit automates emails, website captures leads 24/7.
- **Say no to new platforms.** No TikTok, no new tools until the book is launched.
- **Review metrics monthly, not daily.** Check subscriber count and top posts once a month. That's it.

---

# 10. Success Metrics

Fill in your current stats to track progress toward launch targets.

| Metric | Current (Mar 2026) | Target (Nov 2026) | How to Track |
|--------|-------------------|-------------------|-------------|
| EN email subscribers | ___0___ | 500+ | ConvertKit dashboard |
| CN email subscribers | ___80___ | 300+ | ConvertKit dashboard |
| Website monthly visitors | _______ | 2,000+ | Analytics (Plausible or similar) |
| Threads followers | ___1,800___ | 3,000+ | Platform analytics |
| LinkedIn followers | _______ | 2,000+ | LinkedIn analytics |
| X / Twitter followers | _______ | _______ | Platform analytics |
| Instagram followers | _______ | _______ | Platform analytics |
| Facebook followers | _______ | _______ | Platform analytics |
| YouTube subscribers | _______ | N/A (post-launch) | Platform analytics |
| Blog posts published (EN) | ___0___ | 20+ | Content calendar |
| Blog posts published (CN) | ___~15___ | 20+ (rewritten + new) | Content calendar |
| Book pre-launch signups | ___0___ | 300+ | ConvertKit tag/segment |