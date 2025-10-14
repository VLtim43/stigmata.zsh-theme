# ═══════════════════════════════════════════════════════════════════
# Stigmata ZSH Theme
# ═══════════════════════════════════════════════════════════════════
# A custom Oh My Zsh theme with git status indicators
#
# Features:
#   - Two-line prompt with decorative brackets
#   - Username display in cyan
#   - Current directory in magenta
#   - Git branch integration
#   - Visual git status indicators (⨺):
#     • Red ⨺  = Uncommitted changes present
#     • Green ⨺ = Clean repository
# ═══════════════════════════════════════════════════════════════════

# ───────────────────────────────────────────────────────────────────
# Color Definitions
# ───────────────────────────────────────────────────────────────────
local user_color="%{$fg_bold[cyan]%}"
local bracket_color="%{$fg[cyan]%}"
local dir_color="%{$fg_bold[magenta]%}"
local reset="%{$reset_color%}"

# ───────────────────────────────────────────────────────────────────
# Git Prompt Configuration
# ───────────────────────────────────────────────────────────────────
ZSH_THEME_GIT_PROMPT_PREFIX="${bracket_color}-⁅ ${reset}${bracket_color}%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${reset}${bracket_color}⁆"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}⨺${reset}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⨺${reset}"

# ───────────────────────────────────────────────────────────────────
# Main Prompt
# ───────────────────────────────────────────────────────────────────
# Line 1: ┌⁅username⁆-(current/directory)⁅branch ⨺⁆
# Line 2: └▸
PROMPT="${bracket_color}┌⁅${user_color}%n${reset}${bracket_color}⁆-(%{${dir_color}%}%~${reset}${bracket_color})\$(git_prompt_info)
└▸ ${reset}"
