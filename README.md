# Skill Library

A collection of **418 reusable AI agent skills** organized into **31 plugins**. Each plugin is independently installable and works with any AI tool — Claude, ChatGPT, Gemini, Cursor, Copilot, Windsurf, Aider, or any LLM API.

> **54 roles. 31 plugins. 9 AI tools. Pick your role — your agent levels up.**

Chinese users can also search and install skills through [Skills宝](https://skilery.com).

---

## Quick Start

```bash
# Interactive — pick your role from a menu
./install.sh

# Direct — install for your role
./install.sh mobile-engineer
./install.sh sales
./install.sh executive

# Export for any AI tool
./install.sh mobile-engineer --export cursor
./install.sh sales --export chatgpt
./install.sh backend-engineer --export gemini

# Preview before installing
./install.sh product-manager --preview
```

---

## Table of Contents

- [Roles](#roles)
- [AI Tool Support](#ai-tool-support)
- [Plugins](#plugins)
- [All Skills](#all-skills)
- [Suggested Combinations](#suggested-combinations)
- [Quick Bundles](#quick-bundles)
- [Skills by Platform](#skills-by-platform-cross-reference)
- [Installation](#installation)
- [Repository Structure](#repository-structure)
- [Contributing](#contributing)
- [License](#license)

---

## Roles

The installer maps **54 roles** to the right plugins automatically.

### Engineering (17 roles)

| Role | Description | Plugins Included |
|---|---|---|
| `mobile-engineer` | Mobile dev (Flutter / Android / iOS) | engineering, qa-testing, devops, design, documentation, security |
| `backend-engineer` | Backend services & APIs | engineering, devops, security, data, documentation, qa-testing |
| `frontend-engineer` | Frontend & UI development | engineering, design, qa-testing, documentation |
| `fullstack-engineer` | Full-stack development | engineering, devops, qa-testing, design, security, data, documentation |
| `software-architect` | System design & architecture | engineering, devops, security, data, documentation, design |
| `sre` | Site reliability engineering | devops, engineering, security, operations, risk-management, documentation |
| `cloud-engineer` | Cloud infrastructure & platforms | devops, engineering, security, operations, documentation |
| `devops-engineer` | Infrastructure & CI/CD | devops, engineering, security, operations, it-service-management, documentation |
| `qa-engineer` | Testing & quality assurance | qa-testing, engineering, devops, documentation, security |
| `security-engineer` | Application & cloud security | security, engineering, devops, risk-management, legal, documentation |
| `data-engineer` | Data pipelines & infrastructure | data, engineering, devops, documentation, analytics |
| `data-scientist` | Data analysis & ML | data, analytics, ai-operations, engineering, documentation |
| `data-analyst` | Business analytics & reporting | data, analytics, documentation, product-management |
| `ml-engineer` | Machine learning & AI ops | ai-operations, data, engineering, devops, security, documentation |
| `dba` | Database administration | engineering, data, devops, security, documentation |
| `technical-writer` | Documentation & knowledge | documentation, engineering, design, communications, enterprise-search |
| `release-manager` | Release coordination & deployment | devops, engineering, qa-testing, program-management, documentation |

### Leadership (13 roles)

| Role | Description | Plugins Included |
|---|---|---|
| `engineering-manager` | Engineering leadership | engineering, product-management, program-management, operations, communications, documentation |
| `product-manager` | Product strategy & delivery | product-management, design, analytics, data, engineering, communications, documentation |
| `program-manager` | Program & portfolio management | program-management, operations, communications, risk-management, documentation, productivity |
| `scrum-master` | Agile coaching & facilitation | program-management, engineering, qa-testing, productivity, communications, documentation |
| `executive` | General executive / C-suite | strategy, finance, communications, analytics, operations, product-management, risk-management |
| `cto` | Chief Technology Officer | engineering, devops, security, strategy, ai-operations, documentation, risk-management |
| `cpo` | Chief Product Officer | product-management, design, analytics, strategy, communications, data, documentation |
| `cfo` | Chief Financial Officer | finance, strategy, risk-management, analytics, operations, legal, procurement |
| `coo` | Chief Operating Officer | operations, strategy, finance, risk-management, program-management, communications, analytics |
| `vp-engineering` | VP / Director of Engineering | engineering, devops, program-management, operations, communications, documentation, security |
| `vp-product` | VP / Director of Product | product-management, design, analytics, strategy, communications, data, documentation |
| `vp-sales` | VP / Director of Sales | sales, marketing, finance, analytics, strategy, communications, partnerships |
| `vp-marketing` | VP / Director of Marketing | marketing, analytics, communications, design, strategy, sales, enterprise-search |

### Design (2 roles)

| Role | Description | Plugins Included |
|---|---|---|
| `designer` | UX/UI & product design | design, product-management, documentation, engineering, analytics |
| `ux-researcher` | User research & usability | design, product-management, analytics, data, documentation, communications |

### Business (22 roles)

| Role | Description | Plugins Included |
|---|---|---|
| `sales` | Sales & revenue | sales, marketing, customer-success, customer-experience, communications, analytics |
| `sales-engineer` | Technical pre-sales & demos | sales, engineering, documentation, product-management, communications |
| `account-manager` | Account management & expansion | sales, customer-success, customer-experience, communications, analytics, partnerships |
| `marketing` | Marketing & growth | marketing, analytics, communications, design, sales, enterprise-search |
| `growth-marketer` | Growth marketing & experimentation | marketing, analytics, data, product-management, communications |
| `customer-support` | Customer support & service | customer-support, customer-experience, documentation, enterprise-search, communications |
| `customer-success` | Customer success & retention | customer-success, customer-support, sales, analytics, communications |
| `business-analyst` | Business analysis & strategy | analytics, data, product-management, operations, documentation, strategy |
| `solutions-architect` | Solutions architecture & pre-sales | engineering, sales, product-management, documentation, partnerships, security |
| `partnerships-manager` | Partnerships & alliances | partnerships, sales, marketing, communications, legal, product-management |
| `operations` | Business & IT operations | operations, devops, it-service-management, security, documentation, risk-management |
| `it-manager` | IT service management | it-service-management, operations, security, devops, documentation, risk-management |
| `hr` | Human resources & people ops | human-resources, learning-development, communications, operations, productivity |
| `recruiter` | Talent acquisition | human-resources, communications, operations, productivity |
| `finance` | Finance & FP&A | finance, analytics, operations, risk-management, legal, procurement |
| `auditor` | Audit & internal controls | finance, legal, risk-management, operations, security, documentation |
| `legal` | Legal & compliance | legal, security, operations, risk-management, finance, documentation |
| `compliance-officer` | Regulatory compliance | legal, security, risk-management, operations, documentation |
| `procurement-manager` | Procurement & vendor management | procurement, finance, legal, operations, supply-chain, risk-management |
| `supply-chain` | Supply chain & logistics | supply-chain, procurement, operations, finance, risk-management, analytics |
| `sustainability` | ESG & sustainability | sustainability, operations, finance, legal, analytics |
| `consultant` | Management & strategy consulting | strategy, analytics, communications, product-management, operations, documentation |

---

## AI Tool Support

Export role-specific skills for **any AI tool**:

```bash
./install.sh <role> --export <tool>
```

| Tool | Command | Output | How to Use |
|---|---|---|---|
| **Cursor** | `--export cursor` | `.cursorrules` | Copy as `.cursorrules` in your project root |
| **GitHub Copilot** | `--export copilot` | `.copilot-instructions.md` | Copy to `.github/copilot-instructions.md` in your repo |
| **ChatGPT** | `--export chatgpt` | Markdown prompt | Paste into Custom GPT instructions or upload to a ChatGPT Project |
| **Gemini** | `--export gemini` | Markdown prompt | Paste into a Gem's instructions or use in AI Studio / Vertex AI |
| **Claude** | `--export claude` | Markdown prompt | Upload as project knowledge in claude.ai or use as API system prompt |
| **Windsurf** | `--export windsurf` | `.windsurfrules` | Copy as `.windsurfrules` in your project root |
| **Aider** | `--export aider` | Conventions file | Pass with `aider --read exports/<role>.aider.md` |
| **Any LLM API** | `--export api` | System prompt | Use as `system` message with OpenAI, Anthropic, Google, Mistral, Groq, etc. |
| **Universal** | `--export markdown` | Plain markdown | Works anywhere — paste, upload, or reference |
| **All at once** | `--export all` | All formats | Generates every format above into `exports/` |

---

## Plugins

31 plugins organized by domain.

| Plugin | Skills | Description |
|---|---|---|
| [ai-operations](ai-operations/) | 13 | Prompt management, model selection, fine-tuning, RAG pipelines, AI governance, monitoring, synthetic data review |
| [analytics](analytics/) | 10 | KPI definition, dashboard design, data modeling, attribution, cohort analysis, predictive analytics |
| [communications](communications/) | 14 | Crisis comms, executive briefings, press releases, speeches, media training, newsletters, change comms |
| [customer-experience](customer-experience/) | 10 | Journey mapping, NPS analysis, VoC, service design, CX dashboards, loyalty programs |
| [customer-success](customer-success/) | 11 | Health scoring, QBR prep, churn prevention, advocacy, CSM handoffs, usage analytics |
| [customer-support](customer-support/) | 10 | Ticket triage, chatbot design, self-service optimization, CSAT, support training |
| [data](data/) | 17 | SQL, visualization, pipelines, ML evaluation, data governance, data catalog, statistical analysis |
| [design](design/) | 11 | Design critique, sprints, wireframe review, motion specs, accessibility, UX writing |
| [devops](devops/) | 17 | CI/CD, chaos engineering, containers, GitOps, monitoring, SLOs, disaster recovery, mobile CI/CD, app store releases |
| [documentation](documentation/) | 12 | API docs, release docs, video scripts, knowledge bases, changelogs, architecture diagrams |
| [engineering](engineering/) | 45 | Code review, architecture, API/SDK design, mobile (11 skills), backend architecture, cross-platform strategy, SOLID |
| [enterprise-search](enterprise-search/) | 11 | Cross-tool search, knowledge graphs, taxonomy design, information architecture, content curation |
| [finance](finance/) | 15 | Budgeting, forecasting, financial modeling, tax planning, audit preparation, cost optimization |
| [human-resources](human-resources/) | 15 | Recruiting, D&I, workforce planning, succession, engagement, performance reviews |
| [it-service-management](it-service-management/) | 10 | ITIL processes — change, incident, problem, release, knowledge, configuration management |
| [learning-development](learning-development/) | 12 | Course design, e-learning, competency mapping, mentoring, certification programs |
| [legal](legal/) | 12 | Contracts, compliance, IP review, corporate governance, regulatory tracking, litigation |
| [marketing](marketing/) | 13 | Campaigns, content marketing, paid media, influencer strategy, SEO, conversion optimization |
| [operations](operations/) | 15 | SOPs, workflow design, resource planning, OKR tracking, budget and SLA reviews |
| [partnerships](partnerships/) | 11 | Partner evaluation, channel strategy, ecosystem mapping, revenue sharing, JV analysis |
| [procurement](procurement/) | 11 | RFP drafting, spend analysis, category management, e-procurement, compliance |
| [product-management](product-management/) | 17 | Feature specs, product launches, beta programs, analytics, prioritization, roadmaps |
| [productivity](productivity/) | 12 | Task management, automation audit, delegation, focus planning, time audits |
| [program-management](program-management/) | 11 | RAID logs, stakeholder analysis, benefits realization, portfolio governance, lessons learned |
| [qa-testing](qa-testing/) | 14 | Test planning, security testing, accessibility testing, load testing, automation strategy, mobile testing |
| [risk-management](risk-management/) | 11 | Risk registers, BCP, crisis simulation, cyber risk, fraud risk, operational risk |
| [sales](sales/) | 13 | Discovery calls, demos, territory plans, sales enablement, pricing strategy, forecasting |
| [security](security/) | 15 | Threat modeling, zero trust, cloud security, awareness programs, pen testing, IR plans |
| [strategy](strategy/) | 12 | SWOT, growth strategy, digital transformation, OKR frameworks, business model canvas |
| [supply-chain](supply-chain/) | 9 | Demand planning, inventory, logistics, warehouse ops, quality control, trade compliance |
| [sustainability](sustainability/) | 9 | ESG reporting, carbon footprint, circular economy, social impact, DEI reporting |

---

## All Skills

<details>
<summary><strong>AI Operations (13)</strong></summary>

`/agent-runbook` `/ai-governance` `/data-labeling-review` `/fine-tuning-plan` `/llm-risk-review` `/model-cost-review` `/model-monitoring` `/model-selection` `/prompt-eval` `/prompt-library` `/rag-pipeline` `/synthetic-data-review` `/workflow-automation-review`
</details>

<details>
<summary><strong>Analytics (10)</strong></summary>

`/ab-testing-analysis` `/attribution-modeling` `/cohort-analysis` `/dashboard-design` `/data-modeling` `/funnel-analysis` `/kpi-definition` `/predictive-analytics` `/report-automation` `/self-service-analytics`
</details>

<details>
<summary><strong>Communications (14)</strong></summary>

`/change-communication` `/change-faq` `/crisis-comms` `/executive-briefing` `/executive-email` `/internal-comms` `/media-training` `/meeting-agenda` `/newsletter` `/presentation-outline` `/press-release` `/speech-writing` `/stakeholder-messaging` `/town-hall-script`
</details>

<details>
<summary><strong>Customer Experience (10)</strong></summary>

`/complaint-analysis` `/customer-segmentation` `/cx-metrics-dashboard` `/experience-audit` `/feedback-management` `/journey-mapping` `/loyalty-program` `/nps-analysis` `/service-design` `/voice-of-customer`
</details>

<details>
<summary><strong>Customer Success (11)</strong></summary>

`/adoption-plan` `/churn-prevention` `/csm-handoff` `/customer-advocacy` `/customer-journey` `/expansion-plan` `/health-score-review` `/qbr-prep` `/renewal-risk` `/success-playbook` `/usage-analytics`
</details>

<details>
<summary><strong>Customer Support (10)</strong></summary>

`/chatbot-design` `/csat-analysis` `/customer-escalation` `/customer-research` `/draft-response` `/kb-article` `/self-service-optimization` `/support-metrics-review` `/support-training` `/ticket-triage`
</details>

<details>
<summary><strong>Data (17)</strong></summary>

`/analyze` `/build-dashboard` `/create-viz` `/data-catalog` `/data-context-extractor` `/data-governance` `/data-pipeline` `/data-quality` `/data-storytelling` `/data-visualization` `/etl-validation` `/experiment-readout` `/explore-data` `/metric-definition` `/ml-model-eval` `/sql-queries` `/statistical-analysis`
</details>

<details>
<summary><strong>Design (11)</strong></summary>

`/accessibility-review` `/design-critique` `/design-handoff` `/design-sprint` `/design-system` `/motion-design-spec` `/research-synthesis` `/usability-test-plan` `/user-research` `/ux-copy` `/wireframe-review`
</details>

<details>
<summary><strong>DevOps (17)</strong></summary>

`/alert-tuning` `/app-store-release` `/chaos-engineering` `/ci-cd-pipeline` `/cloud-cost-review` `/container-strategy` `/deployment-strategy` `/disaster-recovery` `/game-day-plan` `/gitops-review` `/incident-runbook` `/infrastructure-review` `/mobile-ci-cd` `/monitoring-setup` `/rollback-plan` `/service-catalog-review` `/slo-tracking`
</details>

<details>
<summary><strong>Documentation (12)</strong></summary>

`/api-docs` `/architecture-diagram` `/changelog` `/decision-record` `/implementation-guide` `/knowledge-base-design` `/onboarding-guide` `/release-documentation` `/runbook-writer` `/style-guide` `/troubleshooting-guide` `/video-script`
</details>

<details>
<summary><strong>Engineering (45)</strong></summary>

`/accessibility-implementation` `/api-design` `/architecture` `/auth-design` `/backend-architecture` `/build-vs-buy` `/caching-strategy` `/code-review` `/cost-estimation` `/cross-platform-strategy` `/database-design` `/debug` `/dependency-audit` `/deploy-checklist` `/design-review` `/documentation` `/event-architecture` `/feature-flag-plan` `/i18n-strategy` `/incident-response` `/legacy-code-assessment` `/microservices-decomposition` `/migration-plan` `/mobile-accessibility` `/mobile-analytics` `/mobile-architecture` `/mobile-code-review` `/mobile-data-persistence` `/mobile-design-patterns` `/mobile-networking` `/mobile-performance` `/mobile-push-notifications` `/mobile-security` `/mobile-state-management` `/monorepo-strategy` `/observability-design` `/performance-profiling` `/refactor-plan` `/sdk-design` `/solid-principles` `/standup` `/system-design` `/tech-debt` `/technical-rfc` `/testing-strategy`
</details>

<details>
<summary><strong>Enterprise Search (11)</strong></summary>

`/competitive-intel` `/content-curation` `/digest` `/information-architecture` `/knowledge-graph` `/knowledge-synthesis` `/search` `/search-analytics` `/search-strategy` `/source-management` `/taxonomy-design`
</details>

<details>
<summary><strong>Finance (15)</strong></summary>

`/audit-preparation` `/budget-plan` `/cash-flow-review` `/cost-optimization` `/expense-review` `/financial-forecast` `/financial-modeling` `/financial-report` `/financial-scenario-planning` `/investment-analysis` `/pricing-model` `/revenue-analysis` `/tax-planning` `/unit-economics` `/variance-analysis`
</details>

<details>
<summary><strong>Human Resources (15)</strong></summary>

`/comp-analysis` `/diversity-inclusion` `/draft-offer` `/employee-engagement` `/employee-survey` `/exit-interview` `/interview-prep` `/onboarding` `/org-planning` `/people-report` `/performance-review` `/policy-lookup` `/recruiting-pipeline` `/succession-planning` `/workforce-planning`
</details>

<details>
<summary><strong>IT Service Management (10)</strong></summary>

`/asset-management` `/capacity-management` `/change-management` `/configuration-management` `/incident-management` `/knowledge-management` `/problem-management` `/release-management` `/service-catalog` `/service-level-management`
</details>

<details>
<summary><strong>Learning & Development (12)</strong></summary>

`/certification-program` `/coaching-plan` `/competency-mapping` `/course-design` `/e-learning-design` `/knowledge-check` `/learning-path` `/mentoring-guide` `/onboarding-curriculum` `/skill-assessment` `/training-material` `/workshop-plan`
</details>

<details>
<summary><strong>Legal (12)</strong></summary>

`/compliance-check` `/contract-review` `/corporate-governance` `/data-processing-agreement` `/ip-review` `/legal-risk-assessment` `/license-review` `/litigation-management` `/nda-draft` `/privacy-policy` `/regulatory-tracking` `/terms-of-service`
</details>

<details>
<summary><strong>Marketing (13)</strong></summary>

`/brand-messaging` `/campaign-plan` `/competitor-analysis` `/content-calendar` `/content-marketing` `/conversion-optimization` `/email-copy` `/influencer-strategy` `/landing-page-copy` `/marketing-analytics` `/paid-media-plan` `/seo-audit` `/social-media-post`
</details>

<details>
<summary><strong>Operations (15)</strong></summary>

`/budget-tracking` `/capacity-plan` `/change-request` `/compliance-tracking` `/incident-postmortem` `/okr-tracking` `/process-doc` `/process-optimization` `/resource-planning` `/risk-assessment` `/runbook` `/sla-review` `/status-report` `/vendor-review` `/workflow-design`
</details>

<details>
<summary><strong>Partnerships (11)</strong></summary>

`/alliance-plan` `/channel-strategy` `/co-marketing-brief` `/ecosystem-mapping` `/integration-readiness` `/joint-venture-analysis` `/partner-evaluation` `/partner-onboarding` `/partner-qbr` `/revenue-sharing` `/technology-partnership`
</details>

<details>
<summary><strong>Procurement (11)</strong></summary>

`/category-management` `/contract-negotiation` `/e-procurement-strategy` `/negotiation-brief` `/procurement-compliance` `/purchase-justification` `/rfp-draft` `/sourcing-scorecard` `/spend-analysis` `/supplier-risk` `/vendor-shortlist`
</details>

<details>
<summary><strong>Product Management (17)</strong></summary>

`/ab-test-plan` `/beta-program` `/brainstorm` `/competitive-brief` `/feature-prioritization` `/go-to-market` `/metrics-review` `/product-analytics` `/product-brainstorming` `/product-launch` `/release-notes` `/roadmap-update` `/sprint-planning` `/stakeholder-update` `/synthesize-research` `/user-story` `/write-spec`
</details>

<details>
<summary><strong>Productivity (12)</strong></summary>

`/automation-audit` `/decision-log` `/delegation-framework` `/focus-plan` `/inbox-zero` `/meeting-notes` `/memory-management` `/start` `/task-management` `/time-audit` `/update` `/weekly-review`
</details>

<details>
<summary><strong>Program Management (11)</strong></summary>

`/benefits-realization` `/dependency-mapping` `/lessons-learned` `/milestone-review` `/portfolio-governance` `/program-change-management` `/program-status` `/raid-log` `/resource-allocation` `/stakeholder-analysis` `/steerco-update`
</details>

<details>
<summary><strong>QA & Testing (14)</strong></summary>

`/accessibility-testing` `/api-test-plan` `/bug-report` `/exploratory-testing` `/load-testing` `/mobile-testing` `/performance-test-plan` `/regression-check` `/release-signoff` `/security-testing` `/test-automation-strategy` `/test-case-prioritization` `/test-coverage` `/test-plan`
</details>

<details>
<summary><strong>Risk Management (11)</strong></summary>

`/bcp-plan` `/control-testing` `/crisis-simulation` `/cyber-risk` `/fraud-risk` `/insurance-review` `/operational-risk` `/risk-appetite` `/risk-register` `/risk-reporting` `/third-party-risk`
</details>

<details>
<summary><strong>Sales (13)</strong></summary>

`/account-plan` `/competitive-positioning` `/deal-analysis` `/demo-prep` `/discovery-call` `/objection-handling` `/pipeline-review` `/pricing-strategy` `/proposal-draft` `/sales-enablement` `/sales-forecast` `/territory-plan` `/win-loss-analysis`
</details>

<details>
<summary><strong>Security (15)</strong></summary>

`/access-review` `/cloud-security` `/compliance-audit` `/incident-investigation` `/incident-response-plan` `/pen-test-plan` `/security-architecture-review` `/security-awareness` `/security-checklist` `/security-exception-review` `/security-review` `/third-party-risk-review` `/threat-model` `/vulnerability-assessment` `/zero-trust-review`
</details>

<details>
<summary><strong>Strategy (12)</strong></summary>

`/business-model-canvas` `/competitive-landscape` `/digital-transformation` `/growth-strategy` `/investment-memo` `/market-entry` `/okr-framework` `/portfolio-review` `/strategic-options` `/strategic-roadmap` `/strategic-scenario-planning` `/swot-analysis`
</details>

<details>
<summary><strong>Supply Chain (9)</strong></summary>

`/demand-planning` `/inventory-optimization` `/logistics-review` `/quality-control` `/returns-management` `/supplier-management` `/supply-chain-risk` `/trade-compliance` `/warehouse-operations`
</details>

<details>
<summary><strong>Sustainability (9)</strong></summary>

`/carbon-footprint` `/circular-economy` `/dei-reporting` `/esg-report` `/green-procurement` `/impact-measurement` `/social-impact` `/sustainability-strategy` `/water-management`
</details>

---

## Suggested Combinations

These plugins are designed to work well together. Load them by use case.

<details>
<summary><strong>Engineering & Development (20 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Feature delivery planning | `product-management` + `engineering` + `qa-testing` | `/write-spec` -> `/architecture` -> `/testing-strategy` -> `/sprint-planning` |
| Bug triage and resolution | `customer-support` + `qa-testing` + `engineering` | `/ticket-triage` -> `/bug-report` -> `/debug` -> `/regression-check` |
| Incident response and communication | `engineering` + `operations` + `communications` | `/incident-response` -> `/status-report` -> `/incident-postmortem` -> `/internal-comms` |
| Secure release readiness | `security` + `engineering` + `qa-testing` + `documentation` | `/threat-model` -> `/security-review` -> `/deploy-checklist` -> `/regression-check` -> `/changelog` |
| Technical debt cleanup | `engineering` + `qa-testing` + `devops` + `documentation` | `/tech-debt` -> `/refactor-plan` -> `/test-coverage` -> `/ci-cd-pipeline` -> `/changelog` |
| Database and schema design | `engineering` + `documentation` + `security` | `/database-design` -> `/api-design` -> `/decision-record` -> `/security-review` |
| Performance optimization | `engineering` + `devops` + `qa-testing` | `/performance-profiling` -> `/performance-test-plan` -> `/monitoring-setup` -> `/deployment-strategy` |
| API platform launch | `engineering` + `documentation` + `security` + `devops` | `/api-design` -> `/api-docs` -> `/api-test-plan` -> `/security-review` -> `/deployment-strategy` |
| Data platform buildout | `data` + `devops` + `engineering` + `documentation` | `/data-pipeline` -> `/etl-validation` -> `/data-quality` -> `/monitoring-setup` -> `/architecture-diagram` |
| Mobile app development | `engineering` + `qa-testing` + `devops` | `/mobile-architecture` -> `/mobile-design-patterns` -> `/mobile-state-management` -> `/mobile-testing` -> `/mobile-ci-cd` -> `/app-store-release` |
| Mobile code quality | `engineering` + `qa-testing` | `/solid-principles` -> `/mobile-code-review` -> `/mobile-testing` -> `/mobile-performance` |
| Backend service design | `engineering` + `devops` + `security` | `/backend-architecture` -> `/api-design` -> `/database-design` -> `/deployment-strategy` -> `/security-review` |
| A/B testing lifecycle | `product-management` + `data` + `engineering` | `/ab-test-plan` -> `/statistical-analysis` -> `/metrics-review` -> `/decision-log` |
| AI feature launch | `ai-operations` + `engineering` + `security` + `documentation` | `/prompt-eval` -> `/llm-risk-review` -> `/model-cost-review` -> `/design-review` -> `/agent-runbook` |
| Experiment to rollout | `product-management` + `data` + `engineering` + `marketing` | `/ab-test-plan` -> `/statistical-analysis` -> `/feature-prioritization` -> `/deploy-checklist` -> `/landing-page-copy` |
| Developer onboarding | `engineering` + `documentation` + `learning-development` + `productivity` | `/system-design` -> `/onboarding-guide` -> `/learning-path` -> `/meeting-notes` -> `/weekly-review` |
| Architecture decision record | `engineering` + `documentation` + `security` | `/architecture` -> `/design-review` -> `/decision-record` -> `/architecture-diagram` |
| Microservices migration | `engineering` + `devops` + `documentation` + `qa-testing` | `/legacy-code-assessment` -> `/microservices-decomposition` -> `/migration-plan` -> `/testing-strategy` -> `/deployment-strategy` |
| Build vs buy evaluation | `engineering` + `finance` + `product-management` | `/build-vs-buy` -> `/cost-estimation` -> `/technical-rfc` -> `/decision-record` |
| Monorepo adoption | `engineering` + `devops` + `documentation` | `/monorepo-strategy` -> `/ci-cd-pipeline` -> `/dependency-audit` -> `/architecture-diagram` |

</details>

<details>
<summary><strong>DevOps, SRE & Cloud (10 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Platform operations hardening | `devops` + `operations` + `security` | `/infrastructure-review` -> `/alert-tuning` -> `/monitoring-setup` -> `/incident-runbook` -> `/security-checklist` |
| Incident lifecycle (end-to-end) | `devops` + `engineering` + `operations` + `communications` | `/alert-tuning` -> `/incident-runbook` -> `/incident-response` -> `/incident-postmortem` -> `/crisis-comms` |
| DevOps transformation | `devops` + `engineering` + `documentation` + `operations` | `/ci-cd-pipeline` -> `/deployment-strategy` -> `/disaster-recovery` -> `/infrastructure-review` -> `/process-doc` |
| Knowledge recovery after incident | `engineering` + `operations` + `documentation` + `enterprise-search` | `/incident-postmortem` -> `/decision-record` -> `/runbook-writer` -> `/knowledge-synthesis` |
| SRE reliability program | `devops` + `engineering` + `operations` + `risk-management` | `/slo-tracking` -> `/alert-tuning` -> `/chaos-engineering` -> `/game-day-plan` -> `/incident-runbook` |
| Cloud cost optimization | `devops` + `finance` + `engineering` | `/cloud-cost-review` -> `/infrastructure-review` -> `/cost-optimization` -> `/decision-record` |
| Cloud migration | `devops` + `engineering` + `security` + `documentation` | `/infrastructure-review` -> `/migration-plan` -> `/container-strategy` -> `/deployment-strategy` -> `/disaster-recovery` |
| Disaster recovery planning | `devops` + `operations` + `risk-management` + `communications` | `/disaster-recovery` -> `/bcp-plan` -> `/rollback-plan` -> `/incident-runbook` -> `/crisis-comms` |
| Observability stack setup | `devops` + `engineering` + `documentation` | `/monitoring-setup` -> `/alert-tuning` -> `/slo-tracking` -> `/observability-design` -> `/runbook-writer` |
| GitOps adoption | `devops` + `engineering` + `documentation` + `security` | `/gitops-review` -> `/ci-cd-pipeline` -> `/container-strategy` -> `/deployment-strategy` -> `/process-doc` |

</details>

<details>
<summary><strong>Product & Design (6 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Product discovery to spec | `product-management` + `design` + `enterprise-search` | `/user-research` -> `/research-synthesis` -> `/product-brainstorming` -> `/write-spec` |
| Design handoff to implementation | `design` + `engineering` + `documentation` | `/design-critique` -> `/design-system` -> `/design-handoff` -> `/architecture-diagram` |
| Usability-driven design | `design` + `product-management` + `data` | `/usability-test-plan` -> `/user-research` -> `/research-synthesis` -> `/ab-test-plan` |
| Research-driven UX improvements | `design` + `product-management` + `customer-support` | `/user-research` -> `/synthesize-research` -> `/ux-copy` -> `/draft-response` |
| Data-backed product decisions | `data` + `product-management` + `documentation` | `/analyze` -> `/build-dashboard` -> `/metrics-review` -> `/stakeholder-update` |
| Product-led growth analysis | `product-management` + `data` + `marketing` | `/metrics-review` -> `/analyze` -> `/marketing-analytics` -> `/feature-prioritization` |

</details>

<details>
<summary><strong>Security & Compliance (5 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Compliance program | `legal` + `security` + `operations` + `documentation` | `/compliance-check` -> `/compliance-audit` -> `/compliance-tracking` -> `/runbook-writer` |
| Security compliance program | `security` + `legal` + `operations` + `documentation` | `/security-architecture-review` -> `/incident-response-plan` -> `/compliance-audit` -> `/runbook-writer` |
| Privacy and data governance | `legal` + `security` + `engineering` + `documentation` | `/privacy-policy` -> `/data-processing-agreement` -> `/access-review` -> `/decision-record` |
| Open source compliance | `legal` + `engineering` + `security` | `/license-review` -> `/dependency-audit` -> `/compliance-check` -> `/security-review` |
| Audit readiness | `legal` + `security` + `operations` + `documentation` | `/compliance-check` -> `/compliance-audit` -> `/compliance-tracking` -> `/decision-record` -> `/runbook-writer` |

</details>

<details>
<summary><strong>Sales, Marketing & Partnerships (14 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Go-to-market launch | `product-management` + `marketing` + `sales` + `communications` | `/go-to-market` -> `/landing-page-copy` -> `/campaign-plan` -> `/press-release` -> `/social-media-post` |
| Release notes and launch prep | `engineering` + `documentation` + `product-management` + `communications` | `/deploy-checklist` -> `/changelog` -> `/release-notes` -> `/press-release` |
| Revenue planning | `sales` + `finance` + `data` | `/pipeline-review` -> `/sales-forecast` -> `/financial-forecast` -> `/revenue-analysis` |
| Sales enablement | `sales` + `marketing` + `learning-development` + `documentation` | `/competitive-positioning` -> `/objection-handling` -> `/training-material` -> `/style-guide` |
| Sales cycle optimization | `sales` + `data` + `product-management` | `/win-loss-analysis` -> `/competitor-analysis` -> `/deal-analysis` -> `/pipeline-review` |
| Content marketing pipeline | `marketing` + `documentation` + `design` + `enterprise-search` | `/content-calendar` -> `/seo-audit` -> `/email-copy` -> `/social-media-post` |
| Competitive strategy | `enterprise-search` + `marketing` + `sales` + `product-management` | `/competitive-intel` -> `/competitor-analysis` -> `/competitive-positioning` -> `/go-to-market` |
| Pricing strategy | `finance` + `product-management` + `data` + `marketing` | `/pricing-model` -> `/ab-test-plan` -> `/analyze` -> `/competitor-analysis` |
| Pricing launch | `finance` + `product-management` + `marketing` + `sales` + `legal` | `/pricing-model` -> `/competitor-analysis` -> `/go-to-market` -> `/proposal-draft` -> `/terms-of-service` |
| Content to pipeline | `marketing` + `design` + `data` + `sales` | `/campaign-plan` -> `/landing-page-copy` -> `/marketing-analytics` -> `/pipeline-review` |
| Partner program launch | `partnerships` + `sales` + `marketing` + `legal` | `/partner-evaluation` -> `/alliance-plan` -> `/revenue-sharing` -> `/co-marketing-brief` -> `/contract-review` |
| Channel partner enablement | `partnerships` + `sales` + `learning-development` + `documentation` | `/channel-strategy` -> `/partner-onboarding` -> `/training-material` -> `/sales-enablement` |
| Technology partnership | `partnerships` + `engineering` + `legal` + `documentation` | `/technology-partnership` -> `/integration-readiness` -> `/api-design` -> `/contract-review` -> `/api-docs` |
| Partner QBR and review | `partnerships` + `analytics` + `communications` | `/partner-qbr` -> `/revenue-sharing` -> `/analyze` -> `/stakeholder-messaging` |

</details>

<details>
<summary><strong>Customer Operations (5 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Customer issue to self-service content | `customer-support` + `documentation` + `enterprise-search` | `/customer-research` -> `/draft-response` -> `/kb-article` -> `/knowledge-synthesis` |
| Customer satisfaction improvement | `customer-support` + `data` + `product-management` | `/csat-analysis` -> `/support-metrics-review` -> `/analyze` -> `/feature-prioritization` |
| Customer success operations | `customer-support` + `data` + `product-management` + `sales` | `/customer-research` -> `/csat-analysis` -> `/analyze` -> `/account-plan` |
| Customer renewal rescue | `sales` + `customer-support` + `data` + `communications` | `/account-plan` -> `/csat-analysis` -> `/support-metrics-review` -> `/analyze` -> `/stakeholder-messaging` |
| Customer health intervention | `customer-success` + `customer-support` + `data` + `communications` | `/health-score-review` -> `/csat-analysis` -> `/analyze` -> `/stakeholder-messaging` |
| Strategic account growth | `sales` + `customer-support` + `data` | `/account-plan` -> `/customer-research` -> `/csat-analysis` -> `/deal-analysis` |

</details>

<details>
<summary><strong>AI & Machine Learning (6 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| AI feature launch | `ai-operations` + `engineering` + `security` + `documentation` | `/prompt-eval` -> `/llm-risk-review` -> `/model-cost-review` -> `/design-review` -> `/agent-runbook` |
| RAG pipeline development | `ai-operations` + `data` + `engineering` + `qa-testing` | `/rag-pipeline` -> `/data-pipeline` -> `/data-quality` -> `/prompt-eval` -> `/model-monitoring` |
| Model selection and deployment | `ai-operations` + `engineering` + `devops` + `finance` | `/model-selection` -> `/model-cost-review` -> `/deployment-strategy` -> `/model-monitoring` -> `/agent-runbook` |
| LLM fine-tuning workflow | `ai-operations` + `data` + `security` | `/fine-tuning-plan` -> `/data-labeling-review` -> `/synthetic-data-review` -> `/prompt-eval` -> `/llm-risk-review` |
| AI governance program | `ai-operations` + `legal` + `security` + `risk-management` | `/ai-governance` -> `/llm-risk-review` -> `/compliance-check` -> `/risk-register` -> `/model-monitoring` |
| Prompt library management | `ai-operations` + `documentation` + `qa-testing` | `/prompt-library` -> `/prompt-eval` -> `/test-plan` -> `/workflow-automation-review` |

</details>

<details>
<summary><strong>Finance & Strategy (10 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Financial planning cycle | `finance` + `data` + `operations` | `/budget-plan` -> `/financial-forecast` -> `/revenue-analysis` -> `/budget-tracking` -> `/status-report` |
| Board meeting prep | `finance` + `data` + `communications` + `product-management` | `/financial-report` -> `/variance-analysis` -> `/executive-briefing` -> `/roadmap-update` |
| Quarterly business review | `data` + `finance` + `operations` + `product-management` | `/analyze` -> `/revenue-analysis` -> `/okr-tracking` -> `/metrics-review` -> `/stakeholder-update` |
| Due diligence (M&A) | `legal` + `finance` + `security` + `operations` | `/contract-review` -> `/financial-report` -> `/vulnerability-assessment` -> `/risk-assessment` |
| Strategic planning | `strategy` + `finance` + `data` + `product-management` | `/strategic-scenario-planning` -> `/market-entry` -> `/investment-memo` -> `/portfolio-review` -> `/roadmap-update` |
| Vendor selection | `operations` + `security` + `legal` + `finance` | `/vendor-review` -> `/security-checklist` -> `/contract-review` -> `/cost-optimization` |
| Vendor onboarding and governance | `operations` + `legal` + `security` + `finance` | `/vendor-review` -> `/contract-review` -> `/security-checklist` -> `/expense-review` |
| OKR planning and tracking | `strategy` + `operations` + `product-management` + `data` | `/okr-framework` -> `/okr-tracking` -> `/metrics-review` -> `/stakeholder-update` |
| Digital transformation assessment | `strategy` + `engineering` + `operations` + `communications` | `/digital-transformation` -> `/legacy-code-assessment` -> `/process-optimization` -> `/change-communication` |
| Market entry analysis | `strategy` + `finance` + `marketing` + `legal` | `/market-entry` -> `/competitive-landscape` -> `/financial-scenario-planning` -> `/regulatory-tracking` |

</details>

<details>
<summary><strong>People & Org (8 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Organizational change management | `communications` + `operations` + `human-resources` | `/change-communication` -> `/stakeholder-messaging` -> `/internal-comms` -> `/employee-survey` |
| Hiring pipeline optimization | `human-resources` + `operations` + `documentation` | `/recruiting-pipeline` -> `/interview-prep` -> `/process-doc` -> `/style-guide` |
| New hire enablement | `human-resources` + `learning-development` + `documentation` | `/onboarding` -> `/learning-path` -> `/mentoring-guide` -> `/onboarding-guide` |
| Team development program | `learning-development` + `human-resources` + `operations` | `/skill-assessment` -> `/coaching-plan` -> `/learning-path` -> `/workshop-plan` -> `/performance-review` |
| Employee retention program | `human-resources` + `learning-development` + `communications` | `/exit-interview` -> `/employee-survey` -> `/coaching-plan` -> `/internal-comms` |
| Employee lifecycle management | `human-resources` + `learning-development` + `operations` + `communications` | `/recruiting-pipeline` -> `/onboarding` -> `/coaching-plan` -> `/performance-review` -> `/exit-interview` |
| Workforce planning | `human-resources` + `finance` + `operations` | `/org-planning` -> `/budget-plan` -> `/capacity-plan` -> `/status-report` |
| Internal tool rollout | `engineering` + `documentation` + `learning-development` + `communications` | `/system-design` -> `/onboarding-guide` -> `/training-material` -> `/change-communication` |

</details>

<details>
<summary><strong>Operations, Governance & Procurement (14 workflows)</strong></summary>

| Use Case | Plugins | Skill Flow |
|---|---|---|
| Leadership communication | `communications` + `product-management` + `documentation` | `/executive-briefing` -> `/stakeholder-update` -> `/presentation-outline` -> `/changelog` |
| Executive reporting | `data` + `operations` + `product-management` | `/data-storytelling` -> `/status-report` -> `/roadmap-update` |
| Process improvement and change control | `operations` + `documentation` + `security` | `/process-doc` -> `/process-optimization` -> `/risk-assessment` -> `/change-request` |
| Vendor and risk review | `operations` + `security` + `legal` | `/vendor-review` -> `/vulnerability-assessment` -> `/legal-risk-assessment` -> `/compliance-tracking` |
| Contract or policy risk review | `legal` + `operations` + `communications` | `/contract-review` -> `/legal-risk-assessment` -> `/risk-assessment` -> `/stakeholder-messaging` |
| Crisis management | `communications` + `operations` + `engineering` + `security` | `/crisis-comms` -> `/incident-response` -> `/incident-postmortem` -> `/stakeholder-messaging` |
| Knowledge ops and research | `enterprise-search` + `documentation` + `productivity` | `/search-strategy` -> `/search` -> `/knowledge-synthesis` -> `/update` |
| Meeting productivity | `productivity` + `communications` | `/meeting-agenda` -> `/meeting-notes` -> `/decision-log` -> `/weekly-review` |
| Program kickoff | `program-management` + `operations` + `communications` | `/raid-log` -> `/dependency-mapping` -> `/milestone-review` -> `/steerco-update` |
| Procurement cycle | `procurement` + `legal` + `finance` + `operations` | `/rfp-draft` -> `/vendor-shortlist` -> `/negotiation-brief` -> `/contract-review` -> `/purchase-justification` |
| ITIL service management | `it-service-management` + `operations` + `documentation` | `/incident-management` -> `/problem-management` -> `/change-management` -> `/knowledge-management` |
| Supply chain optimization | `supply-chain` + `analytics` + `procurement` + `operations` | `/demand-planning` -> `/inventory-optimization` -> `/logistics-review` -> `/supplier-management` |
| ESG reporting program | `sustainability` + `finance` + `legal` + `communications` | `/esg-report` -> `/carbon-footprint` -> `/dei-reporting` -> `/impact-measurement` -> `/press-release` |
| Third-party risk management | `risk-management` + `security` + `procurement` + `legal` | `/third-party-risk` -> `/supplier-risk` -> `/security-checklist` -> `/contract-review` -> `/risk-reporting` |

</details>

---

## Quick Bundles

Pre-assembled plugin packs for common team shapes.

| Bundle | Plugins |
|---|---|
| **Builder** | `engineering` + `qa-testing` + `documentation` |
| **Discovery** | `product-management` + `design` + `enterprise-search` |
| **Revenue** | `sales` + `marketing` + `finance` |
| **Operations** | `operations` + `security` + `documentation` |
| **Platform** | `devops` + `engineering` + `security` |
| **Support** | `customer-support` + `qa-testing` + `enterprise-search` |
| **Insights** | `data` + `product-management` + `documentation` |
| **People** | `human-resources` + `learning-development` + `productivity` |
| **Leadership** | `communications` + `product-management` + `finance` |
| **Compliance** | `legal` + `security` + `operations` |
| **Growth** | `marketing` + `sales` + `data` |
| **Full-stack delivery** | `engineering` + `devops` + `qa-testing` + `documentation` |
| **Strategy** | `strategy` + `finance` + `enterprise-search` |
| **Customer lifecycle** | `customer-success` + `customer-support` + `sales` |
| **Program delivery** | `program-management` + `operations` + `communications` |
| **Procurement** | `procurement` + `legal` + `finance` |
| **Partner** | `partnerships` + `sales` + `marketing` |
| **AI builder** | `ai-operations` + `engineering` + `security` |
| **Mobile** | `engineering` + `qa-testing` + `devops` (mobile-specific skills) |
| **SRE** | `devops` + `engineering` + `security` + `operations` + `risk-management` |
| **Data** | `data` + `analytics` + `ai-operations` + `engineering` |
| **Consulting** | `strategy` + `analytics` + `communications` + `product-management` |
| **Partner** | `partnerships` + `sales` + `marketing` + `legal` |

---

## Skills by Platform (Cross-Reference)

Skills are organized by domain, but many cover platform-specific frameworks. This index groups them by platform.

### Mobile (Flutter / Android / iOS)

| Skill | Plugin | Covers |
|---|---|---|
| `/mobile-architecture` | engineering | App structure, patterns, modularization, navigation |
| `/mobile-design-patterns` | engineering | MVC, MVP, MVVM, MVI, Clean Architecture, VIPER, TCA, BLoC |
| `/mobile-state-management` | engineering | BLoC, Riverpod, ViewModel+StateFlow, @Observable, TCA, LiveData, RxJava |
| `/mobile-data-persistence` | engineering | Room, CoreData, SwiftData, Hive, Drift, SharedPrefs, UserDefaults, Keychain |
| `/mobile-networking` | engineering | Dio, Retrofit/OkHttp, URLSession/Alamofire, token refresh, caching, WebSocket |
| `/mobile-security` | engineering | Cert pinning, obfuscation, root/jailbreak detection, biometric auth, app hardening |
| `/mobile-accessibility` | engineering | TalkBack, VoiceOver, Semantics, dynamic type, contrast, touch targets, focus |
| `/mobile-performance` | engineering | Startup, jank, memory, battery, app size, network efficiency |
| `/mobile-push-notifications` | engineering | FCM, APNs, local notifications, rich media, channels, deep link from notification |
| `/mobile-analytics` | engineering | Firebase Analytics, Mixpanel, Crashlytics, Sentry, event tracking, privacy (ATT) |
| `/mobile-code-review` | engineering | Platform-specific PR review checklists |
| `/cross-platform-strategy` | engineering | Flutter vs. native vs. KMP vs. React Native decision framework |
| `/mobile-testing` | qa-testing | Unit, widget, integration, snapshot, E2E, device matrix |
| `/mobile-ci-cd` | devops | Build automation, code signing, Fastlane, distribution |
| `/app-store-release` | devops | Google Play + Apple App Store submission, rollout, monitoring |
| `/solid-principles` | engineering | SOLID with mobile + backend examples |

### Backend (Spring / Node / Django / Go)

| Skill | Plugin | Covers |
|---|---|---|
| `/backend-architecture` | engineering | Layering, frameworks, data layer, cross-cutting concerns |
| `/api-design` | engineering | REST, GraphQL, gRPC design |
| `/database-design` | engineering | Schema design, indexing, migrations |
| `/solid-principles` | engineering | SOLID with backend + mobile examples |

---

## Installation

### Option 1: Role-Based Installer (Recommended)

```bash
# Make it executable (first time only)
chmod +x install.sh

# Interactive mode — pick your role
./install.sh

# Or specify directly
./install.sh mobile-engineer
```

### Option 2: Export for Any AI Tool

```bash
# Cursor
./install.sh mobile-engineer --export cursor
cp exports/mobile-engineer.cursorrules /path/to/project/.cursorrules

# GitHub Copilot
./install.sh backend-engineer --export copilot
cp exports/backend-engineer.copilot-instructions.md /path/to/project/.github/copilot-instructions.md

# ChatGPT — paste into Custom GPT or upload to Project
./install.sh sales --export chatgpt

# Gemini — paste into a Gem or use in AI Studio
./install.sh executive --export gemini

# All tools at once
./install.sh mobile-engineer --export all
```

### Option 3: Claude Code — Direct Plugin Install

```bash
# Single plugin
claude /plugin install /path/to/skill-library/engineering

# Multiple plugins
claude \
  --add-dir /path/to/skill-library/engineering \
  --add-dir /path/to/skill-library/qa-testing \
  --add-dir /path/to/skill-library/devops
```

### Installer Reference

```bash
./install.sh                              # Interactive role picker
./install.sh <role>                        # Install for Claude Code
./install.sh <role> --preview              # Preview plugins first
./install.sh <role> --export <tool>        # Export for any AI tool
./install.sh <role> --export all           # Export for all tools
./install.sh --list                        # List all roles
./install.sh --list-all                    # List roles with plugin details
./install.sh --tools                       # List supported AI tools
./install.sh --help                        # Show help
```

---

## Repository Structure

```
skill-library/
├── ai-operations/          # 13 skills
├── analytics/              # 10 skills
├── communications/         # 14 skills
├── customer-experience/    # 10 skills
├── customer-success/       # 11 skills
├── customer-support/       # 10 skills
├── data/                   # 17 skills
├── design/                 # 11 skills
├── devops/                 # 17 skills
├── documentation/          # 12 skills
├── engineering/            # 45 skills
├── enterprise-search/      # 11 skills
├── finance/                # 15 skills
├── human-resources/        # 15 skills
├── it-service-management/  # 10 skills
├── learning-development/   # 12 skills
├── legal/                  # 12 skills
├── marketing/              # 13 skills
├── operations/             # 15 skills
├── partnerships/           # 11 skills
├── procurement/            # 11 skills
├── product-management/     # 17 skills
├── productivity/           # 12 skills
├── program-management/     # 11 skills
├── qa-testing/             # 14 skills
├── risk-management/        # 11 skills
├── sales/                  # 13 skills
├── security/               # 15 skills
├── strategy/               # 12 skills
├── supply-chain/           # 9 skills
├── sustainability/         # 9 skills
├── install.sh              # Role-based installer (54 roles, 9 AI tools)
├── .gitignore
└── README.md

Each plugin:
├── .claude-plugin/
│   └── plugin.json
└── skills/
    └── <skill-name>/
        └── SKILL.md
```

---

## Contributing

### Adding a New Plugin

1. Create a directory at the repo root: `my-category/`
2. Add `.claude-plugin/plugin.json`:
   ```json
   {
     "name": "my-category",
     "description": "What this plugin covers.",
     "version": "1.0.0",
     "author": { "name": "Your Name" },
     "homepage": "",
     "repository": "",
     "license": "MIT"
   }
   ```
3. Add skills under `my-category/skills/<skill-name>/SKILL.md`
4. Update this README

### SKILL.md Format

```yaml
---
name: skill-name
description: >
  What this skill does.
  TRIGGER when: user says "keyword1", "keyword2", or asks about topic.
argument-hint: "[arg1] [arg2]"
user-invocable: true
---

# Skill Title

Instructions, templates, and quality standards...
```

---

## License

MIT — free for commercial and personal use. See [LICENSE](LICENSE).