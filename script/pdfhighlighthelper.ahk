/*
PDF ������ɫ�޸�����
Version: v1.0
Author: KONGSN

ʹ��Autohotkeyģ���ֶ��޸���ɫ���������̸�����ɫ�޸�ʱ�䡣
Adobe ���İ����ͨ����

ʹ��˵����
1. ֻ���������Ѿ������Ĳ��֣�����ʹ�á����̻�����Ҽ�+h�����ٱ�Ǹ�������
2. ��Ҫ���֡���������Ϊ��״̬����ݼ� Ctrl+e����
3. ʹ��Alt+1~5���޸���ɫ����>��>��>��>�ƣ���
4. ��ɫѡ�񣬲��ֲο�Civati��ʹ���ֲᡣ
5. �����DPI���ſ��ܻ�Ӱ��ʹ�á�

��л��
ԭ�汾����jtanx��
https://gist.github.com/jtanx/09c8f0e6f31ecb61c3d5d3faddbaf559
����Acrobat DC
*/

msgbox, PDF������ɫ�޸����֣�������Adobe���İ棩:`r`n 1. ֻ���������Ѿ������Ĳ���;`r`n    2. ��Ҫ���֡���������Ϊ��״̬����ݼ� Ctrl+e��;`r`n    3. Alt+1~5�޸���ɫ:`r`n        Alt+1: ��ɫ;`r`n        Alt+2: ��ɫ;`r`n        Alt+3: ��ɫ;`r`n        Alt+4: ��ɫ;`r`n        Alt+5: ��ɫ

; Set colour Acrobat DC
; Valid x positions: 20, 35, 55, 75, 90, 111, 128, 146
; Valid y positions: 60, 80, 100, 120, 135
SetColour(x, y)
{
    If WinExist("���� ahk_class AVL_AVFloating") or WinExist("�������� ahk_class AVL_AVFloating")
    {
        WinActivate
        WinWaitActive
        if !ErrorLevel
        {
            CoordMode, Mouse, Screen
            MouseGetPos, oldX, oldY
            CoordMode, Mouse, Relative

            MouseClick, Left, 30, 30 ; Activate the palette
            MouseClick, Left, x, y ; Select the colour.

            CoordMode, Mouse, Screen
            MouseMove, oldX, oldY
            CoordMode, Mouse, Relative
        }
    }
}

; AHK: ^ is Ctrl, ! is Alt, + is shift
; ��ͨĬ�ϻ�ɫ
; Alt+1
!1::
    SetColour(55, 120)
return

; ��������ۡ��ܽ᣺��ɫ
; Alt+2
!2::
    ; SetColour(75, 135)
    SetColour(75, 120)
return

; �о�������������Դ����ɫ
; Alt+3
!3::
    SetColour(110, 115)
return

; ���������ۣ���ɫ
; Alt+4
!4::
    SetColour(20, 115)
return

; ��Ҫ���ݣ���ɫ
; Alt+5
!5::
    SetColour(20, 100)
return

