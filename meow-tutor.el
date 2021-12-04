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

(defconst meow--tutor-content
  "
           ███╗░░░███╗███████╗░█████╗░░██╗░░░░░░░██╗
           ████╗░████║██╔════╝██╔══██╗░██║░░██╗░░██║
           ██╔████╔██║█████╗░░██║░░██║░╚██╗████╗██╔╝
           ██║╚██╔╝██║██╔══╝░░██║░░██║░░████╔═████║░
           ██║░╚═╝░██║███████╗╚█████╔╝░░╚██╔╝░╚██╔╝░
           ╚═╝░░░░░╚═╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝░░

==================================================================
=                         MEOW INTRODUCTION                      =
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
 above. Arrow keys also work, but it is faster
 to use the \\[meow-left]\\[meow-next]\\[meow-prev]\\[meow-right] keys as they are closer to the other keys you
 will be using. Try moving around to get a feel for \\[meow-left]\\[meow-next]\\[meow-prev]\\[meow-right].
 Once you're ready, hold \\[meow-next] to continue to the next lesson.

 You might be used to in that it is modal, meaning that it has
 different modes for editing text. The primary modes you will
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

 Press the \\[meow-delete] key to delete the character under the cursor.


 1. Move the cursor to the line below marked -->.
 2. Move the cursor to each extra character, and press d to
    delete it.

 --> Thhiss senttencee haass exxtra charracterss.
     This sentence has extra characters.

 Once the sentence is correct, move on to the next lesson.

=================================================================
=                          INSERT MODE                          =
=================================================================

 Press the \\[meow-insert] key to enter Insert mode.

 1. Move the cursor to the line below marked -->.
 2. Move to a place in the line which is missing text and press
    i to enter Insert mode. Keys you press will now type text.
 3. Enter the missing text.
 4. Press <ESC> to exit Insert mode and return to Normal mode.
 5. Repeat until the line matches the line below it.

 --> Th stce misg so.
     This sentence is missing some text.

 Note: If you want to move the cursor while in Insert mode,
       you may use the arrow keys instead of exiting and
       reentering Insert mode.
 Note: The modeline will display your current mode.
       Notice that when you press \\[meow-insert], 'NORMAL' changes to 'INSERT'.

=================================================================
=                      MORE ON INSERT MODE                      =
=================================================================

 As you saw, you can press \\[meow-insert] to enter Insert mode at the current
 position of the cursor. There are a few other ways you can
 enter Insert mode at different locations.

 Common examples of insertion commands include:
   \\[meow-insert] - Insert before the selection.
   \\[meow-append] - Insert after the selection. (a means 'append')
   \\[meow-join] \\[meow-append] - Insert at the start of the line.
   \\[meow-line] \\[meow-append] - Insert at the end of the line.
   \\[meow-open-above] - Insert at the above of the current line, this
     will create a new line and move the current line down
   \\[meow-open-below] - Insert a the below of the current line, this
     will create a new line and move the following content down one line.

 Yes, the command of Meow are composable! \\[meow-join] will select
 the begining of the current line and the end of the line above, and
 \\[meow-append] will open Insert mode at the end of the current selection.
 Then running the commands together will move the cursor to the beginning
 of the line then enter Insert mode. \\[meow-line] will select the whole
 line, then it's a small challendge for you to figure out how \\[meow-line] \\[meow-append] functions.

 1. Move to anywhere in the line below marked -->.
 2. Press \\[meow-line] \\[meow-append], your cursor will move to the end of
    the line and you will be able to type.
 3. Type the text necessary to match the line below.
 4. Press \\[meow-join] \\[meow-append], your cursor will move to the beginning
    of the line and you will be able to type. You may need to stride over the
    -->, just press \\[meow-right]. We will learn commands to move forword faster
    later.

 -->  sentence is miss
     This sentence is missing some text.

=================================================================
=                             RECAP                             =
=================================================================

 + Use the \\[meow-left],\\[meow-next],\\[meow-prev],\\[meow-right] keys to move the cursor.

 + Press \\[meow-delete] to delete the character at the cursor.

 + Press \\[meow-kill] to delete the selection.

 + Press \\[meow-insert] to enter Insert mode and type text. Press <ESC> to
   return to Normal mode.

=================================================================
=                    MOTIONS AND SELECTIONS                     =
=================================================================

 Press \\[meow-next-word] to select forward until the next word.
 Inline hints as colored numbers will be showed and you could press
 consponding numbers to jump there.

 Press \\[meow-kill] to delete the selection.

 The \\[meow-delete] key delete the character at the cursor, while
 \\[meow-kill] deletes all selected text.

 1. Move the cursor to the line below marked -->.
 2. Move to the beginning of a word that needs to be deleted.
 3. Press \\[meow-next-word] to select a extra word.
 4. Press \\[meow-kill] to delete the selection.
 5. Repeat for all extra words in the line.

 --> This sentence pencil has vacuum extra words in the it.
     This sentence has vacuum words in it.

 1. Move the cursor to the line below marked -->.
 2. Move to the beginning of a word that needs to be deleted.
 3. Press \\[meow-next-word] to select a extra word.
 4. Press \\[meow-kill] to delete the selection.
 5. Repeat for all extra words in the line.

 --> This sentence has a lot lot lot lot of extra words words words.
     This sentence has a lot of uncessary words words.

=================================================================
=                        MORE ON MOTIONS                        =
=================================================================

 As you saw, pressing \\[meow-next-word] moves the cursor forward until the start
 of the next word, selecting the text traversed. This is useful
 for moving around text and for selecting text to operate on.

 Some common motions include:
   \\[meow-next-word] - Move forward to before the beginning of the next word.
   \\[meow-back-word] - Move backward to the beginning of the closest backward word.
   \\[meow-next-symbol] - Select the next symbol, symbol means all the

 Symbols are like words, but they are only separated by whitespace,
 whereas words can be separated by other characters in addition to
 whitespace.

=================================================================
=                      THE CHANGE COMMAND                       =
=================================================================

 Press \\[meow-change] to change the current selection.

 The change command deletes the current selection and enters
 Insert mode, so it is a very common shorthand for \\[meow-delete]\\[meow-insert].

 1. Move the cursor to the line below marked -->.
 2. Move to the start of an incorrect word and press w to
    select it.
 3. Press \\[meow-change] to delete the word and enter Insert mode.
 4. Type the correct word.
 5. Repeat until the line matches the line below it.

 --> This paper has heavy words behind it.
     This sentence has incorrect words in it.

=================================================================
=                        SELECTING LINES                        =
=================================================================

 Press \\[meow-line] to select a whole line. Press again to select the next.

 1. Move the cursor to the second line below marked -->.
 2. Press \\[meow-line] to select the line, and d to delete it.
 3. Move to the fourth line.
 4. Press \\[meow-line] twice or type \\[meow-line]2 to select 2 lines, and \\[meow-kill] to delete.

 --> 1) Roses are red,
 --> 2) Mud is fun,
 --> 3) Violets are blue,
 --> 4) I have a car,
 --> 5) Clocks tell time,
 --> 6) Sugar is sweet,
 --> 7) And so are you.


=================================================================
=                      MOTIONS WITH EXPAND                      =
=================================================================

 We could expand the selection region easily. In fact, every motion
 command has its own expand type, indicating if it could expand and
 if it could, how to expand it (the direction and unit).


 1. Move the cursor to the line below marked -->.

 2. Type \\[meow-line] to select one line forward.

 3. Type 2 to expand the selection forward by 2 line.

 4. Try the above with different numbers.

 --> 1) Roses are red,
 --> 2) Mud is fun,
 --> 3) Violets are blue,
 --> 4) I have a car,
 --> 5) Clocks tell time,
 --> 6) Sugar is sweet,
 --> 7) And so are you.
 --> 8) Do you like meow?

=================================================================
=                         MORE ON EXPAND                        =
=================================================================

 In fact, every motion command has its own selection type, indicating
 whether we could expand its selection region and if we could, what the
 unit (character, word, line...) we use to expand it.

 \\[meow-line] have selection type \"expand, line\"
 \\[meow-next-word] has selection type \"no-expand word\"
 \\[meow-mark-word] has selection type \"expand, word\"

 1. Move the cursor to the line below marked -->.

 2. Type \\[meow-line] to select one line forward.

 3. Type 2 to expand the selection forward by 2 line.

 4. Type 2 to move 2 words backwards

 5. Try the above with different numbers.

 --> 1) Roses are red,
 --> 2) Mud is fun,
 --> 3) Violets are blue,
 --> 4) I have a car,
 --> 5) Clocks tell time,
 --> 6) Sugar is sweet,
 --> 7) And so are you.

=================================================================
=                         SAVE AND YANK                         =
=================================================================

 The \\[meow-save] could copy the content of selection, and \\[meow-yank] could
 paste the previous saved content to current cursor.

 1. Move the cursor to the line below marked -->.
 2. Type \\[meow-line] to select one line forward.
 3. Type \\[meow-save] to copy the current selection. The cursor
    will enter next position (based your current selection type).
 4. Type \\[meow-yank] to paste the copied content.
 5. You may paste as many as you can.

 --> Violets are blue, and I love you.

=================================================================
=                         KILL ANK YANK                         =
=================================================================

 The \\[meow-kill] could cut the content of selection, and \\[meow-yank] could
 paste the previous saved content to current cursor.


 1. Move the cursor to the line below marked -->.
 2. Type \\[meow-line] to select one line forward.
 3. Type \\[meow-kill] to cut the current selection. The cursor
    will jump to the first position of your current selection.
 4. Type \\[meow-yank] to paste the copied content.
 5. You may paste as many as you can.

 --> Violets are blue, and I love you.

=================================================================
=                            UNDOING                            =
=================================================================

 Type \\[meow-undo] to undo. You also use Emacs's C-/.

FIXME introduce emacs's native undo redo

 1. Move the cursor to the line below marked -->.
 2. Move to the first error, and press d to delete it.
 3. Type u to undo your deletion.
 4. Fix all the errors on the line.
 5. Type u several times to undo your fixes.
 6. Type U (<SHIFT> + u) several times to redo your fixes. FIXME

 --> Fiix the errors on thhis line and reeplace them witth undo.
     Fix the errors on this line and replace them with undo.

=================================================================
=                             RECAP                             =
=================================================================

 + Type \\[meow-next-word] to select forward until the next word.

 + Type \\[meow-back-word] to select backward from the cloest word.

 + Type \\[meow-delte] to delete one character under the cursor.

 + Typing \\[meow-change] deletes the entire selection, so you can delete a
   word forward by typing \\[meow-next-word]\\[meow-change].

 + Type \\[meow-change] to delete the selection and enter Insert mode.

 + Type a number after a motion to repeat it that many times.

 + Type \\[meow-line] to select the entire current line. Type \\[meow-line] again to
   select the next line.

 + Type \\[meow-undo] to undo. FIXME introduce Emacs's undo redo

=================================================================
=                  BMACRO (MULTIPLE CURSORS)                    =
=================================================================

 Select a region then grab it, then enter insert mode, meow will
 enter BMACRO mode now. Meow will create multiple cursors and all
 edits you do to one cursor will be synced to other cursors after
 you exit insert mdoe. Type \\[meow-grab] again to cancel grabbing.

 1. Move the cursor to the first line below marked -->.
 2. Select the six lines.
 2. Type \\[meow-grab] to grab the selection. Edits you
    make will be synced to other cursors.
 3. Use Insert mode to correct the lines. Then exit insert mode.
    Other cursors will fix the other lines after you exit insert mode.
 4. Type \\[meow-grab] to cancel the grab.

 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
 --> Fix th six nes at same ime.
     Fix these six lines at the same time.

=================================================================
=                      THE TILL COMMAND                       =
=================================================================

 Type \\[meow-till] to select matches in the selection.

 1. Move the cursor to the line below marked -->.
 2. Press . A prompt will appear in minibuffer.
 4. Type 'a' and press <ENTER>. The currection positon to the next
    'a' will be selected.

 --> I like to eat apples since my favorite fruit is apples.

=================================================================
=                         MORE ON BMACRO                        =
=================================================================

 BMACRO is powerful! Let's exercise more.

 Ex. A. How to achieve this?
        1 2 3
        =>
        [| \"1\" |] [| \"2\" |] [| \"3\" |]

 1. Move the cursor to the line below marked -->
 2. Select the whole line (you know how to do this)
 3. Press \\[meow-grab] the grab the selection
 4. Press \\[back-word] to create fake cursors at each word beginning
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
 2. Select the whole line
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
=               FIXME(rewrite this)       SELECTING VIA REGEX                      =
=================================================================

 The select command selects regular expressions, not just exact
 matches, allowing you to target more complex patterns.

 1. Move the cursor to the line below marked -->.
 2. Select the line with x and then press s.
 3. Enter   + to select any amount of consecutive spaces >1.
 4. Press c and change the matches to single spaces.

 --> This  sentence has   some      extra spaces.

 Note: If you want to perform find-and-replace, the select
       command is the way to do it. Select the text you want
       to replace in — type  to select the whole file — and
       then perform the steps explained above.




=================================================================
=                     COLLAPSING SELECTIONS                     =
=================================================================
FIXME rewrite

 Type ; to collapse selections to single cursors.

 Sometimes, you want to deselect without having to move the
 cursor(s). This can be done using the ; key.

 1. Move the cursor to the line below marked -->.

 2. Use the motions you have learned to move around the line,
    and try using ; to deselect the text after it is selected
    by the motions.

 --> This is an error-free line with words to move around in.


=================================================================
")

(defun meow-tutor ()
  "Open a buffer with meow tutor."
  (interactive)
  (let ((buf (get-buffer-create "*Meow Tutor*")))
    (with-current-buffer buf
      (erase-buffer)
      (insert (substitute-command-keys meow--tutor-content))
      (meow-mode 1)
      (goto-char (point-min)))
    (switch-to-buffer buf)))

(provide 'meow-tutor)
;;; meow-tutor.el ends here
