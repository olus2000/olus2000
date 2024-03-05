USING: accessors assocs editors editors.vim io io.encodings.utf8
io.files io.pathnames io.styles kernel listener namespaces
sequences tools.scaffold tools.scaffold.private
ui.theme.switching vocabs.loader ;

"Aleksander Sabak" developer-name set-global

! t handle-ctrl-break set-global ! <- Unsupported?

wombat-mode

<<

! "resource:factor-talks" add-vocab-root ! vocab-roots get push

"/share/olus2000/projects" add-vocab-root

"/home/olus2000/random" add-vocab-root

>>

EDITOR: editors.vim

{ "alacritty" "-e" "nvim" } vim-path set-global

M: vim-base editor-detached? t ;

IN: fonts

CONSTANT: default-font-size 20
