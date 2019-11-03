<?xml version="1.0" encoding="UTF-8"?>
<TOOL_CONFIG CONFIG_NAME="NO_LONGER_USED">
    <SUPPORTED_DATA_TYPE CLASS_NAME="ghidra.program.model.listing.DataTypeArchive" />
    <SUPPORTED_DATA_TYPE CLASS_NAME="ghidra.program.model.listing.Program" />
    <ICON LOCATION="red-dragon.gif" />
    <TOOL TOOL_NAME="MyCodeBrowser" INSTANCE_NAME="">
        <OPTIONS>
            <CATEGORY NAME="Listing Fields">
                <STATE NAME="Function Signature Field.Display Namespace" TYPE="boolean" VALUE="true" />
                <STATE NAME="Pcode Field.Maximum Lines To Display" TYPE="int" VALUE="50" />
                <ENUM NAME="Field Name.Array Index Format" TYPE="enum" CLASS="ghidra.app.util.viewer.field.FieldNameFieldFactory$IndexFormat" VALUE="hex" />
                <STATE NAME="Operands Field.Markup Register Variable References" TYPE="boolean" VALUE="false" />
                <ENUM NAME="Cursor Text Highlight.Mouse Button To Activate" TYPE="enum" CLASS="ghidra.GhidraOptions$CURSOR_MOUSE_BUTTON_NAMES" VALUE="LEFT" />
                <STATE NAME="Operands Field.Add Space After Separator" TYPE="boolean" VALUE="true" />
            </CATEGORY>
            <CATEGORY NAME="Key Bindings">
                <WRAPPED_OPTION NAME="Rename Data Field (DataPlugin)" CLASS="ghidra.framework.options.WrappedKeyStroke">
                    <STATE NAME="KeyCode" TYPE="int" VALUE="76" />
                    <STATE NAME="Modifiers" TYPE="int" VALUE="0" />
                </WRAPPED_OPTION>
                <WRAPPED_OPTION NAME="Edit Options (Tool)" CLASS="ghidra.framework.options.WrappedKeyStroke">
                    <STATE NAME="KeyCode" TYPE="int" VALUE="48" />
                    <STATE NAME="Modifiers" TYPE="int" VALUE="260" />
                </WRAPPED_OPTION>
                <WRAPPED_OPTION NAME="Edit Function Signature (DecompilePlugin)" CLASS="ghidra.framework.options.WrappedKeyStroke">
                    <STATE NAME="KeyCode" TYPE="int" VALUE="89" />
                    <STATE NAME="Modifiers" TYPE="int" VALUE="0" />
                </WRAPPED_OPTION>
            </CATEGORY>
            <CATEGORY NAME="Decompiler">
                <STATE NAME="Display.Number of characters per indent level" TYPE="int" VALUE="4" />
                <STATE NAME="Display.Print 'NULL' for null pointers" TYPE="boolean" VALUE="true" />
                <STATE NAME="Analysis.Respect readonly flags" TYPE="boolean" VALUE="false" />
                <STATE NAME="Display.Display Namespaces" TYPE="boolean" VALUE="true" />
                <STATE NAME="Analysis.Eliminate unreachable code" TYPE="boolean" VALUE="false" />
                <WRAPPED_OPTION NAME="Display.Font" CLASS="ghidra.framework.options.WrappedFont">
                    <STATE NAME="size" TYPE="int" VALUE="14" />
                    <STATE NAME="style" TYPE="int" VALUE="0" />
                    <STATE NAME="family" TYPE="string" VALUE="Source Code Pro" />
                </WRAPPED_OPTION>
            </CATEGORY>
            <CATEGORY NAME="Comments">
                <STATE NAME="Enter accepts comment" TYPE="boolean" VALUE="true" />
            </CATEGORY>
            <CATEGORY NAME="ByteViewer">
                <WRAPPED_OPTION NAME="Font" CLASS="ghidra.framework.options.WrappedFont">
                    <STATE NAME="size" TYPE="int" VALUE="14" />
                    <STATE NAME="style" TYPE="int" VALUE="0" />
                    <STATE NAME="family" TYPE="string" VALUE="Source Code Pro" />
                </WRAPPED_OPTION>
            </CATEGORY>
            <CATEGORY NAME="Editors">
                <STATE NAME="Union Editor.Show Numbers In Hex" TYPE="boolean" VALUE="true" />
                <STATE NAME="Structure Editor.Show Numbers In Hex" TYPE="boolean" VALUE="true" />
            </CATEGORY>
            <CATEGORY NAME="Console">
                <WRAPPED_OPTION NAME="Font" CLASS="ghidra.framework.options.WrappedFont">
                    <STATE NAME="size" TYPE="int" VALUE="14" />
                    <STATE NAME="style" TYPE="int" VALUE="0" />
                    <STATE NAME="family" TYPE="string" VALUE="Source Code Pro" />
                </WRAPPED_OPTION>
            </CATEGORY>
            <CATEGORY NAME="Listing Display">
                <WRAPPED_OPTION NAME="BASE FONT" CLASS="ghidra.framework.options.WrappedFont">
                    <STATE NAME="size" TYPE="int" VALUE="14" />
                    <STATE NAME="style" TYPE="int" VALUE="0" />
                    <STATE NAME="family" TYPE="string" VALUE="Source Code Pro" />
                </WRAPPED_OPTION>
            </CATEGORY>
        </OPTIONS>
        <PACKAGE NAME="Ghidra Core">
            <INCLUDE CLASS="ghidra.app.plugin.core.editor.TextEditorManagerPlugin" />
            <INCLUDE CLASS="ghidra.app.plugin.core.interpreter.InterpreterPanelPlugin" />
        </PACKAGE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.symboltree.SymbolTreePlugin">
            <STATE NAME="GO_TO_TOGGLE_STATE" TYPE="boolean" VALUE="false" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.functiongraph.FunctionGraphPlugin">
            <XML NAME="USER_DEFINED_FORMAT_MANAGER">
                <SAVE_STATE>
                    <XML NAME="Array">
                        <FORMAT>
                            <ROW>
                                <FIELD NAME="Address" WIDTH="50" ENABLED="true" />
                            </ROW>
                        </FORMAT>
                    </XML>
                    <XML NAME="Function">
                        <FORMAT>
                            <ROW>
                                <FIELD NAME="Function Signature" WIDTH="410" ENABLED="true" />
                            </ROW>
                        </FORMAT>
                    </XML>
                    <XML NAME="Variable">
                        <FORMAT>
                            <ROW>
                                <FIELD WIDTH="50" ENABLED="true" />
                                <FIELD NAME="Variable Type" WIDTH="110" ENABLED="true" />
                                <FIELD NAME="Variable Location" WIDTH="120" ENABLED="true" />
                                <FIELD NAME="Variable Name" WIDTH="280" ENABLED="true" />
                            </ROW>
                        </FORMAT>
                    </XML>
                    <XML NAME="Address Break">
                        <FORMAT>
                            <ROW />
                        </FORMAT>
                    </XML>
                    <XML NAME="Instruction/Data">
                        <FORMAT>
                            <ROW>
                                <FIELD WIDTH="70" ENABLED="true" />
                                <FIELD NAME="Label" WIDTH="150" ENABLED="true" />
                            </ROW>
                            <ROW>
                                <FIELD NAME="Address" WIDTH="80" ENABLED="true" />
                                <FIELD NAME="Mnemonic" WIDTH="60" ENABLED="true" />
                                <FIELD NAME="Operands" WIDTH="195" ENABLED="true" />
                            </ROW>
                        </FORMAT>
                    </XML>
                    <XML NAME="Plate">
                        <FORMAT>
                            <ROW />
                        </FORMAT>
                    </XML>
                    <XML NAME="Open Data">
                        <FORMAT>
                            <ROW>
                                <FIELD NAME="Address" WIDTH="50" ENABLED="true" />
                                <FIELD NAME="Mnemonic" WIDTH="37" ENABLED="true" />
                                <FIELD NAME="Operands" WIDTH="195" ENABLED="true" />
                            </ROW>
                        </FORMAT>
                    </XML>
                </SAVE_STATE>
            </XML>
            <ENUM NAME="EDGE_HOVER_HIGHLIGHT" TYPE="enum" CLASS="ghidra.app.plugin.core.functiongraph.EdgeDisplayType" VALUE="ScopedFlowsFromVertex" />
            <STATE NAME="DISPLAY_SATELLITE" TYPE="boolean" VALUE="true" />
            <STATE NAME="LAYOUT_NAME" TYPE="string" VALUE="ghidra.app.plugin.core.functiongraph.graph.layout.DecompilerNestedLayoutProvider" />
            <STATE NAME="DISPLAY_POPUPS" TYPE="boolean" VALUE="true" />
            <ENUM NAME="EDGE_SELECTION_HIGHLIGHT" TYPE="enum" CLASS="ghidra.app.plugin.core.functiongraph.EdgeDisplayType" VALUE="AllCycles" />
            <STATE NAME="DOCK_SATELLITE" TYPE="boolean" VALUE="true" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.bookmark.BookmarkPlugin">
            <ARRAY NAME="BOOKMARK_TYPES" TYPE="string">
                <A VALUE="Warning" />
                <A VALUE="Analysis" />
                <A VALUE="Note" />
                <A VALUE="Error" />
                <A VALUE="Info" />
            </ARRAY>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.codebrowser.CodeBrowserPlugin">
            <XML NAME="Array">
                <FORMAT>
                    <ROW>
                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Address" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="Field Name" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="Array Values" WIDTH="600" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <XML NAME="Function">
                <FORMAT>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Function Signature" WIDTH="410" ENABLED="true" />
                        <FIELD NAME="Function Repeatable Comment" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Thunked-Function" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Function Call-Fixup" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Function Tags" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Register" WIDTH="300" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <XML NAME="Variable">
                <FORMAT>
                    <ROW>
                        <FIELD WIDTH="90" ENABLED="true" />
                        <FIELD NAME="Variable Type" WIDTH="110" ENABLED="true" />
                        <FIELD NAME="Variable Location" WIDTH="120" ENABLED="true" />
                        <FIELD NAME="Variable Name" WIDTH="280" ENABLED="true" />
                        <FIELD NAME="Variable XRef Header" WIDTH="90" ENABLED="true" />
                        <FIELD NAME="Variable XRef" WIDTH="130" ENABLED="true" />
                        <FIELD NAME="Variable Comment" WIDTH="110" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <STATE NAME="Hover Mode" TYPE="boolean" VALUE="true" />
            <XML NAME="Address Break">
                <FORMAT>
                    <ROW>
                        <FIELD NAME="Separator" WIDTH="30" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <STATE NAME="DividerLocation" TYPE="int" VALUE="30" />
            <XML NAME="Instruction/Data">
                <FORMAT>
                    <ROW>
                        <FIELD WIDTH="90" ENABLED="true" />
                        <FIELD NAME="Register Transition" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Pre-Comment" WIDTH="440" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="188" ENABLED="true" />
                        <FIELD NAME="Label" WIDTH="230" ENABLED="true" />
                        <FIELD NAME="XRef Header" WIDTH="90" ENABLED="true" />
                        <FIELD NAME="XRef" WIDTH="240" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Address" WIDTH="80" ENABLED="true" />
                        <FIELD NAME="Bytes" WIDTH="160" ENABLED="true" />
                        <FIELD WIDTH="10" ENABLED="true" />
                        <FIELD NAME="Parallel ||" WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Mnemonic" WIDTH="70" ENABLED="true" />
                        <FIELD WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Operands" WIDTH="340" ENABLED="true" />
                        <FIELD NAME="EOL Comment" WIDTH="240" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="210" ENABLED="true" />
                        <FIELD NAME="PCode" WIDTH="400" ENABLED="false" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Post-Comment" WIDTH="440" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD NAME="Space" WIDTH="640" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <XML NAME="Plate">
                <FORMAT>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Memory Block Start" WIDTH="440" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Plate Comment" WIDTH="440" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <XML NAME="Open Data">
                <FORMAT>
                    <ROW>
                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Address" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="Bytes" WIDTH="110" ENABLED="true" />
                        <FIELD NAME="Mnemonic" WIDTH="70" ENABLED="true" />
                        <FIELD NAME="Operands" WIDTH="250" ENABLED="true" />
                        <FIELD NAME="Field Name" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="EOL Comment" WIDTH="140" ENABLED="true" />
                        <FIELD NAME="XRef Header" WIDTH="90" ENABLED="true" />
                        <FIELD NAME="XRef" WIDTH="240" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.datamgr.DataTypeManagerPlugin">
            <STATE NAME="PreviewWindowState" TYPE="boolean" VALUE="false" />
            <STATE NAME="ArrayFilterState" TYPE="boolean" VALUE="true" />
            <ARRAY NAME="ArchiveNames" TYPE="string">
                <A VALUE="$GHIDRA_HOME/Features/Base/data/typeinfo/win32/windows_vs12_32.gdt" />
            </ARRAY>
            <STATE NAME="ConflictResolutionMode" TYPE="string" VALUE="RENAME_AND_ADD" />
            <ARRAY NAME="RecentArchiveNames" TYPE="string">
                <A VALUE="$GHIDRA_HOME/Features/Base/data/typeinfo/generic/generic_clib.gdt" />
                <A VALUE="$GHIDRA_HOME/Features/Base/data/typeinfo/win32/windows_vs12_32.gdt" />
                <A VALUE="$GHIDRA_HOME/Features/Base/data/typeinfo/mac_10.9/mac_osx.gdt" />
                <A VALUE="$GHIDRA_HOME/Features/Base/data/typeinfo/generic/generic_clib_64.gdt" />
                <A VALUE="$GHIDRA_HOME/Features/Base/data/typeinfo/win32/windows_vs12_64.gdt" />
            </ARRAY>
            <STATE NAME="PointerFilterState" TYPE="boolean" VALUE="false" />
            <ARRAY NAME="Favorite Dts" TYPE="string">
                <A VALUE="/pointer" />
                <A VALUE="/char" />
                <A VALUE="/string" />
                <A VALUE="/TerminatedCString" />
                <A VALUE="/TerminatedUnicode" />
                <A VALUE="/float" />
                <A VALUE="/double" />
                <A VALUE="/longdouble" />
                <A VALUE="/int" />
                <A VALUE="/long" />
                <A VALUE="/uint" />
                <A VALUE="/ulong" />
                <A VALUE="/byte" />
                <A VALUE="/word" />
                <A VALUE="/dword" />
                <A VALUE="/qword" />
            </ARRAY>
            <STATE NAME="DataMembersInSearchState" TYPE="boolean" VALUE="false" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.symtable.SymbolTablePlugin">
            <XML NAME="FILTER_SETTINGS">
                <SYMBOL_TABLE_FILTER>
                    <ADVANCED_FILTER NAME="Primary Labels" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Offcut Labels" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Default (Functions)" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="false" />
                    <FILTER NAME="Imported" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Non-Primary Labels" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <ADVANCED_FILTER NAME="Externals" ACTIVE="false">
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <ADVANCED_FILTER NAME="Non-Externals" ACTIVE="false">
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                    <FILTER NAME="External Library" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <FILTER NAME="User Defined" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Stack Variables" ACTIVE="false">
                        <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Default (Labels)" ACTIVE="false" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Not In Memory" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                    <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Globals" ACTIVE="false">
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Register Variables" ACTIVE="false">
                        <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Global Register Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Locals" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <ADVANCED_FILTER NAME="Subroutines" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Analysis" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Entry Points" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <ADVANCED_FILTER NAME="Unreferenced" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                </SYMBOL_TABLE_FILTER>
            </XML>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.byteviewer.ByteViewerPlugin">
            <ARRAY NAME="View Names" TYPE="string">
                <A VALUE="Hex" />
                <A VALUE="Ascii" />
            </ARRAY>
            <STATE NAME="Hex view groupsize" TYPE="int" VALUE="1" />
            <STATE NAME="Bytes Per Line" TYPE="int" VALUE="16" />
            <STATE NAME="Offset" TYPE="int" VALUE="0" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.script.GhidraScriptMgrPlugin">
            <ARRAY NAME="Scripts_Actions_Key" TYPE="string">
                <A VALUE="SwitchOverride.java" />
                <A VALUE="FindUnrecoveredSwitchesScript.java" />
                <A VALUE="MarkupWallaceSrcScript.java" />
            </ARRAY>
            <ARRAY NAME="PathManagerPanel_ENABLE" TYPE="boolean">
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
            </ARRAY>
            <ARRAY NAME="PathManagerPanel_EDIT" TYPE="boolean">
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
            </ARRAY>
            <ARRAY NAME="PathManagerPanel_PATH" TYPE="string">
                <A VALUE="/Do_Not_Scan/3.tmp/INFILTRATE2019-master/Completed" />
                <A VALUE="/Do_Not_Scan/3.tmp/INFILTRATE2019-master" />
                <A VALUE="$USER_HOME/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/Base/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/BytePatterns/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/Decompiler/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/FileFormats/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/FunctionID/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/GnuDemangler/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/Python/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/VersionTracking/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Processors/8051/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Processors/DATA/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Processors/PIC/ghidra_scripts" />
            </ARRAY>
            <STATE NAME="DEFAULT_FONT_NAME" TYPE="string" VALUE="monospaced" />
            <ARRAY NAME="PathManagerPanel_READ" TYPE="boolean">
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
            </ARRAY>
            <STATE NAME="DEFAULT_FONT_SIZE" TYPE="int" VALUE="12" />
            <STATE NAME="DEFAULT_FONT_STYLE" TYPE="int" VALUE="0" />
            <STATE NAME="DESCRIPTION_DIVIDER_LOCATION" TYPE="int" VALUE="545" />
            <STATE NAME="FILTER_TEXT" TYPE="string" VALUE="" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="functioncalls.plugin.FunctionCallGraphPlugin">
            <STATE NAME="DISPLAY_SATELLITE" TYPE="boolean" VALUE="true" />
            <STATE NAME="DOCK_SATELLITE" TYPE="boolean" VALUE="true" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.datapreview.DataTypePreviewPlugin">
            <STATE NAME="TerminatedCString" TYPE="string" VALUE="/" />
            <STATE NAME="byte" TYPE="string" VALUE="/" />
            <STATE NAME="double" TYPE="string" VALUE="/" />
            <STATE NAME="dword" TYPE="string" VALUE="/" />
            <STATE NAME="char" TYPE="string" VALUE="/" />
            <STATE NAME="qword" TYPE="string" VALUE="/" />
            <STATE NAME="TerminatedUnicode" TYPE="string" VALUE="/" />
            <STATE NAME="float" TYPE="string" VALUE="/" />
            <STATE NAME="word" TYPE="string" VALUE="/" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.plugin.importer.ImporterPlugin">
            <ARRAY NAME="library search paths" TYPE="string">
                <A VALUE="." />
                <A VALUE="/Users/genwei.jiang/Library/Java/Extensions" />
                <A VALUE="/Library/Java/Extensions" />
                <A VALUE="/Network/Library/Java/Extensions" />
                <A VALUE="/System/Library/Java/Extensions" />
                <A VALUE="/usr/lib/java" />
            </ARRAY>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.overview.OverviewColorPlugin">
            <ARRAY NAME="ActiveServices" TYPE="string">
                <A VALUE="Overview" />
            </ARRAY>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.navigation.GoToAddressLabelPlugin">
            <STATE NAME="CASE_SENSITIVE" TYPE="boolean" VALUE="false" />
            <STATE NAME="INCLUDE_DYNAMIC" TYPE="boolean" VALUE="true" />
            <ARRAY NAME="GO_TO_HISTORY" TYPE="string">
                <A VALUE="6339b56b" />
                <A VALUE="20cca100" />
                <A VALUE="call_refer_struct_unk1" />
                <A VALUE="xml_parse_content" />
                <A VALUE="208805e1" />
                <A VALUE="20869060" />
                <A VALUE="2106fb08" />
                <A VALUE="2086fb08" />
                <A VALUE="20889CD9" />
                <A VALUE="20889D60" />
            </ARRAY>
        </PLUGIN_STATE>
        <ROOT_NODE X_POS="0" Y_POS="23" WIDTH="1680" HEIGHT="1027" EX_STATE="6" FOCUSED_OWNER="CodeBrowserPlugin" FOCUSED_NAME="CodeBrowserPlugin" FOCUSED_TITLE="Listing: jscript.dll">
            <SPLIT_NODE WIDTH="1920" HEIGHT="1068" DIVIDER_LOCATION="739" ORIENTATION="VERTICAL">
                <SPLIT_NODE WIDTH="1621" HEIGHT="816" DIVIDER_LOCATION="148" ORIENTATION="VERTICAL">
                    <COMPONENT_NODE TOP_INFO="0">
                        <COMPONENT_INFO NAME="Entropy" OWNER="EntropyPlugin" TITLE="Entropy" ACTIVE="false" GROUP="Header" INSTANCE_ID="3207819926581772885" />
                        <COMPONENT_INFO NAME="Overview" OWNER="OverviewPlugin" TITLE="Overview" ACTIVE="false" GROUP="Header" INSTANCE_ID="3207819926581772883" />
                    </COMPONENT_NODE>
                    <SPLIT_NODE WIDTH="1680" HEIGHT="918" DIVIDER_LOCATION="143" ORIENTATION="HORIZONTAL">
                        <SPLIT_NODE WIDTH="240" HEIGHT="918" DIVIDER_LOCATION="640" ORIENTATION="VERTICAL">
                            <SPLIT_NODE WIDTH="274" HEIGHT="681" DIVIDER_LOCATION="502" ORIENTATION="VERTICAL">
                                <COMPONENT_NODE TOP_INFO="0">
                                    <COMPONENT_INFO NAME="ProgramTreePlugin" OWNER="ProgramTreePlugin" TITLE="Program Trees" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387219741731" />
                                </COMPONENT_NODE>
                                <COMPONENT_NODE TOP_INFO="0">
                                    <COMPONENT_INFO NAME="Symbol Tree" OWNER="SymbolTreePlugin" TITLE="Symbol Tree" ACTIVE="true" GROUP="Default" INSTANCE_ID="3291030356991392828" />
                                </COMPONENT_NODE>
                            </SPLIT_NODE>
                            <COMPONENT_NODE TOP_INFO="0">
                                <COMPONENT_INFO NAME="DataTypes Provider" OWNER="DataTypeManagerPlugin" TITLE="Data Type Manager" ACTIVE="true" GROUP="Default" INSTANCE_ID="3291030387219741740" />
                            </COMPONENT_NODE>
                        </SPLIT_NODE>
                        <SPLIT_NODE WIDTH="1642" HEIGHT="1068" DIVIDER_LOCATION="785" ORIENTATION="VERTICAL">
                            <SPLIT_NODE WIDTH="1642" HEIGHT="1068" DIVIDER_LOCATION="705" ORIENTATION="VERTICAL">
                                <SPLIT_NODE WIDTH="1436" HEIGHT="918" DIVIDER_LOCATION="509" ORIENTATION="HORIZONTAL">
                                    <SPLIT_NODE WIDTH="834" HEIGHT="1068" DIVIDER_LOCATION="589" ORIENTATION="VERTICAL">
                                        <COMPONENT_NODE TOP_INFO="0">
                                            <COMPONENT_INFO NAME="CodeBrowserPlugin" OWNER="CodeBrowserPlugin" TITLE="Listing: jscript.dll" ACTIVE="true" GROUP="Core" INSTANCE_ID="3291030387219741729" />
                                        </COMPONENT_NODE>
                                        <COMPONENT_NODE TOP_INFO="0">
                                            <COMPONENT_INFO NAME="Structure Editor" OWNER="DataTypeManagerPlugin" TITLE="Structure Editor - jfElementImpl_vtbl (AcroForm.api)" ACTIVE="false" GROUP="Default" INSTANCE_ID="3290955553961917493" />
                                        </COMPONENT_NODE>
                                    </SPLIT_NODE>
                                    <COMPONENT_NODE TOP_INFO="0">
                                        <COMPONENT_INFO NAME="Decompiler" OWNER="DecompilePlugin" TITLE="Decompile: VAR::FTrue(void)" ACTIVE="true" GROUP="Default" INSTANCE_ID="3291030387219741728" />
                                        <COMPONENT_INFO NAME="Bytes" OWNER="ByteViewerPlugin" TITLE="Bytes: jscript.dll" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387219741732" />
                                        <COMPONENT_INFO NAME="Data Window" OWNER="DataWindowPlugin" TITLE="Defined Data" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387444137007" />
                                        <COMPONENT_INFO NAME="Defined Strings" OWNER="ViewStringsPlugin" TITLE="Defined Strings" ACTIVE="true" GROUP="Default" INSTANCE_ID="3291030387444137003" />
                                        <COMPONENT_INFO NAME="Equates Table" OWNER="EquateTablePlugin" TITLE="Equates Table" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030356991392829" />
                                        <COMPONENT_INFO NAME="External Programs" OWNER="ReferencesPlugin" TITLE="External Programs" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030356991392827" />
                                        <COMPONENT_INFO NAME="Functions Window" OWNER="FunctionWindowPlugin" TITLE="Functions" ACTIVE="true" GROUP="Default" INSTANCE_ID="3291030387219741738" />
                                        <COMPONENT_INFO NAME="Relocation Table" OWNER="RelocationTablePlugin" TITLE="Relocation Table" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387444137008" />
                                        <COMPONENT_INFO NAME="References Editor " OWNER="ReferencesPlugin" TITLE="References Editor @ 6339b610  (jscript.dll)" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291082641664621630" />
                                    </COMPONENT_NODE>
                                </SPLIT_NODE>
                                <SPLIT_NODE WIDTH="1386" HEIGHT="189" DIVIDER_LOCATION="495" ORIENTATION="HORIZONTAL">
                                    <COMPONENT_NODE TOP_INFO="0">
                                        <COMPONENT_INFO NAME="Data Type Preview" OWNER="DataTypePreviewPlugin" TITLE="Data Type Preview" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387444137002" />
                                    </COMPONENT_NODE>
                                    <COMPONENT_NODE TOP_INFO="0">
                                        <COMPONENT_INFO NAME="Virtual Disassembler - Current Instruction" OWNER="DisassembledViewPlugin" TITLE="Disassembled View" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387219741733" />
                                    </COMPONENT_NODE>
                                </SPLIT_NODE>
                            </SPLIT_NODE>
                            <COMPONENT_NODE TOP_INFO="0">
                                <COMPONENT_INFO NAME="ConsolePlugin" OWNER="ConsolePlugin" TITLE="Console" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030356991392830" />
                                <COMPONENT_INFO NAME="Bookmarks" OWNER="BookmarkPlugin" TITLE="Bookmarks" ACTIVE="false" GROUP="Core.Bookmarks" INSTANCE_ID="3291030356991392831" />
                            </COMPONENT_NODE>
                        </SPLIT_NODE>
                    </SPLIT_NODE>
                </SPLIT_NODE>
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Function Call Trees" OWNER="CallTreePlugin" TITLE="Function Call Trees: _function_pointer" ACTIVE="false" GROUP="Default" INSTANCE_ID="3285817689923229251" />
                </COMPONENT_NODE>
            </SPLIT_NODE>
            <WINDOW_NODE X_POS="144" Y_POS="188" WIDTH="1392" HEIGHT="696">
                <SPLIT_NODE WIDTH="1392" HEIGHT="615" DIVIDER_LOCATION="545" ORIENTATION="HORIZONTAL">
                    <COMPONENT_NODE TOP_INFO="0">
                        <COMPONENT_INFO NAME="Script Manager" OWNER="GhidraScriptMgrPlugin" TITLE="Script Manager" ACTIVE="false" GROUP="Script Group" INSTANCE_ID="3291030387219741734" />
                    </COMPONENT_NODE>
                    <COMPONENT_NODE TOP_INFO="0">
                        <COMPONENT_INFO NAME="Script Editor" OWNER="GhidraScriptMgrPlugin" TITLE="GhidraMagNum.py" ACTIVE="false" GROUP="Script Group" INSTANCE_ID="3289775725204517986" />
                    </COMPONENT_NODE>
                </SPLIT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="423" Y_POS="144" WIDTH="927" HEIGHT="370">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Memory Map" OWNER="MemoryMapPlugin" TITLE="Memory Map" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387219741730" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="330" Y_POS="23" WIDTH="1020" HEIGHT="1027">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Function Graph" OWNER="FunctionGraphPlugin" TITLE="Function Graph" ACTIVE="false" GROUP="Function Graph" INSTANCE_ID="3291030387444137010" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="550" Y_POS="206" WIDTH="655" HEIGHT="509">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Register Manager" OWNER="RegisterPlugin" TITLE="Register Manager" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387219741739" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="128" Y_POS="203" WIDTH="1424" HEIGHT="666">
                <SPLIT_NODE WIDTH="1408" HEIGHT="559" DIVIDER_LOCATION="573" ORIENTATION="HORIZONTAL">
                    <COMPONENT_NODE TOP_INFO="0">
                        <COMPONENT_INFO NAME="Symbol Table" OWNER="SymbolTablePlugin" TITLE="Symbol Table" ACTIVE="false" GROUP="symbolTable" INSTANCE_ID="3291030387444137004" />
                    </COMPONENT_NODE>
                    <COMPONENT_NODE TOP_INFO="0">
                        <COMPONENT_INFO NAME="Symbol References" OWNER="SymbolTablePlugin" TITLE="Symbol References" ACTIVE="false" GROUP="symbolTable" INSTANCE_ID="3291030387444137005" />
                    </COMPONENT_NODE>
                </SPLIT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-1" Y_POS="-1" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Checksum Generator" OWNER="ComputeChecksumsPlugin" TITLE="Checksum Generator" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030356991392826" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-1" Y_POS="-1" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Function Tags" OWNER="FunctionTagPlugin" TITLE="Function Tags" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387219741736" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-1" Y_POS="-1" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Comment Window" OWNER="CommentWindowPlugin" TITLE="Comments" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387444137009" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="972" Y_POS="305" WIDTH="613" HEIGHT="471">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Python" OWNER="InterpreterPanelPlugin" TITLE="Python" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291030387444137006" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="1004" HEIGHT="1071">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Function Call Graph" OWNER="FunctionCallGraphPlugin" TITLE="Function Call Graph" ACTIVE="false" GROUP="Function Call Graph" INSTANCE_ID="3291030387219741741" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="1183" HEIGHT="511">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="XRefs" OWNER="TableServicePlugin" TITLE="XRefs to 6339b610" ACTIVE="false" GROUP="Default" INSTANCE_ID="3291082641664621631" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="302" Y_POS="147" WIDTH="904" HEIGHT="671">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Strings" OWNER="StringTablePlugin" TITLE="String Search" ACTIVE="false" GROUP="String Search" INSTANCE_ID="3285831257496327771" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="1074" HEIGHT="478">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Stack Editor" OWNER="StackEditorManagerPlugin" TITLE="Stack Editor - FUN_208bcb1e (AcroForm.api)" ACTIVE="false" GROUP="Default" INSTANCE_ID="3290949577766583350" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="458" HEIGHT="531">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Operands" OWNER="TableServicePlugin" TITLE="Operand References for 20cd5112" ACTIVE="false" GROUP="Default" INSTANCE_ID="3290177513730929633" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="946" HEIGHT="327">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Location References Provider" OWNER="LocationReferencesPlugin" TITLE="References to ubus_connect - 3 locations" ACTIVE="false" GROUP="Default" INSTANCE_ID="3286004283342952025" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="458" HEIGHT="531">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Goto" OWNER="TableServicePlugin" TITLE="Goto operator_new" ACTIVE="false" GROUP="Default" INSTANCE_ID="3287829736708100631" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="699" HEIGHT="523">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="GhidraScript" OWNER="TableServicePlugin" TITLE="Addresses FindUnrecoveredSwitchesScript.java" ACTIVE="false" GROUP="Default" INSTANCE_ID="3288055043918647826" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="509" HEIGHT="310">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Enum Editor" OWNER="DataTypeManagerPlugin" TITLE="Enum Editor - test_STATUS_INSUFFICIENT_RESOURCES (clfs.sys)" ACTIVE="false" GROUP="Default" INSTANCE_ID="3289802885745128559" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="23" WIDTH="837" HEIGHT="557">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Union Editor" OWNER="DataTypeManagerPlugin" TITLE="Union Editor - _CLS_LSN (clfs.sys)" ACTIVE="false" GROUP="Default" INSTANCE_ID="3288201288448463390" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
        </ROOT_NODE>
        <PREFERENCES>
            <PREFERENCE_STATE NAME="StringTablePlugin">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.util.bean.SetEquateTableModel:Name:Path:# Refs:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.util.bean.SetEquateTableModel$NameColumn.Name" WIDTH="285" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.util.bean.SetEquateTableModel$PathColumn.Path" WIDTH="313" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.util.bean.SetEquateTableModel$RefsColumn.# Refs" WIDTH="88" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="descending" SORT_ORDER="1" />
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="2" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ViewStringsPlugin">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.functionwindow.FunctionTableModel:Label:Location:Function Signature:Function Size:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="227" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="104" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn.Function Signature" WIDTH="181" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn.Function Size" WIDTH="166" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionTagTableColumn.Tags" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn.Function Calling Convention" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn.Function Purge" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="3" SORT_DIRECTION="descending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.symtable.SymbolReferenceModel:From Location:Label:Subroutine:Access:From Preview:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromAddressTableColumn.From Location" WIDTH="120" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromLabelTableColumn.Label" WIDTH="120" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolReferenceModel$SubroutineTableColumn.Subroutine" WIDTH="119" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolReferenceModel$AccessTableColumn.Access" WIDTH="120" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromPreviewTableColumn.From Preview" WIDTH="119" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceToBytesTableColumn.To Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceToAddressTableColumn.To Location" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceTypeTableColumn.Ref Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromFunctionTableColumn.From Function" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceToPreviewTableColumn.To Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromBytesTableColumn.From Bytes" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.symtable.SymbolTableModel:Name:Location:Symbol Type:Data Type:Namespace:Source:Reference Count:Offcut Ref Count:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$NameTableColumn.Name" WIDTH="175" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$LocationTableColumn.Location" WIDTH="175" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="175" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$DataTypeTableColumn.Data Type" WIDTH="175" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$NamespaceTableColumn.Namespace" WIDTH="175" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$SourceTableColumn.Source" WIDTH="176" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$ReferenceCountTableColumn.Reference Count" WIDTH="175" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$OffcutReferenceCountTableColumn.Offcut Ref Count" WIDTH="175" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$PinnedTableColumn.Pinned" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$UserTableColumn.User" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$OriginalNameColumn.Original Imported Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.data.DataSettingsDialog$SettingsTableModel:Name:Settings:Use Default:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="115" VISIBLE="true" />
                        <COLUMN NAME="Settings" WIDTH="116" VISIBLE="true" />
                        <COLUMN NAME="Use Default" WIDTH="115" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.util.table.ReferencesFromTableModel:Location:Label:Code Unit:Ref Type:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="226" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="186" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="563" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.ReferencesFromTableModel$ReferenceTypeTableColumn.Ref Type" WIDTH="200" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceTypeTableColumn.Ref Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.equate.EquateTableModel:Name:Value:# Refs:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="88" VISIBLE="true" />
                        <COLUMN NAME="Value" WIDTH="88" VISIBLE="true" />
                        <COLUMN NAME="# Refs" WIDTH="88" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.table.GTableFilterPanel$SortedTableModelWrapper:In::Name:Description:Category:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="In" WIDTH="30" VISIBLE="true" />
                        <COLUMN NAME="" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="Name" WIDTH="209" VISIBLE="true" />
                        <COLUMN NAME="Description" WIDTH="277" VISIBLE="true" />
                        <COLUMN NAME="Category" WIDTH="141" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.register.RegisterValuesPanel$RegisterValuesTableModel:Start Address:End Address:Value:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Start Address" WIDTH="153" VISIBLE="true" />
                        <COLUMN NAME="End Address" WIDTH="153" VISIBLE="true" />
                        <COLUMN NAME="Value" WIDTH="153" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel:In Tool:Status:Name:Description:Key:Path:Category:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$ScriptActionColumn.In Tool" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$StatusColumn.Status" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$NameColumn.Name" WIDTH="242" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$DescriptionColumn.Description" WIDTH="242" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$KeyBindingColumn.Key" WIDTH="203" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$PathColumn.Path" WIDTH="250" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$CategoryColumn.Category" WIDTH="209" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$CreatedColumn.Created" WIDTH="100" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.script.GhidraScriptTableModel$ModifiedColumn.Modified" WIDTH="208" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.util.table.AddressArrayTableModel:Location:Label:Code Unit:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="157" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="156" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="378" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn.Function Calling Convention" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn.Function Purge" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn.Function Signature" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn.Function Size" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel:Type:Category:Description:Location:Label:Code Unit:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$TypeTableColumn.Type" WIDTH="182" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$CategoryTableColumn.Category" WIDTH="198" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$DescriptionTableColumn.Description" WIDTH="271" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="213" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="275" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="274" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.references.EditReferencesModel:Operand:Destination:Label:Ref-Type:Primary?:Source:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Operand" WIDTH="122" VISIBLE="true" />
                        <COLUMN NAME="Destination" WIDTH="139" VISIBLE="true" />
                        <COLUMN NAME="Label" WIDTH="104" VISIBLE="true" />
                        <COLUMN NAME="Ref-Type" WIDTH="259" VISIBLE="true" />
                        <COLUMN NAME="Primary?" WIDTH="75" VISIBLE="true" />
                        <COLUMN NAME="Source" WIDTH="80" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.references.ExternalNamesTableModel:Name:Ghidra Program:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="219" VISIBLE="true" />
                        <COLUMN NAME="Ghidra Program" WIDTH="218" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.pathmanager.PathnameTableModel:A:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="A" WIDTH="396" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.data.CreateStructureDialog$StructureTableModel:Structure:Path:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Structure" WIDTH="283" VISIBLE="true" />
                        <COLUMN NAME="Path" WIDTH="282" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.function.editor.VarnodeTableModel:Type:Location:Size:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Type" WIDTH="133" VISIBLE="true" />
                        <COLUMN NAME="Location" WIDTH="134" VISIBLE="true" />
                        <COLUMN NAME="Size" WIDTH="133" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="KNOWN_EXTENSIONS">
                <ARRAY NAME="KNOWN_EXTENSIONS" TYPE="string" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel:Installation Status:Status:Name:Description:Category:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginInstalledColumn.Installation Status" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginStatusColumn.Status" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginNameColumn.Name" WIDTH="267" VISIBLE="true" />
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginDescriptionColumn.Description" WIDTH="267" VISIBLE="true" />
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginCategoryColumn.Category" WIDTH="266" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.datamgr.editor.EnumTableModel:Name:Value:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="251" VISIBLE="true" />
                        <COLUMN NAME="Value" WIDTH="250" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.stackeditor.StackEditorModel:Offset:Length:DataType:Name:Comment:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Offset" WIDTH="166" VISIBLE="true" />
                        <COLUMN NAME="Length" WIDTH="167" VISIBLE="true" />
                        <COLUMN NAME="DataType" WIDTH="226" VISIBLE="true" />
                        <COLUMN NAME="Name" WIDTH="227" VISIBLE="true" />
                        <COLUMN NAME="Comment" WIDTH="276" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="TableServicePlugin">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.analysis.AnalysisPanel$5:Enabled:Analyzer Name:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Enabled" WIDTH="75" VISIBLE="true" />
                        <COLUMN NAME="Analyzer Name" WIDTH="295" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel:Location:String Value:String Representation:Data Type:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$DataLocationColumn.Location" WIDTH="125" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$DataValueColumn.String Value" WIDTH="291" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$StringRepColumn.String Representation" WIDTH="124" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$DataTypeColumn.Data Type" WIDTH="123" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$IsAsciiColumn.Is Ascii" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$CharsetColumn.Charset" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$HasEncodingErrorColumn.Has Encoding Error" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn.Function Calling Convention" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn.Function Purge" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn.Function Signature" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn.Function Size" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.memory.MemoryMapModel:Name:Start:End:Length:R:W:X:Volatile:Type:Initialized:Source:Comment:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="Start" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="End" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="Length" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="R" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="W" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="X" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="Volatile" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="Type" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="Initialized" WIDTH="60" VISIBLE="true" />
                        <COLUMN NAME="Source" WIDTH="102" VISIBLE="true" />
                        <COLUMN NAME="Comment" WIDTH="102" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.functionwindow.FunctionTableModel:Label:Location:Function Signature:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn" WIDTH="148" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="124" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn" WIDTH="148" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.disassembler.AutoTableDisassemblerModel:Location:Label:Data (Hex/Ascii):Length:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="131" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="245" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableDataTableColumn.Data (Hex/Ascii)" WIDTH="254" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableLengthTableColumn.Length" WIDTH="254" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.filechooser.DirectoryTableModel:Filename:Size:Modified:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Filename" WIDTH="231" VISIBLE="true" />
                        <COLUMN NAME="Size" WIDTH="231" VISIBLE="true" />
                        <COLUMN NAME="Modified" WIDTH="231" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.framework.main.datatree.VersionHistoryTableModel:Version:Version Date:User:Comments:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Version" WIDTH="55" VISIBLE="true" />
                        <COLUMN NAME="Version Date" WIDTH="135" VISIBLE="true" />
                        <COLUMN NAME="User" WIDTH="83" VISIBLE="true" />
                        <COLUMN NAME="Comments" WIDTH="159" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="descending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.function.editor.ParameterTableModel:Index:Datatype:Name:Storage:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Index" WIDTH="115" VISIBLE="true" />
                        <COLUMN NAME="Datatype" WIDTH="163" VISIBLE="true" />
                        <COLUMN NAME="Name" WIDTH="161" VISIBLE="true" />
                        <COLUMN NAME="Storage" WIDTH="161" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.gotoquery.GoToQueryResultsTableModel:Location:Label:Namespace:Preview:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="69" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="69" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="156" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="156" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn.Function Calling Convention" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn.Function Purge" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn.Function Signature" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn.Function Size" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.datawindow.DataTableModel:Data:Location:Type:Size:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.datawindow.DataTableModel$DataValueTableColumn.Data" WIDTH="390" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="42" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.datawindow.DataTableModel$TypeTableColumn.Type" WIDTH="390" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.datawindow.DataTableModel$SizeTableColumn.Size" WIDTH="27" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.datapreview.DataTypePreviewPlugin$MyTableModel:Name:Preview:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="682" VISIBLE="true" />
                        <COLUMN NAME="Preview" WIDTH="681" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.navigation.locationreferences.LocationReferencesTableModel:Location:Label:Code Unit:Context:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="197" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="197" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="266" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.navigation.locationreferences.LocationReferencesTableModel$ContextTableColumn.Context" WIDTH="266" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn.Function Calling Convention" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn.Function Purge" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn.Function Signature" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn.Function Size" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.equate.EquateReferenceTableModel:Ref Addr:Op Index:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Ref Addr" WIDTH="82" VISIBLE="true" />
                        <COLUMN NAME="Op Index" WIDTH="82" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.table.GTableFilterPanel$SortedTableModelWrapper:Action Name:KeyBinding:Plugin Name:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Action Name" WIDTH="359" VISIBLE="true" />
                        <COLUMN NAME="KeyBinding" WIDTH="180" VISIBLE="true" />
                        <COLUMN NAME="Plugin Name" WIDTH="179" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="BookmarkPlugin">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel:Type:Category:Description:Location:Label:Preview:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$TypeTableColumn" WIDTH="189" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$CategoryTableColumn" WIDTH="204" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$DescriptionTableColumn" WIDTH="313" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="204" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn" WIDTH="189" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn" WIDTH="263" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="15" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.tablechooser.TableChooserTableModel:Location:Jump Return Func: Shared Func Addr :Shared Return Func:Status:Explanation:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="41" VISIBLE="true" />
                        <COLUMN NAME="Jump Return Func" WIDTH="82" VISIBLE="true" />
                        <COLUMN NAME=" Shared Func Addr " WIDTH="82" VISIBLE="true" />
                        <COLUMN NAME="Shared Return Func" WIDTH="82" VISIBLE="true" />
                        <COLUMN NAME="Status" WIDTH="82" VISIBLE="true" />
                        <COLUMN NAME="Explanation" WIDTH="81" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn.Function Calling Convention" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn.Function Purge" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn.Function Signature" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn.Function Size" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.framework.plugintool.dialog.KeyBindingsPanel$KeyBindingsTableModel:Action Name:KeyBinding:Plugin Name:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Action Name" WIDTH="219" VISIBLE="true" />
                        <COLUMN NAME="KeyBinding" WIDTH="257" VISIBLE="true" />
                        <COLUMN NAME="Plugin Name" WIDTH="257" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="descending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="SymbolTablePlugin">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.util.table.IncomingReferencesTableModel:Location:Label:Code Unit:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="244" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceTypeTableColumn.Ref Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel:Location:String:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="210" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$DataValueColumn" WIDTH="210" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.compositeeditor.UnionEditorModel:Length:Mnemonic:DataType:Name:Comment:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Length" WIDTH="135" VISIBLE="true" />
                        <COLUMN NAME="Mnemonic" WIDTH="160" VISIBLE="true" />
                        <COLUMN NAME="DataType" WIDTH="160" VISIBLE="true" />
                        <COLUMN NAME="Name" WIDTH="160" VISIBLE="true" />
                        <COLUMN NAME="Comment" WIDTH="210" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.datapreview.DataTypePreviewPlugin$DTPPTableModel:Name:Preview:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="817" VISIBLE="true" />
                        <COLUMN NAME="Preview" WIDTH="817" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.table.GTableFilterPanel$SortedTableModelWrapper:In Tool:Status:Filename:Description:Key Binding:Full Path:Category:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="In Tool" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="Status" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="Filename" WIDTH="147" VISIBLE="true" />
                        <COLUMN NAME="Description" WIDTH="245" VISIBLE="true" />
                        <COLUMN NAME="Key Binding" WIDTH="100" VISIBLE="true" />
                        <COLUMN NAME="Full Path" WIDTH="122" VISIBLE="true" />
                        <COLUMN NAME="Category" WIDTH="122" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.string.StringTableModel:Defined:Location:Label:Code Unit:String View:String Type:Length:Is Word:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.string.StringTableModel$IsDefinedTableColumn.Defined" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="86" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="86" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="263" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.string.StringTableModel$StringViewTableColumn.String View" WIDTH="251" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.string.StringTableModel$StringTypeTableColumn.String Type" WIDTH="48" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.string.StringTableModel$StringLengthTableColumn.Length" WIDTH="61" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.string.StringTableModel$ConfidenceWordTableColumn.Is Word" WIDTH="61" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.compositeeditor.StructureEditorModel:Offset:Length:Mnemonic:DataType:Name:Comment:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Offset" WIDTH="125" VISIBLE="true" />
                        <COLUMN NAME="Length" WIDTH="122" VISIBLE="true" />
                        <COLUMN NAME="Mnemonic" WIDTH="134" VISIBLE="true" />
                        <COLUMN NAME="DataType" WIDTH="129" VISIBLE="true" />
                        <COLUMN NAME="Name" WIDTH="203" VISIBLE="true" />
                        <COLUMN NAME="Comment" WIDTH="77" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.reloc.RelocationTableModel:Location:Type:Values:Original Bytes:Name:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="87" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.reloc.RelocationTableModel$RelocationTypeColumn" WIDTH="88" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.reloc.RelocationTableModel$RelocationValueColumn" WIDTH="87" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.reloc.RelocationTableModel$RelocationBytesColumn" WIDTH="88" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.reloc.RelocationTableModel$RelocationNameColumn" WIDTH="87" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.pathmanager.PathManagerModel:Use:Path:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Use" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="Path" WIDTH="613" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
        </PREFERENCES>
    </TOOL>
</TOOL_CONFIG>

