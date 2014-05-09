Attribute VB_Name = "Modulo"
Option Explicit

Public Type Maso
    valor As Byte
    palo As String
End Type
Public Sub Swap(ByRef A As Variant, B As Variant)
Dim auxi As Variant
auxi = A
A = B
B = auxi
End Sub

