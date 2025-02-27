;;; meow-tutor.el --- Tutor for Meow  -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;; A tutorial for Meow.
;;
;; To start, with M-x meow-tutor

;;; Code:

(require 'meow-var)

(defconst meow--tutor-content
  "
             ███╗░░░███╗███████╗░█████╗░░██╗░░░░░░░██╗
             ████╗░████║██╔════╝██╔══██╗░██║░░██╗░░██║
             ██╔████╔██║█████╗░░██║░░██║░╚██╗████╗██╔╝
             ██║╚██╔╝██║██╔══╝░░██║░░██║░░████╔═████║░
             ██║░╚═╝░██║███████╗╚█████╔╝░░╚██╔╝░╚██╔╝░
             ╚═╝░░░░░╚═╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝░░

==================================================================
=                      MEOW INTRODUCTION                         =
==================================================================

 Meow is yet another modal editing mode for Emacs.
 What's modal editing? How to use Meow? Let's start our journey!

 If you wonder what a keystroke means when reading this, just ask
 Emacs! Press C-h k then press the key you want to query.

==================================================================
=                     BASIC CURSOR MOVEMENT                      =
==================================================================

  To move up, press \\[meow-prev]
  To move down, press \\[meow-next]
  To move left, press \\[meow-left]
  To move right, press \\[meow-right]
       ↑
       \\[meow-prev]
   ← \\[meow-left]   \\[meow-right] →
       \\[meow-next]
       ↓

 You can move the cursor using the \\[meow-left], \\[meow-next], \\[meow-prev], \\[meow-right] keys, as shown
 above. Arrow keys also work, but it is faster to use the \\[meow-left]\\[meow-next]\\[meow-prev]\\[meow-right]
 keys as they are closer to the other keys you will be using.
 Try moving around to get a feel for \\[meow-left]\\[meow-next]\\[meow-prev]\\[meow-right].
 Once you're ready, hold \\[meow-next] to continue to the next lesson.

 Meow provides modal editing which means you have different
 modes for inserting and editing text. The primary modes you will
 use are Normal mode and Insert mode. While in Normal mode, the
 keys you press won't actually type text. Instead, they will
 perform various actions with the text. This allows for more
 efficient editing. This tutor will teach you how you can make
 use of Meow's modal editing features. To begin, ensure your
 caps-lock key is not pressed and hold the \\[meow-next] key until you reach
 the first lesson.

=================================================================
=                           DELETION                            =
=================================================================

 Pressing the \\[meow-delete] key deletes the character under the cursor.
 \\[meow-backward-delete] key deletes the character before the cursor (backspace).

 1. Move the cursor to the line below marked -->.
 2. Move the cursor to each extra character, and press \\[meow-delete] to
    delete it.

 --> Thhiss senttencee haass exxtra charracterss.
     This sentence has extra characters.

 Once both sentences are identical, move to the next lesson.

=================================================================
=                          INSERT MODE                          =
=================================================================

 Pressing the \\[meow-insert] key enters the Insert mode. In that mode you can
 enter text. <ESC> returns you back to Normal mode. The modeline
 will display your current mode. When you press \\[meow-insert], '%s'
 changes to '%s'.

 1. Move the cursor to the line below marked -->.
 2. Insert the missing characters with \\[meow-insert] key.
 3. Press <ESC> to return back to Normal mode.
 4. Repeat until the line matches the line below it.

 --> Th stce misg so.
     This sentence is missing some text.

 Note: If you want to move the cursor while in Insert mode, you
       can use the arrow keys instead of exiting and re-entering
       Insert mode.

=================================================================
=                      MORE ON INSERT MODE                      =
=================================================================

 Pressing \\[meow-insert] is not the only way to enter Insert Mode. Below are
 shown other ways to enter Insert mode at different locations.

 Common examples of insertion commands include:

   \\[meow-insert]   - Insert cursor before the selection.
   \\[meow-append]   - Insert cursor after the selection.
   \\[meow-open-above]   - Insert new line above the current line.
   \\[meow-open-below]   - Insert new line below the current line.
   \\[meow-join] \\[meow-append] - Insert cursor at the start of the line.
   \\[meow-line] \\[meow-append] - Insert cursor at the end of the line.

 The commands are composable. \\[meow-join] will select the begining of the
 current line up until the end of the non-empty line above.
 \\[meow-append] switches to Insert mode at the end of current selection.
 Using both commands together will result in cursor position at
 the beginning of the line (Insert mode). \\[meow-line] selects the whole
 line and enables the use of the same insertion commands.

 1. Move to anywhere in the line below marked -->.
 2. Press \\[meow-line] \\[meow-append], your cursor will move to the end of the line
    and you will be able to type.
 3. Type the necessary text to match the line below.
 4. Press \\[meow-join] \\[meow-append] for the cursor to move to the beginning of the line.
    This will place the cursor before -->. For now just return to
    Normal mode and move cursor past it.

 -->  sentence is miss
     This sentence is missing some text.

=================================================================
=                             RECAP                             =
=================================================================

 + Use the \\[meow-left], \\[meow-next], \\[meow-prev], \\[meow-right] keys to move the cursor.

 + Press \\[meow-delete] to delete the character under the cursor.

 + Press \\[meow-backward-delete] to delete the character before the cursor.

 + Press \\[meow-insert] to enter Insert mode to input text. Press <ESC> to
   return to Normal mode.

 + Press \\[meow-join] to select the start of the current line and
   the non-empty line above.

 + Press \\[meow-append] to enter Insert mode after selected region.

=================================================================
=                    MOTIONS AND SELECTIONS                     =
=================================================================

 Pressing \\[meow-next-word] will select everything from the cursor position until
 the end of the current word. Numbers that show up on the screen
 indicate a quick way to extend your selection. You can unselect
 the region with \\[meow-cancel-selection] key.

 Pressing \\[meow-kill] will delete the current selection.

 The \\[meow-delete] key deletes the character at the cursor, while
 \\[meow-kill] deletes all of the selected text.

 1. Move the cursor to the line below marked -->.
 2. Move to the beginning of a word that needs to be deleted.
 3. Press \\[meow-next-word] to select a word.
 4. Press \\[meow-kill] to delete the selection.
 5. Repeat for all extra words in the line.

 --> This sentence pencil has vacuum extra words in the it.
     This sentence has vacuum words in it.

 Note: pressing \\[meow-kill] without selection will delete everything
       from cursor position until the end of line.

=================================================================
=                       WORDS VS SYMBOLS                        =
=================================================================

 Pressing \\[meow-mark-word] will select the whole word under the cursor. \\[meow-mark-symbol] will
 select whole symbol. Symbols are separated only by whitespace,
 whereas words can also be separated by other characters.

 To understand the difference better do the follow exercise:

 1. Move the cursor to the line below marked -->.
 2. Use \\[meow-mark-word] and \\[meow-mark-symbol] on each word in a sentece.
 3. Observe the difference in selection.

 --> Select-this and this.

=================================================================
=                    EXTENDING SELECTION                        =
=================================================================

 Motions are useful for extending the current selection and for
 quick movement around the text. After selecting the word under
 the cursor with \\[meow-mark-word] you can extend the selection with some common
 movements listed below.

   \\[meow-next-word] - Moves forward to the end of the current word.
   \\[meow-back-word] - Moves backward to the beginning of the current word.
   \\[meow-next-symbol] - Moves to the end of the current symbol.
   \\[meow-back-symbol] - Moves to the start of the current symbol.

 Cursor position can be reversed with \\[meow-reverse] to extend the selection
 the other directions. In-case too much gets selected, you can
 undo the previous selection with \\[meow-pop-selection] key.

 1. Move the cursor to the line below marked -->.
 2. Select the word with \\[meow-mark-word].
 3. Extend the selection with \\[meow-next-word].
 4. Press \\[meow-kill] to delete the selection.
 5. (Optional) Try reversing the cursor and extending selection.

 --> This sentence is most definitelly not at all short.
     This sentence is short.

=================================================================
=                        SELECTING LINES                        =
=================================================================

 Pressing \\[meow-line] will select the whole line. Pressing it again will
 add the next line to the selection. Numbers can also be used
 to select multiple lines at once.

 1. Move the cursor to the second line below marked -->.
 2. Press \\[meow-line] to select the line, and \\[meow-kill] to delete it.
 3. Move to the fourth line.
 4. Select 2 lines either by hitting \\[meow-line] twice or \\[meow-line] 2 combination.
 5. Delete the selection with \\[meow-kill].

 --> 1) Roses are red,
 --> 2) Mud is fun,
 --> 3) Violets are blue,
 --> 4) I have a car,
 --> 5) Clocks tell time,
 --> 6) Sugar is sweet,
 --> 7) And so are you.

=================================================================
=                 EXTENDING SELECTION BY OBJECT                 =
=================================================================

 Expanding the selected region is easy. In fact every motion
 command has its own expand type. Motions can be expanded in
 different directions and units.

 Common selection expanding motions by a THING:

   \\[meow-beginning-of-thing] - expand before cursor until beginning of...
   \\[meow-end-of-thing] - expand after cursor until end of...
   \\[meow-inner-of-thing] - select the inner part of...
   \\[meow-bounds-of-thing] - select the whole part of...

 Some of THING modifiers may include:

  r - round parenthesis
  s - square parenthesis
  c - curly parenthesis
  g - string
  p - paragraph
  l - line
  d - defun
  b - buffer

 1. Move the cursor to the paragraph below.
 2. Type \\[meow-bounds-of-thing] p to select the whole paragraph.
 3. Type \\[meow-cancel-selection] to cancel the selection.
 4. Type \\[meow-inner-of-thing] l to selection one line.
 5. Type \\[meow-cancel-selection] to cancel the selection.
 6. Play the commands you learned this section. You can do anything
    you want with the powerful commands!

 War and Peace by Leo Tolstoy, is considered one of the greatest works of
 fiction.It is regarded, along with Anna Karenina (1873–1877), as Tolstoy's
 finest literary achievement. Epic in scale, War and Peace delineates in graphic
 detail events leading up to Napoleon's invasion of Russia, and the impact of the
 Napoleonic era on Tsarist society, as seen through the eyes of five Russian
 aristocratic families.Newsweek in 2009 ranked it top of its list of Top 100
 Books.Tolstoy himself, somewhat enigmatically, said of War and Peace that it was
 \"not a novel, even less is it a poem, and still less an historical chronicle.\"

=================================================================
=                   THE FIND/TILL COMMAND                       =
=================================================================

 Type \\[meow-till] to select to the next specfic character.

 1. Move the cursor to the line below marked -->.
 2. Press \\[meow-till]. A prompt will appear in minibuffer.
 4. Type 'a' The currection positon to the next 'a' will be
    selected.

 --> I like to eat apples since my favorite fruit is apples.

 Note: If you want go backward, use \\[negative-argument] as a prefix, there is also
       a similar command on \\[meow-find], which will jump over that
       character.

=================================================================
=                            RECAP                              =
=================================================================

 + Unselect region with \\[meow-cancel-selection] key.

 + Reverse cursor position in selected region with \\[meow-reverse] key.

 + Undo selection with \\[meow-pop-selection].

 + Press \\[meow-next-word] to select until the end of current word.

 + Press \\[meow-back-word] to select until the start of closest word.

 + Press \\[meow-next-symbol] to select until the end of symbol.

 + Press \\[meow-back-symbol] to select until the start of symbol.

 + Press \\[meow-line] to select the entire current line. Type \\[meow-line] again to
   select the next line.

 + Motion can be repeated multiple times by number modifier.

 + Extend selection by THING modifiers (\\[meow-beginning-of-thing] \\[meow-end-of-thing] \\[meow-inner-of-thing] \\[meow-bounds-of-thing])

 + Find by a single character with \\[meow-till] and \\[meow-find].

=================================================================
=                      THE CHANGE COMMAND                       =
=================================================================

 Pressing \\[meow-change] will delete the current selection and switch to
 Insert mode. If there is no selection it will change only
 the character under the cursor. It is a shorthand for \\[meow-delete] \\[meow-insert].

 1. Move the cursor to the line below marked -->.
 2. Select the incorrect word with \\[meow-next-word].
 3. Press \\[meow-change] to delete the word and enter Insert mode.
 4. Replace it with correct word and return to Normal mode.
 5. Repeat until the line matches the line below it.

 --> This paper has heavy words behind it.
     This sentence has incorrect words in it.

=================================================================
=                         KILL ANK YANK                         =
=================================================================

 The \\[meow-kill] also copies the deleted content which can be then
 pasted with \\[meow-yank].

 1. Move the cursor to the line below marked -->.
 2. Type \\[meow-line] to select the line.
 3. Type \\[meow-kill] to cut the current selection.
 4. Type \\[meow-yank] to paste the copied content.
 5. You can paste as many times as you want.

 --> Violets are blue, and I love you.

=================================================================
=                         SAVE AND YANK                         =
=================================================================

 Pressing \\[meow-save] copies the selection, which can be then pasted
 with \\[meow-yank] under the cursor.

 1. Move the cursor to the line below marked -->.
 2. Press \\[meow-line] to select one line forward.
 3. Press \\[meow-save] to copy the current selection.
 4. Press \\[meow-yank] to paste the copied content.
 5. You can paste as many times as you want.

 --> Violets are blue, and I love you.

=================================================================
=                            UNDOING                            =
=================================================================

 Pressing \\[meow-undo] triggers undo. The \\[meow-undo-in-selection] key will undo only the changes
 under selected region.

 1. Move the cursor to the line below marked -->.
 2. Move to the first error, and press \\[meow-delete] to delete it.
 3. Type \\[meow-undo] to undo your deletion.
 4. Fix all the errors on the line.
 5. Type u several times to undo your fixes.

 --> Fiix the errors on thhis line and reeplace them witth undo.
     Fix the errors on this line and replace them with undo.

=================================================================
=                             RECAP                             =
=================================================================

 + Press \\[meow-change] to delete the selection and enter Insert mode.

 + Press \\[meow-save] to copy the selection.

 + Press \\[meow-yank] to paste the copied or deleted text.

 + Press \\[meow-undo] to undo last change.

 + Press \\[meow-undo-in-selection] to only undo changes in selected region.

=================================================================
=               BEACON (BATCHED KEYBOARD MACROS)                =
=================================================================

 Keyboard macro is an Emacs builtin function. Now with Meow, it's
 more powerful. We could do things like multi-editing with Beacon
 mode in Meow.

 Select a region then press \\[meow-grab] to \"grab\" it, then enter
 Insert mode, meow will enter Beacon mode now. Meow will create multiple
 cursors and all edits you do to one cursor will be synced to other
 cursors after you exit insert mdoe. Type \\[meow-grab] again to cancel
 grabbing.

 1. Move the cursor to the first line below marked -->.
 2. Select the six lines.
 3. Type \\[meow-grab] to grab the selection. Edits you
    make will be synced to other cursors.
 4. Use Insert mode to correct the lines. Then exit insert mode.
    Other cursors will fix the other lines after you exit insert mode.
 5. Type \\[meow-grab] to cancel the grabbing.

 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
     Fix these six lines at the same time.

=================================================================
=                         MORE ON BEACON                        =
=================================================================

 BEACON is powerful! Let's exercise more.

 Ex. A. How to achieve this?
        1 2 3
        =>
        [| \"1\" |] [| \"2\" |] [| \"3\" |]

 1. Move the cursor to the line below marked -->
 2. Select the whole line (you know how to do this)
 3. Press \\[meow-grab] the grab the selection
 4. Press \\[meow-back-word] to create fake cursors at each word beginning
 5. Press \\[kmacro-start-macro-or-insert-counter] to start key macro
    recording
 6. Edit.
 7. Press \\[kmacro-end-or-call-macro] to stop macro recording and apply
    to all fake cursors
 8. Press \\[meow-grab] again to cancel grab.
 --> 1 2 3
     [| \"1\" |] [| \"2\" |] [| \"3\" |]

 Ex. B. How to achieve this?
        x-y-foo-bar-baz
        =>
        x_y_foo_bar_baz

 1. Move the cursor to the line below marked -->
 2. Select the whole symbol with \\[meow-mark-symbol]
 3. Press \\[meow-grab] to activate secondary selection
 4. Press \\[negative-argument] \\[meow-find] and - to backward search for
    character -, will create fake cursor at each -
 5. Meow will start recording. Press \\[meow-change] to switch to Insert mode
    (character under current cursor is deleted)
 6. type _
 7. Press ESC to go back to NORMAL, then macro will be applied to all fake cursors.
 8. Press \\[meow-grab] again to cancel grab

 --> x-y-foo-bar-baz
     x_y_foo_bar_baz

=================================================================
=                     QUICK VISIT AND SEARCH                    =
=================================================================

 The visit command on \\[meow-visit] can help to select a symbol in your
 buffer with completion. Once you have something selected by \\[meow-visit]
 You can use \\[meow-search] to search for the next occur.

 If you want a backword search, reverse the selection with \\[meow-reverse], because
 \\[meow-search] will respect the direction of current selection.

 1. Move the cursor to the line below marked -->.
 2. Select the word \"dog\" with \\[meow-visit] dog RET.
 3. Change it to \"cat\" with \\[meow-change] cat ESC.
 4. Save it with \\[meow-save].
 5. Search for next \"dog\" and replace it with \\[meow-search] \\[meow-replace].
 6. Repeat 5 to replace next \"dog\".

 --> I'm going to tell you something:
     dog is beautiful
     and dog is agile
     the last one, dog says meow

 Note: You can also start searching after \\[meow-mark-word] or \\[meow-mark-symbol]. Actually, you
       can use \\[meow-search] whenever you have a selection. The search command
       is built on regular expression. The symbol boundary will be
       add to your search if selection is created by \\[meow-visit], \\[meow-mark-word] and \\[meow-mark-symbol].

=================================================================
=                    KEYPAD AND MOTION MODE                     =
=================================================================

 One of the most notable feature of Meow is the Keypad. It
 enables the use of modifier keybinds without pressing modifiers.

 There are five keybinding to start Keypad by default, each will
 start with different input.

 Once Keypad is started, your single key input, will be treated
 as that key pressed with Control.

 Let's see some examples

 SPC x => Start with C-x as initial input.
 Try SPC x f, which stands for C-x C-f

 SPC c => Start with C-c as initial input.

 SPC h => Start with C-h as initial input.

 SPC m => Start with M-, means next input will be modified by Meta
 Try SPC m x, which stands for M-x.

 SPC g => Start with C-M-, means next input will be modified by
          Control and Meta.
 Try SPC g l, which stands for C-M-l.

 In Keypad, if you don't want next key is modified by Control,
 use SPC as a prefix. if you want to apply other modifiers to
 next input, using following keys as prefix:

 m => M-
 g => C-M-

 To revoke one input, press BACKSPACE. To cancel and exit Keypad
 immediately, press ESC.

=================================================================
=                     MEOW CHEAT SHEET                          =
=================================================================

 All these keybinds are shown on the cheat sheet which can be
 opened by pressing \\[meow-cheatsheet].

=================================================================
")

(defun meow-tutor ()
  "Open a buffer with meow tutor."
  (interactive)
  (let ((buf (get-buffer-create "*Meow Tutor*")))
    (with-current-buffer buf
      (erase-buffer)
      (insert (format (substitute-command-keys meow--tutor-content)
                      (alist-get 'normal meow-replace-state-name-list)
                      (alist-get 'insert meow-replace-state-name-list)))
      (setq-local scroll-conservatively 1)
      (setq-local scroll-margin 3)
      (setq-local scroll-step 1)
      (goto-char (point-min))
      (display-line-numbers-mode))
    (switch-to-buffer buf)))

(provide 'meow-tutor)
;;; meow-tutor.el ends here
