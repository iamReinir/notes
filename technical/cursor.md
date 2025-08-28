# CURSOR - The AI Code Editor

*Boost your coding workflow with AI assistance*

## What is Cursor?

- AI-first code editor (based on VS Code)
- Designed to integrate AI into your workflow
- Helps with coding, debugging, refactoring, documentation


## Installation
- Download from [cursor.com](https://cursor.com)
- Available for Windows, macOS, Linux

## Core Features

- **Import VS Code settings and extensions**
- **AI Autocomplete**
- **AI Chat with context and rule**: Ask coding questions in-editor
- **AI Edit**: Highlight → describe change → code updates
- **Refactor**: Project-wide natural language refactoring
- **Cursor rule**: Customize how the AI answer

---

## Feature Demonstration

### Import VS Code settings and extenstions

One-click import:

1. Open the Cursor Settings (⌘/Ctrl + Shift + J)
2. Navigate to General > Account
3. Under “VS Code Import”, click the Import button

![cursor/import.png]

This will transfer your:
- Extensions
- Themes
- Settings
- Keybindings

More on [import documentation](https://docs.cursor.com/en/guides/migration/vscode)

### Regular Agentic AI features :
- Type a function → show AI autocomplete
- Highlight code → use AI Edit
- Ask AI Chat: “Optimize this function”
- Rename a function across multiple files

---

### Rules

*Control how the Agent model behaves with reusable, scoped instructions.*

Rules provide system-level instructions to Agent and Inline Edit. Think of them as persistent context, preferences, or workflows for your projects. 

Cursor supports four types of rules:

- **Project Rules**: Stored in .cursor/rules, version-controlled and scoped to your codebase.
- **User Rules**: Global to your Cursor environment. Defined in settings and always applied.
- **AGENTS.md** Agent instructions in markdown format. Simple alternative to .cursor/rules.
- **.cursorrules** (Legacy) Still supported, but deprecated. Use Project Rules instead.

## Productivity Benefits
- Write code faster, fewer errors
- Learn APIs/libraries quickly
- Automate repetitive edits
- Focus on logic, not boilerplate

---

## Best Practices
- Be clear in prompts
- Review AI output before committing
- Use version control for safety
- Combine AI + your expertise

---

## Limitations
- AI may generate wrong/insecure code
- Requires internet for AI features
- Some features require paid plan

---

# Conclusion
Cursor = VS Code + AI superpowers 🚀


