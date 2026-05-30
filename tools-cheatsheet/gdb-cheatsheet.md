# GDB Cheatsheet

## Building with Debug Symbols

### GCC/Clang
```bash
gcc -g your_program.c -o your_program
clang -g your_program.c -o your_program
```

### CMake
```bash
cmake -DCMAKE_BUILD_TYPE=Debug ..
```

## Starting GDB

```bash
gdb ./your_executable
```

## Basic Commands

| Command | Shortcut | Description |
|---------|----------|-------------|
| `run` | `r` | Run the program |
| `next` | `n` | Execute next line (step over) |
| `step` | `s` | Step into function |
| `finish` | `fin` | Step out of current function |
| `continue` | `c` | Continue until next breakpoint |
| `backtrace` | `bt` | Show call stack |
| `list` | `l` | Show source code context |

## TUI (Text User Interface)

### Enable TUI Mode
```
tui enable
```
Much better than basic GDB interface - shows source code in a window

### TUI Layouts

| Command | Description |
|---------|-------------|
| `layout src` | Show source code |
| `layout asm` | Show assembly only |
| `layout split` | Show both source and assembly |
| `layout regs` | Show registers (overlays source/asm) |
| `Ctrl-X 2` | Cycle through layouts |

### TUI Navigation

| Shortcut | Description |
|----------|-------------|
| `Ctrl-L` | Refresh/fix broken display (use often!) |
| `Ctrl-X O` | Switch focus between windows |
| `Up/Down` | Scroll focused window |
| `Mouse wheel` | Scroll code (limited support) |
| `Shift + Click` | Copy text from terminal |

### TUI Command History

| Shortcut | Description |
|----------|-------------|
| `Ctrl-P` | Previous command |
| `Ctrl-N` | Next command |

## Breakpoints

| Command | Description |
|---------|-------------|
| `break 27` | Set breakpoint at line 27 in current file |
| `break filename.c:27` | Set breakpoint at line 27 in specific file |
| `break function_name` | Set breakpoint at function |

When breakpoint is set, a `B` marker appears in the TUI view

## Watching Variables

**Note:** GDB TUI doesn't have a built-in locals/watch window

```
display variable_name
```
- Shows variable value after each step
- Automatically updates in the TUI display
- Can display multiple variables
- Each `display` command adds to the watch list

## Viewing Registers

```
layout regs
```
Shows all CPU registers - useful for low-level debugging

## Info Pages (Documentation)

### Man Page (Limited)
```bash
man gdb
```
Only shows basic command-line flags

### Info Pages (Complete Documentation)
```bash
info gdb
```

#### Info Page Navigation

| Key | Action |
|-----|--------|
| `Ctrl-P` | Previous line |
| `Ctrl-N` | Next line |
| `Ctrl-V` | Page down |
| `Ctrl-S` | Search |
| `Enter` | Follow link (on underlined text) |
| `U` | Go back/up |

## Tips & Tricks

1. **Always use `Ctrl-L`** - TUI display breaks frequently, refresh it often
2. **Hold Shift to copy** - GDB releases input when Shift is held
3. **Press Enter to repeat** - Repeats last command (handy for stepping)
4. **Use TUI mode** - Much better than raw GDB prompt
5. **Consider alternatives** - VS Code with C/C++ extension offers better debugging experience

## Common Workflow

1. Build with debug symbols: `gcc -g program.c -o program`
2. Start GDB: `gdb ./program`
3. Enable TUI: `tui enable`
4. Set breakpoint: `break main`
5. Run: `run`
6. Step through: `n` (next), `s` (step into), `fin` (step out)
7. Watch variables: `display var_name`
8. Continue: `c`
9. Fix display: `Ctrl-L` (when needed)

## Quick Reference Summary

**Essential shortcuts you'll use constantly:**
- `Ctrl-L` - Fix broken display
- `n` - Next line
- `s` - Step into
- `c` - Continue
- `Ctrl-X O` - Switch window focus
- `Ctrl-P/N` - Command history
