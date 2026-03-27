~/.config/nvim: cat $nu.env-path | lines | where $it =~ "go/bin"
╭───┬─────────────────────────────────────────────╮
│ 0 │ $env.PATH = ($env.PATH | append "~/go/bin") │
│ 1 │ $env.PATH = ($env.PATH | append             │
│   │ "/data/data/com.termux/files/home/go/bin")  │
│ 2 │ $env.PATH = ($env.PATH | append             │
│   │ "/data/data/com.termux/files/home/go/bin")  │
╰───┴─────────────────────────────────────────────╯
~/.config/nvim: which gopls                        ╭───┬─────────┬────────────────────────┬──────────╮│ # │ command │          path          │   type   │├───┼─────────┼────────────────────────┼──────────┤│ 0 │ gopls   │ /data/data/com.termux/ │ external ││   │         │ files/home/go/bin/gopl │          ││   │         │ s                      │          │╰───┴─────────┴────────────────────────┴──────────╯~/.config/nvim: gopls version                      golang.org/x/tools/gopls v0.21.1                   ~/.config/nvim: go version
go version go1.26.0 android/arm64
~/.config/nvim:
