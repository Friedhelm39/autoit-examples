#include <Constants.au3>

; Wscript.Network Example
;
; Based on AutoItCOM version 3.1.0
;
; Beta version 06-02-2005

Local $objNetwork = ObjCreate("WScript.Network")

If @error Then
	MsgBox($MB_SYSTEMMODAL, "Wscript.network Test", "I'm sorry, but creation of object $objNetwork failed. Error code: " & @error)
	Exit
EndIf

Local $colDrives = $objNetwork.EnumNetworkDrives

If Not IsObj($colDrives) Then
	MsgBox($MB_SYSTEMMODAL, "Wscript.network Test", "I'm sorry, but creation of object $coldrives failed.")
	Exit
EndIf

Local $NumDrives = $colDrives.Count

If $NumDrives = 0 Then
	MsgBox($MB_SYSTEMMODAL, "wscript.network", "You have currently no network drives")
Else
	For $i = 0 To $colDrives.Count - 1 Step 2
		MsgBox($MB_SYSTEMMODAL, "Wscript.network", "Drive letter: " & $colDrives.Item($i) & @TAB & " is mapped to: " & $colDrives.Item($i + 1))
	Next
EndIf

Exit
