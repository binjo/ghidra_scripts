#Ghidra script to import deobfuscated CLOCKJUMP strings, comment and bookmark
#@author binjo
#@category User
#@keybinding
#@menupath
#@toolbar

# https://github.com/Dump-GUY/ghidra_scripts/blob/master/CAPA_Importer.py
from ghidra.program.model.listing import CodeUnit
from ghidra.program.database.bookmark import BookmarkDBManager

import os

class ClockJumpStr(object):

    def __init__(self, f):
        ctn = open(f, 'rb').readlines()
        self._ss = [x.strip() for x in ctn if x.startswith('0x')]

    def set_comments(self, addr, cmt):
        cu = currentProgram.getListing().getCodeUnitAt(toAddr(addr))
        ocm = cu.getComment(CodeUnit.PRE_COMMENT)
        cu.setComment(CodeUnit.PRE_COMMENT, ocm + '\n' + 'CLOCKJUMP: ' + cmt)

    def set_bookmark(self, addr, mark):
        bm = getBookmarks(toAddr(addr))
        createBookmark(toAddr(addr), "CLOCKJUMP", mark)
        # if not bm:
        #     createBookmark(toAddr(addr), "CLOCKJUMP", mark)
        # else:
        #     omark = bm[0].getComment()
        #     createBookmark(toAddr(addr), "CLOCKJUMP", mark + ',' + omark)

    def parse(self):

        for s in self._ss:
            tmp = s.split(' ')
            if len(tmp) < 3:
                continue

            self.set_bookmark(tmp[0], tmp[2])
            # self.set_comments(tmp[0], tmp[2])


f = askFile('Select r2obfs.py output file', 'Import')
x = ClockJumpStr(f.absolutePath)
x.parse()
