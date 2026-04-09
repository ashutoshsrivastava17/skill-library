#!/usr/bin/env bash
set -euo pipefail

# ─────────────────────────────────────────────────────────────
# Skill Library — Role-Based Installer
# Installs the right skill plugins for your role automatically.
# ─────────────────────────────────────────────────────────────

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ── Colors ──────────────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m'

# ── Role → Plugin Mapping ──────────────────────────────────
# Returns space-separated plugin list for a given role.

get_plugins_for_role() {
    case "$1" in
        # ── Engineering ─────────────────────────────────
        mobile-engineer)
            echo "engineering qa-testing devops design documentation security" ;;
        backend-engineer)
            echo "engineering devops security data documentation qa-testing" ;;
        frontend-engineer)
            echo "engineering design qa-testing documentation" ;;
        fullstack-engineer)
            echo "engineering devops qa-testing design security data documentation" ;;
        software-architect)
            echo "engineering devops security data documentation design" ;;
        sre)
            echo "devops engineering security operations risk-management documentation" ;;
        cloud-engineer)
            echo "devops engineering security operations documentation" ;;
        devops-engineer)
            echo "devops engineering security operations it-service-management documentation" ;;
        qa-engineer)
            echo "qa-testing engineering devops documentation security" ;;
        security-engineer)
            echo "security engineering devops risk-management legal documentation" ;;
        data-engineer)
            echo "data engineering devops documentation analytics" ;;
        data-scientist)
            echo "data analytics ai-operations engineering documentation" ;;
        data-analyst)
            echo "data analytics documentation product-management" ;;
        ml-engineer)
            echo "ai-operations data engineering devops security documentation" ;;
        dba)
            echo "engineering data devops security documentation" ;;
        technical-writer)
            echo "documentation engineering design communications enterprise-search" ;;
        release-manager)
            echo "devops engineering qa-testing program-management documentation" ;;

        # ── Leadership ──────────────────────────────────
        engineering-manager)
            echo "engineering product-management program-management operations communications documentation" ;;
        product-manager)
            echo "product-management design analytics data engineering communications documentation" ;;
        program-manager)
            echo "program-management operations communications risk-management documentation productivity" ;;
        scrum-master)
            echo "program-management engineering qa-testing productivity communications documentation" ;;
        executive)
            echo "strategy finance communications analytics operations product-management risk-management" ;;
        cto)
            echo "engineering devops security strategy ai-operations documentation risk-management" ;;
        cpo)
            echo "product-management design analytics strategy communications data documentation" ;;
        cfo)
            echo "finance strategy risk-management analytics operations legal procurement" ;;
        coo)
            echo "operations strategy finance risk-management program-management communications analytics" ;;
        vp-engineering)
            echo "engineering devops program-management operations communications documentation security" ;;
        vp-product)
            echo "product-management design analytics strategy communications data documentation" ;;
        vp-sales)
            echo "sales marketing finance analytics strategy communications partnerships" ;;
        vp-marketing)
            echo "marketing analytics communications design strategy sales enterprise-search" ;;

        # ── Design ──────────────────────────────────────
        designer)
            echo "design product-management documentation engineering analytics" ;;
        ux-researcher)
            echo "design product-management analytics data documentation communications" ;;

        # ── Business ────────────────────────────────────
        sales)
            echo "sales marketing customer-success customer-experience communications analytics" ;;
        sales-engineer)
            echo "sales engineering documentation product-management communications" ;;
        account-manager)
            echo "sales customer-success customer-experience communications analytics partnerships" ;;
        marketing)
            echo "marketing analytics communications design sales enterprise-search" ;;
        growth-marketer)
            echo "marketing analytics data product-management communications" ;;
        customer-support)
            echo "customer-support customer-experience documentation enterprise-search communications" ;;
        customer-success)
            echo "customer-success customer-support sales analytics communications" ;;
        business-analyst)
            echo "analytics data product-management operations documentation strategy" ;;
        solutions-architect)
            echo "engineering sales product-management documentation partnerships security" ;;
        partnerships-manager)
            echo "partnerships sales marketing communications legal product-management" ;;
        operations)
            echo "operations devops it-service-management security documentation risk-management" ;;
        it-manager)
            echo "it-service-management operations security devops documentation risk-management" ;;
        hr)
            echo "human-resources learning-development communications operations productivity" ;;
        recruiter)
            echo "human-resources communications operations productivity" ;;
        finance)
            echo "finance analytics operations risk-management legal procurement" ;;
        auditor)
            echo "finance legal risk-management operations security documentation" ;;
        legal)
            echo "legal security operations risk-management finance documentation" ;;
        compliance-officer)
            echo "legal security risk-management operations documentation" ;;
        procurement-manager)
            echo "procurement finance legal operations supply-chain risk-management" ;;
        supply-chain)
            echo "supply-chain procurement operations finance risk-management analytics" ;;
        sustainability)
            echo "sustainability operations finance legal analytics" ;;
        consultant)
            echo "strategy analytics communications product-management operations documentation" ;;
        *)
            echo "" ;;
    esac
}

ALL_ROLES="mobile-engineer backend-engineer frontend-engineer fullstack-engineer software-architect sre cloud-engineer devops-engineer qa-engineer security-engineer data-engineer data-scientist data-analyst ml-engineer dba technical-writer release-manager engineering-manager product-manager program-manager scrum-master executive cto cpo cfo coo vp-engineering vp-product vp-sales vp-marketing designer ux-researcher sales sales-engineer account-manager marketing growth-marketer customer-support customer-success business-analyst solutions-architect partnerships-manager operations it-manager hr recruiter finance auditor legal compliance-officer procurement-manager supply-chain sustainability consultant"

# ── Helper Functions ────────────────────────────────────────

print_banner() {
    echo ""
    echo -e "${CYAN}${BOLD}╔══════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}${BOLD}║         Skill Library — Role Installer           ║${NC}"
    echo -e "${CYAN}${BOLD}║     418 skills | 31 plugins | 54 roles           ║${NC}"
    echo -e "${CYAN}${BOLD}╚══════════════════════════════════════════════════╝${NC}"
    echo ""
}

print_roles() {
    echo -e "${BOLD}Available roles (54):${NC}"
    echo ""
    echo -e "  ${BLUE}${BOLD}Engineering (17 roles)${NC}"
    echo -e "    ${GREEN}mobile-engineer${NC}       Mobile dev (Flutter / Android / iOS)"
    echo -e "    ${GREEN}backend-engineer${NC}      Backend services & APIs"
    echo -e "    ${GREEN}frontend-engineer${NC}     Frontend & UI development"
    echo -e "    ${GREEN}fullstack-engineer${NC}    Full-stack development"
    echo -e "    ${GREEN}software-architect${NC}    System design & architecture"
    echo -e "    ${GREEN}sre${NC}                   Site reliability engineering"
    echo -e "    ${GREEN}cloud-engineer${NC}        Cloud infrastructure & platforms"
    echo -e "    ${GREEN}devops-engineer${NC}       Infrastructure & CI/CD"
    echo -e "    ${GREEN}qa-engineer${NC}           Testing & quality assurance"
    echo -e "    ${GREEN}security-engineer${NC}     Application & cloud security"
    echo -e "    ${GREEN}data-engineer${NC}         Data pipelines & infrastructure"
    echo -e "    ${GREEN}data-scientist${NC}        Data analysis & ML"
    echo -e "    ${GREEN}data-analyst${NC}          Business analytics & reporting"
    echo -e "    ${GREEN}ml-engineer${NC}           Machine learning & AI ops"
    echo -e "    ${GREEN}dba${NC}                   Database administration"
    echo -e "    ${GREEN}technical-writer${NC}      Documentation & knowledge"
    echo -e "    ${GREEN}release-manager${NC}       Release coordination & deployment"
    echo ""
    echo -e "  ${BLUE}${BOLD}Leadership (13 roles)${NC}"
    echo -e "    ${GREEN}engineering-manager${NC}   Engineering leadership"
    echo -e "    ${GREEN}product-manager${NC}       Product strategy & delivery"
    echo -e "    ${GREEN}program-manager${NC}       Program & portfolio management"
    echo -e "    ${GREEN}scrum-master${NC}          Agile coaching & sprint facilitation"
    echo -e "    ${GREEN}executive${NC}             General executive / C-suite"
    echo -e "    ${GREEN}cto${NC}                   Chief Technology Officer"
    echo -e "    ${GREEN}cpo${NC}                   Chief Product Officer"
    echo -e "    ${GREEN}cfo${NC}                   Chief Financial Officer"
    echo -e "    ${GREEN}coo${NC}                   Chief Operating Officer"
    echo -e "    ${GREEN}vp-engineering${NC}        VP / Director of Engineering"
    echo -e "    ${GREEN}vp-product${NC}            VP / Director of Product"
    echo -e "    ${GREEN}vp-sales${NC}              VP / Director of Sales"
    echo -e "    ${GREEN}vp-marketing${NC}          VP / Director of Marketing"
    echo ""
    echo -e "  ${BLUE}${BOLD}Design (2 roles)${NC}"
    echo -e "    ${GREEN}designer${NC}              UX/UI & product design"
    echo -e "    ${GREEN}ux-researcher${NC}         User research & usability"
    echo ""
    echo -e "  ${BLUE}${BOLD}Business (22 roles)${NC}"
    echo -e "    ${GREEN}sales${NC}                 Sales & revenue"
    echo -e "    ${GREEN}sales-engineer${NC}        Technical pre-sales & demos"
    echo -e "    ${GREEN}account-manager${NC}       Account management & expansion"
    echo -e "    ${GREEN}marketing${NC}             Marketing & growth"
    echo -e "    ${GREEN}growth-marketer${NC}       Growth marketing & experimentation"
    echo -e "    ${GREEN}customer-support${NC}      Customer support & service"
    echo -e "    ${GREEN}customer-success${NC}      Customer success & retention"
    echo -e "    ${GREEN}business-analyst${NC}      Business analysis & strategy"
    echo -e "    ${GREEN}solutions-architect${NC}   Solutions architecture & pre-sales"
    echo -e "    ${GREEN}partnerships-manager${NC}  Partnerships & alliances"
    echo -e "    ${GREEN}operations${NC}            Business & IT operations"
    echo -e "    ${GREEN}it-manager${NC}            IT service management"
    echo -e "    ${GREEN}hr${NC}                    Human resources & people ops"
    echo -e "    ${GREEN}recruiter${NC}             Talent acquisition"
    echo -e "    ${GREEN}finance${NC}               Finance & FP&A"
    echo -e "    ${GREEN}auditor${NC}               Audit & internal controls"
    echo -e "    ${GREEN}legal${NC}                 Legal & compliance"
    echo -e "    ${GREEN}compliance-officer${NC}    Regulatory compliance"
    echo -e "    ${GREEN}procurement-manager${NC}   Procurement & vendor management"
    echo -e "    ${GREEN}supply-chain${NC}          Supply chain & logistics"
    echo -e "    ${GREEN}sustainability${NC}        ESG & sustainability"
    echo -e "    ${GREEN}consultant${NC}            Management & strategy consulting"
    echo ""
}

count_skills() {
    local plugin_dir="$SCRIPT_DIR/$1"
    if [[ -d "$plugin_dir/skills" ]]; then
        find "$plugin_dir/skills" -name "SKILL.md" | wc -l | tr -d ' '
    else
        echo "0"
    fi
}

get_plugin_description() {
    local plugin_json="$SCRIPT_DIR/$1/.claude-plugin/plugin.json"
    if [[ -f "$plugin_json" ]]; then
        python3 -c "
import json, sys
try:
    d = json.load(open('$plugin_json'))
    desc = d.get('description', '')
    if len(desc) > 80:
        desc = desc[:77] + '...'
    print(desc)
except:
    pass
" 2>/dev/null || true
    fi
}

install_plugins() {
    local role="$1"
    local plugins
    plugins=$(get_plugins_for_role "$role")
    local total_skills=0
    local installed_count=0

    echo ""
    echo -e "${BOLD}Installing plugins for role: ${CYAN}$role${NC}"
    echo -e "${DIM}────────────────────────────────────────────────${NC}"
    echo ""

    for plugin in $plugins; do
        local plugin_dir="$SCRIPT_DIR/$plugin"

        if [[ ! -d "$plugin_dir" ]]; then
            echo -e "  ${YELLOW}[skip]${NC} $plugin — not found"
            continue
        fi

        local skill_count
        skill_count=$(count_skills "$plugin")
        total_skills=$((total_skills + skill_count))
        installed_count=$((installed_count + 1))

        echo -e "  ${GREEN}[ok]${NC}   ${BOLD}$plugin${NC} ${DIM}($skill_count skills)${NC}"
    done

    echo ""
    echo -e "${DIM}────────────────────────────────────────────────${NC}"
    echo -e "${GREEN}${BOLD}Installed:${NC} $installed_count plugins, $total_skills skills"
    echo ""

    # Generate the claude command
    echo -e "${BOLD}To load these plugins, run:${NC}"
    echo ""
    local cmd="  claude"
    for plugin in $plugins; do
        cmd="$cmd \\\\\n    --add-dir $SCRIPT_DIR/$plugin"
    done
    echo -e "${CYAN}$cmd${NC}"
    echo ""

    # Save a role file for easy reuse
    local outfile="$SCRIPT_DIR/.role-$role"
    {
        echo "# Plugins for role: $role"
        echo "# Generated on $(date +%Y-%m-%d)"
        for plugin in $plugins; do
            echo "$SCRIPT_DIR/$plugin"
        done
    } > "$outfile"
    echo -e "${DIM}Plugin list saved to .role-${role}${NC}"
    echo ""

    # Generate a one-liner alias
    local alias_cmd="alias claude-${role}='claude"
    for plugin in $plugins; do
        alias_cmd="$alias_cmd --add-dir $SCRIPT_DIR/$plugin"
    done
    alias_cmd="$alias_cmd'"

    echo -e "${BOLD}Quick alias (add to ~/.zshrc or ~/.bashrc):${NC}"
    echo ""
    echo -e "  ${CYAN}$alias_cmd${NC}"
    echo ""
}

list_role_plugins() {
    local role="$1"
    local plugins
    plugins=$(get_plugins_for_role "$role")

    echo -e "  ${BOLD}${CYAN}$role${NC}"

    for plugin in $plugins; do
        local skill_count
        skill_count=$(count_skills "$plugin")
        local desc
        desc=$(get_plugin_description "$plugin")
        echo -e "    ${GREEN}$plugin${NC} ${DIM}($skill_count skills)${NC}"
        if [[ -n "$desc" ]]; then
            echo -e "      ${DIM}$desc${NC}"
        fi
    done
    echo ""
}

# ── Export for AI Tools ─────────────────────────────────────

export_for_tool() {
    local role="$1"
    local tool="$2"
    local plugins
    plugins=$(get_plugins_for_role "$role")
    local export_dir="$SCRIPT_DIR/exports"
    mkdir -p "$export_dir"

    local total_skills=0

    # Collect all SKILL.md content into a combined file
    local combined=""
    for plugin in $plugins; do
        local skills_dir="$SCRIPT_DIR/$plugin/skills"
        if [[ ! -d "$skills_dir" ]]; then continue; fi

        for skill_dir in "$skills_dir"/*/; do
            local skill_file="$skill_dir/SKILL.md"
            if [[ -f "$skill_file" ]]; then
                combined="$combined$(cat "$skill_file")"$'\n\n---\n\n'
                total_skills=$((total_skills + 1))
            fi
        done
    done

    case "$tool" in
        cursor)
            local outfile="$export_dir/${role}.cursorrules"
            {
                echo "# Skill Library — Role: $role"
                echo "# Paste this file as .cursorrules in your project root."
                echo "# Generated on $(date +%Y-%m-%d)"
                echo "#"
                echo "# Skills included: $total_skills"
                echo "# Plugins: $plugins"
                echo ""
                echo "You have access to the following skills. Use the appropriate skill when the user's request matches a skill's TRIGGER condition."
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} Cursor rules exported to ${BOLD}exports/${role}.cursorrules${NC}"
            echo ""
            echo -e "${BOLD}Usage:${NC} Copy to your project root as ${CYAN}.cursorrules${NC}"
            echo -e "  ${DIM}cp $outfile /path/to/your/project/.cursorrules${NC}"
            ;;
        copilot)
            local outfile="$export_dir/${role}.copilot-instructions.md"
            {
                echo "# Skill Library — Role: $role"
                echo ""
                echo "You have access to the following skills. Use the appropriate skill when the user's request matches a skill's TRIGGER condition."
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} GitHub Copilot instructions exported to ${BOLD}exports/${role}.copilot-instructions.md${NC}"
            echo ""
            echo -e "${BOLD}Usage:${NC} Copy to your project as ${CYAN}.github/copilot-instructions.md${NC}"
            echo -e "  ${DIM}mkdir -p /path/to/your/project/.github${NC}"
            echo -e "  ${DIM}cp $outfile /path/to/your/project/.github/copilot-instructions.md${NC}"
            ;;
        chatgpt)
            local outfile="$export_dir/${role}.chatgpt.md"
            {
                echo "# Skill Library — Role: $role"
                echo ""
                echo "## Instructions"
                echo ""
                echo "You are an AI assistant equipped with specialized skills for the **$role** role. When the user's request matches a skill's TRIGGER condition, follow that skill's process, output format, and quality checklist."
                echo ""
                echo "## Skills ($total_skills total)"
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} ChatGPT prompt exported to ${BOLD}exports/${role}.chatgpt.md${NC}"
            echo ""
            echo -e "${BOLD}Usage options:${NC}"
            echo -e "  ${CYAN}Custom GPT:${NC}       Paste into 'Instructions' when creating a Custom GPT"
            echo -e "  ${CYAN}System prompt:${NC}    Use via API as the system message"
            echo -e "  ${CYAN}Projects:${NC}         Upload the file to a ChatGPT Project as knowledge"
            ;;
        gemini)
            local outfile="$export_dir/${role}.gemini.md"
            {
                echo "# Skill Library — Role: $role"
                echo ""
                echo "## Instructions"
                echo ""
                echo "You are an AI assistant equipped with specialized skills for the **$role** role. When the user's request matches a skill's TRIGGER condition, follow that skill's process, output format, and quality checklist."
                echo ""
                echo "## Skills ($total_skills total)"
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} Gemini prompt exported to ${BOLD}exports/${role}.gemini.md${NC}"
            echo ""
            echo -e "${BOLD}Usage options:${NC}"
            echo -e "  ${CYAN}Gems:${NC}             Paste into a custom Gem's instructions"
            echo -e "  ${CYAN}Google AI Studio:${NC} Use as system instruction"
            echo -e "  ${CYAN}Vertex AI:${NC}        Use as system prompt in your API calls"
            ;;
        claude)
            local outfile="$export_dir/${role}.claude.md"
            {
                echo "# Skill Library — Role: $role"
                echo ""
                echo "## Instructions"
                echo ""
                echo "You are an AI assistant equipped with specialized skills for the **$role** role. When the user's request matches a skill's TRIGGER condition, follow that skill's process, output format, and quality checklist."
                echo ""
                echo "## Skills ($total_skills total)"
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} Claude prompt exported to ${BOLD}exports/${role}.claude.md${NC}"
            echo ""
            echo -e "${BOLD}Usage options:${NC}"
            echo -e "  ${CYAN}Claude Projects:${NC}  Upload as project knowledge in claude.ai"
            echo -e "  ${CYAN}Claude API:${NC}       Use as the system prompt"
            echo -e "  ${CYAN}Claude Code:${NC}      Place in CLAUDE.md or use --add-dir (preferred)"
            echo -e "  ${CYAN}Claude Desktop:${NC}   Add as project instructions"
            ;;
        windsurf)
            local outfile="$export_dir/${role}.windsurfrules"
            {
                echo "# Skill Library — Role: $role"
                echo "# Paste this file as .windsurfrules in your project root."
                echo "# Generated on $(date +%Y-%m-%d)"
                echo ""
                echo "You have access to the following skills. Use the appropriate skill when the user's request matches a skill's TRIGGER condition."
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} Windsurf rules exported to ${BOLD}exports/${role}.windsurfrules${NC}"
            echo ""
            echo -e "${BOLD}Usage:${NC} Copy to your project root as ${CYAN}.windsurfrules${NC}"
            echo -e "  ${DIM}cp $outfile /path/to/your/project/.windsurfrules${NC}"
            ;;
        aider)
            local outfile="$export_dir/${role}.aider.md"
            {
                echo "# Skill Library — Role: $role"
                echo ""
                echo "You have access to the following skills. Use the appropriate skill when the user's request matches a skill's TRIGGER condition."
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} Aider conventions exported to ${BOLD}exports/${role}.aider.md${NC}"
            echo ""
            echo -e "${BOLD}Usage:${NC} Reference in ${CYAN}.aider.conf.yml${NC}:"
            echo -e "  ${DIM}read: exports/${role}.aider.md${NC}"
            echo -e "  Or pass directly: ${DIM}aider --read exports/${role}.aider.md${NC}"
            ;;
        openai-api|api)
            local outfile="$export_dir/${role}.system-prompt.md"
            {
                echo "You are an AI assistant equipped with specialized skills for the **$role** role."
                echo ""
                echo "When the user's request matches a skill's TRIGGER condition, follow that skill's process step-by-step, use its output format, and verify against its quality checklist."
                echo ""
                echo "# Available Skills ($total_skills total)"
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} System prompt exported to ${BOLD}exports/${role}.system-prompt.md${NC}"
            echo ""
            echo -e "${BOLD}Usage:${NC} Use as the ${CYAN}system${NC} message in any LLM API call"
            echo -e "  Works with: OpenAI, Anthropic, Google, Mistral, Groq, Together, etc."
            ;;
        markdown|md)
            local outfile="$export_dir/${role}.skills.md"
            {
                echo "# Skill Library — $role"
                echo ""
                echo "_${total_skills} skills from $(echo "$plugins" | wc -w | tr -d ' ') plugins_"
                echo ""
                echo "$combined"
            } > "$outfile"
            echo -e "${GREEN}[ok]${NC} Markdown exported to ${BOLD}exports/${role}.skills.md${NC}"
            echo ""
            echo -e "${BOLD}Usage:${NC} Universal format — upload, paste, or reference in any AI tool."
            ;;
        all)
            echo -e "${BOLD}Exporting for all tools...${NC}"
            echo ""
            for t in cursor copilot chatgpt gemini claude windsurf aider api markdown; do
                export_for_tool "$role" "$t"
                echo ""
            done
            echo -e "${DIM}────────────────────────────────────────────────${NC}"
            echo -e "${GREEN}${BOLD}All exports saved to:${NC} exports/"
            return
            ;;
        *)
            echo -e "${RED}Unknown tool: '$tool'${NC}"
            echo ""
            echo -e "${BOLD}Supported tools:${NC}"
            echo "  cursor        Cursor (.cursorrules)"
            echo "  copilot       GitHub Copilot (.github/copilot-instructions.md)"
            echo "  chatgpt       ChatGPT (Custom GPTs / Projects / API)"
            echo "  gemini        Google Gemini (Gems / AI Studio / Vertex)"
            echo "  claude        Claude (Projects / API / Desktop)"
            echo "  windsurf      Windsurf (.windsurfrules)"
            echo "  aider         Aider (conventions file)"
            echo "  api           Generic system prompt (any LLM API)"
            echo "  markdown      Plain markdown (universal)"
            echo "  all           Export for all tools at once"
            exit 1
            ;;
    esac

    echo ""
    echo -e "${DIM}$total_skills skills from plugins: $plugins${NC}"
}

# ── Interactive Mode ────────────────────────────────────────

interactive_mode() {
    print_banner
    print_roles

    echo -e "${BOLD}Enter your role (or 'q' to quit):${NC}"
    echo -n "> "
    read -r role

    if [[ "$role" == "q" || "$role" == "quit" || "$role" == "exit" ]]; then
        echo "Bye!"
        exit 0
    fi

    local plugins
    plugins=$(get_plugins_for_role "$role")

    if [[ -z "$plugins" ]]; then
        echo -e "${RED}Unknown role: '$role'${NC}"
        echo ""
        echo "Run ./install.sh --list to see available roles."
        exit 1
    fi

    install_plugins "$role"
}

# ── Usage ───────────────────────────────────────────────────

usage() {
    echo ""
    echo -e "${BOLD}Usage:${NC}"
    echo "  ./install.sh                              Interactive role picker"
    echo "  ./install.sh <role>                        Install plugins for a role (Claude Code)"
    echo "  ./install.sh <role> --preview              Preview plugins without installing"
    echo "  ./install.sh <role> --export <tool>        Export skills for a specific AI tool"
    echo "  ./install.sh <role> --export all           Export for all tools at once"
    echo "  ./install.sh --list                        List all available roles"
    echo "  ./install.sh --list-all                    List all roles with their plugins"
    echo "  ./install.sh --tools                       List all supported AI tools"
    echo "  ./install.sh --help                        Show this help"
    echo ""
    echo -e "${BOLD}Examples:${NC}"
    echo "  ./install.sh mobile-engineer                         # Claude Code plugins"
    echo "  ./install.sh mobile-engineer --export cursor          # Cursor rules file"
    echo "  ./install.sh sales --export chatgpt                   # ChatGPT custom GPT"
    echo "  ./install.sh backend-engineer --export copilot        # GitHub Copilot"
    echo "  ./install.sh executive --export gemini                # Google Gemini Gem"
    echo "  ./install.sh qa-engineer --export all                 # All tools at once"
    echo ""
    echo -e "${BOLD}Supported AI tools:${NC}"
    echo "  cursor, copilot, chatgpt, gemini, claude, windsurf, aider, api, markdown, all"
    echo ""
}

# ── Main ────────────────────────────────────────────────────

main() {
    if [[ $# -eq 0 ]]; then
        interactive_mode
        exit 0
    fi

    case "$1" in
        --help|-h)
            print_banner
            usage
            ;;
        --list|-l)
            print_banner
            print_roles
            ;;
        --list-all)
            print_banner
            for role in $ALL_ROLES; do
                list_role_plugins "$role"
            done
            ;;
        --tools)
            print_banner
            echo -e "${BOLD}Supported AI tools for export:${NC}"
            echo ""
            echo -e "  ${GREEN}cursor${NC}          Cursor IDE (.cursorrules)"
            echo -e "  ${GREEN}copilot${NC}         GitHub Copilot (.github/copilot-instructions.md)"
            echo -e "  ${GREEN}chatgpt${NC}         ChatGPT (Custom GPTs / Projects / API)"
            echo -e "  ${GREEN}gemini${NC}          Google Gemini (Gems / AI Studio / Vertex AI)"
            echo -e "  ${GREEN}claude${NC}          Claude (Projects / API / Desktop / Claude Code)"
            echo -e "  ${GREEN}windsurf${NC}        Windsurf IDE (.windsurfrules)"
            echo -e "  ${GREEN}aider${NC}           Aider (conventions file)"
            echo -e "  ${GREEN}api${NC}             Generic system prompt (any LLM API)"
            echo -e "  ${GREEN}markdown${NC}        Plain markdown (universal — works anywhere)"
            echo -e "  ${GREEN}all${NC}             Export for all tools at once"
            echo ""
            echo -e "${BOLD}Usage:${NC}  ./install.sh <role> --export <tool>"
            echo ""
            ;;
        *)
            local role="$1"
            local plugins
            plugins=$(get_plugins_for_role "$role")

            if [[ -z "$plugins" ]]; then
                echo -e "${RED}Unknown role: '$role'${NC}"
                echo ""
                echo "Available roles:"
                for r in $ALL_ROLES; do
                    echo "  $r"
                done
                exit 1
            fi

            if [[ "${2:-}" == "--preview" ]]; then
                print_banner
                list_role_plugins "$role"
            elif [[ "${2:-}" == "--export" ]]; then
                local tool="${3:-}"
                if [[ -z "$tool" ]]; then
                    echo -e "${RED}Missing tool name.${NC} Usage: ./install.sh $role --export <tool>"
                    echo ""
                    echo "Run ./install.sh --tools to see supported tools."
                    exit 1
                fi
                print_banner
                export_for_tool "$role" "$tool"
            else
                print_banner
                install_plugins "$role"
            fi
            ;;
    esac
}

main "$@"
