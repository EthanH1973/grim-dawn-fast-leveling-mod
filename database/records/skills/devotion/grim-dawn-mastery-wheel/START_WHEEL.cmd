@echo off
set "NODE_BIN=C:\Users\imsun\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin"
set "PNPM=C:\Users\imsun\.cache\codex-runtimes\codex-primary-runtime\dependencies\bin\fallback\pnpm.cmd"
set "PATH=%NODE_BIN%;%PATH%"
start "" http://localhost:3000/
call "%PNPM%" run dev
pause
