require 'ffi-tk'

root = TkRoot.new { title "Hello, Tk!" }
TkLabel.new(root) do
  text 'Hello, World!'
  pack { padx 15 ; pady 15; side 'left' }
end

Tk.mainloop
