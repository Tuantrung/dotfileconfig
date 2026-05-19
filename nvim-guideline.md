1. alpha
- mục đích: Màn hình dashboard khi mở Neovim (header, shortcut menu).
- tình trạng: tốt

2. autolist
- mục đích: Tự động tiếp nối list và xử lý checkbox trong Markdown/TeX/plain text (thêm bullet kế tiếp, đánh dấu checkbox, tái tính số thứ tự).
- tình trạng: bug "Cannot assign string to parameter integer - cannot match integer"

3. autopairs
- mục đích: Tự động chèn và xóa cặp dấu ngoặc/nháy khi gõ hoặc xóa.
- tình trạng: tốt

4. bufferline
- mục đích: Hiển thị buffer đang mở dưới dạng tab trên cùng; tích hợp NvimTree và ẩn khi mở Alpha.
- tình trạng: tốt
- sử dụng:
  + :bnext / :bprev để di chuyển giữa buffer.
  + :BufferLinePick để chọn buffer từ danh sách.
  + :Bdelete để đóng buffer.

5. catppuccin
- mục đích: Colorscheme chính của Neovim (theme Catppuccin Mocha).
- tình trạng: tốt

6. comment
- mục đích: Comment/uncomment code bằng phím tắt (gc, gb...).
- tình trạng: tốt
- sử dụng:
  + <C-\> (normal): toggle comment dòng hiện tại.
  + <C-\> (visual): toggle comment các dòng được chọn.
  + Lưu ý: gc và gcc bị disable (<nop>) trong config.

7. completions
- mục đích: File cấu hình cmp cũ (legacy) - khai báo dependency cmp-nvim-lsp và LuaSnip; chức năng chính đã được thay bằng nvim-cmp.lua.
- tình trạng: đã xóa (conflict với nvim-cmp.lua đã được fix)

8. debugging
- mục đích: Debug adapter (nvim-dap + nvim-dap-ui + nvim-dap-python); tự động mở/đóng UI khi bắt đầu/kết thúc debug. Hỗ trợ Python (debugpy cài qua mason).
- tình trạng: tốt
- sử dụng:
  + <F9>: toggle breakpoint.
  + <F5>: continue (start/resume debug session).
  + <F10>: step over.
  + <F11>: step into.
  + <F12>: step out.

9. dressing
- mục đích: Thay thế giao diện mặc định của vim.ui.input và vim.ui.select bằng popup đẹp hơn (border rounded, hỗ trợ telescope/fzf).
- tình trạng: tốt

10. firenvim
- mục đích: Nhúng Neovim vào ô textarea trên trình duyệt (Chrome/Firefox).
- tình trạng: đã xóa (không phù hợp workflow)

11. gitsigns
- mục đích: Hiển thị thay đổi git (add/change/delete) trong sign column; hỗ trợ blame, diff hunk, preview hunk.
- tình trạng: tốt
- sử dụng:
  + <leader>gp: preview hunk (xem diff tại vị trí con trỏ).
  + <leader>gt: toggle blame dòng hiện tại.
  + <leader>gl: blame dòng hiện tại.
  + <leader>gd: xem diff toàn file so với HEAD.
  + <leader>gj: nhảy đến hunk tiếp theo.
  + <leader>gk: nhảy đến hunk trước.
  + <leader>gb: checkout branch.
  + <leader>gg: mở LazyGit.

12. git-stuff
- mục đích: Gộp vim-fugitive (git commands trong Neovim) và cấu hình gitsigns cơ bản (phiên bản đơn giản hơn gitsigns.lua).
- tình trạng: đã xóa (trùng lặp với gitsigns.lua đã được fix)

13. indent-blankline
- mục đích: Hiển thị đường dọc thụt đầu dòng và scope hiện tại; tự động ẩn với các filetype như lazy, mason, alpha...
- tình trạng: tốt

14. lazygit
- mục đích: Mở LazyGit TUI ngay trong Neovim; tích hợp với Telescope để xem lịch sử.
- tình trạng: tốt
- sử dụng:
  + <leader>gg: mở LazyGit.

15. local-highlight
- mục đích: Highlight tất cả từ giống từ đang đặt con trỏ trong buffer hiện tại (dùng Pmenu color).
- tình trạng: tốt
- sử dụng:
  + <leader>ah: bật/tắt highlight.

16. lspconfig
- mục đích: Cấu hình LSP clients (hiện dùng pyright cho Python, lua_ls cho Lua); tích hợp capabilities với nvim-cmp.
- tình trạng: tốt
- sử dụng:
  + <leader>ld: nhảy đến định nghĩa.
  + <leader>lr: xem tất cả references.
  + <leader>lR: rename symbol.
  + <leader>lc: code action (sửa lỗi tự động).
  + <leader>lh: hover docs.
  + <leader>ll: xem lỗi dòng hiện tại.
  + <leader>lb: xem toàn bộ diagnostics của buffer.
  + <leader>ln / <leader>lp: nhảy đến lỗi tiếp/trước.
  + <leader>lk: tắt LSP.
  + <leader>ls: restart LSP.
  + <leader>lt: start LSP.

17. lualine
- mục đích: Status bar hiển thị mode, branch, diff, diagnostics, filename, filetype, vị trí con trỏ; dùng theme catppuccin-mocha.
- tình trạng: tốt

18. luasnip
- mục đích: Snippet engine; load snippet từ thư mục ~/.config/nvim/snippets/ (định dạng snipmate).
- tình trạng: tốt
- sử dụng:
  + <Tab>: expand hoặc nhảy đến vị trí tiếp theo trong snippet.
  + <S-Tab>: nhảy lùi.

19. markdown-preview
- mục đích: Preview file Markdown real-time trên trình duyệt.
- tình trạng: tốt
- sử dụng:
  + :MarkdownPreview / :MarkdownPreviewStop / :MarkdownPreviewToggle.

20. mason
- mục đích: Quản lý cài đặt LSP servers, DAP, linter, formatter (GUI trong Neovim); tự động cài khi lspconfig yêu cầu.
- tình trạng: tốt
- sử dụng:
  + :Mason để mở UI quản lý.

21. neo-tree
- mục đích: File explorer dạng sidebar (filesystem + buffers); hỗ trợ float mode cho buffer list.
- tình trạng: đã xóa (trùng chức năng với nvim-tree, giữ nvim-tree vì tích hợp bufferline)

22. none-ls
- mục đích: Kết nối formatter/linter bên ngoài vào LSP protocol (black, isort cho Python; stylua cho Lua; pylint).
- tình trạng: tốt
- sử dụng:
  + Hoạt động tự động ngầm qua LSP, không có keymap riêng.
  + <leader>af: format file hiện tại (Python: black + isort, Lua: stylua).
  + Pylint chạy liên tục, lỗi hiện trong sign column.
  + Xem lỗi qua <leader>ll (dòng hiện tại) hoặc <leader>lb (toàn buffer).
  + Lưu ý: format on save đang tắt (on_attach bị comment trong config).

23. nvim-cmp
- mục đích: Engine autocomplete chính; các source: LSP, luasnip, vimtex, buffer, spell, path, cmdline; hiển thị icon theo kind.
- tình trạng: tốt
- sử dụng:
  + <C-k>/<C-j>: chọn item trên/dưới.
  + <Tab>: expand snippet hoặc chọn item tiếp theo.
  + <CR>: confirm chọn.
  + <C-b>/<C-f>: cuộn docs.

24. nvim-tmux-navigation
- mục đích: Điều hướng liền mạch giữa Neovim splits và tmux panes bằng cùng phím tắt.
- tình trạng: tốt
- sử dụng:
  + <C-h>/<C-j>/<C-k>/<C-l>: di chuyển trái/xuống/lên/phải.

25. nvim-tree
- mục đích: File explorer thay netrw; hỗ trợ git status, diagnostics, custom keymaps, window picker khi mở file.
- tình trạng: tốt
- sử dụng:
  + <leader>e: toggle tree.
  + a/d/r/y/p/x: tạo/xóa/rename/copy/paste/cut file.
  + v: mở vertical split. H: toggle dotfiles.

26. nvim-web-devicons
- mục đích: Cung cấp icon cho file types (dùng cho nvim-tree, bufferline, lualine...); đã thêm icon cho GraphQL.
- tình trạng: tốt

27. oil
- mục đích: Quản lý file system như edit buffer (có thể rename, xóa, di chuyển file bằng cách sửa text).
- tình trạng: tốt
- sử dụng:
  + -: mở oil float tại thư mục hiện tại.

28. sessions
- mục đích: Lưu và khôi phục session làm việc (danh sách buffer, layout); autosave khi thoát.
- tình trạng: tốt
- sử dụng:
  + <leader>Ss: lưu session. <leader>Sl: load session. <leader>Sd: xóa session.

29. surround
- mục đích: Thêm/sửa/xóa ký tự bao quanh text object (ngoặc, nháy, tag...); chỉ bật visual mode mapping.
- tình trạng: tốt
- sử dụng:
  + <S-s> (visual): bao quanh vùng chọn.
  + <leader>ss/sd/sc: surround/delete/change (normal mode qua which-key).

30. swagger-preview
- mục đích: Preview tài liệu Swagger/OpenAPI trực tiếp trên trình duyệt.
- tình trạng: tốt

31. telescope
- mục đích: Fuzzy finder tổng hợp: tìm file, grep, git, bibtex citations, undo history, UI select; tích hợp fzf native.
- tình trạng: tốt
- sử dụng:
  + <C-p>: tìm file. <leader>fg: live grep. <leader><leader>: recent files.
  + <leader>ff: grep project. <leader>fc: citations bibtex.
  + <leader>u: undo history.

32. toggleterm
- mục đích: Terminal tích hợp trong Neovim (dạng vertical split, dùng shell fish); toggle nhanh bằng phím tắt.
- tình trạng: tốt
- sử dụng:
  + <C-t>: mở/đóng terminal.

33. treesitter
- mục đích: Parse cú pháp chính xác cho highlight, indent, incremental selection; hỗ trợ tsx/jsx comment qua ts_context_commentstring.
- tình trạng: tốt

34. vim-test
- mục đích: Chạy test trực tiếp từ Neovim (nearest/file/suite/last); dùng vimux làm strategy để chạy trong tmux pane.
- tình trạng: tốt
- sử dụng:
  + <leader>t: test nearest. <leader>T: test file. <leader>a: test suite. <leader>l: test last.

35. vimtex-cmp
- mục đích: Source autocomplete cho vimtex: gợi ý citations, lệnh LaTeX, tìm kiếm trên Google Scholar.
- tình trạng: tốt

36. vimtex
- mục đích: Biên dịch LaTeX, xem PDF (zathura_simple cho Wayland), quản lý TOC, đếm từ; tắt auto-indent và mapping mặc định.
- tình trạng: tốt
- sử dụng:
  + <leader>b: build. <leader>v: view PDF. <leader>i: mở TOC.
  + <leader>aw: đếm từ. <leader>ar: xem lỗi.

37. which-key
- mục đích: Hiển thị popup keybinding khi nhấn <leader>; đã map đầy đủ các nhóm LSP, Git, Find, LaTeX, Sessions, NixOS, Pandoc...
- tình trạng: tốt
- sử dụng:
  + Nhấn <leader> và chờ 200ms để xem danh sách phím tắt.

38. yanky
- mục đích: Mở rộng yank/paste với ring history (100 mục), đồng bộ clipboard hệ thống, highlight khi yank/put.
- tình trạng: tốt
- sử dụng:
  + <leader>fy: xem lịch sử yank qua Telescope.
