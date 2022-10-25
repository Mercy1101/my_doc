/*
PDF 高亮颜色修改助手
Version: v1.0
Author: KONGSN

使用Autohotkey模拟手动修改颜色操作，缩短高亮颜色修改时间。
Adobe 中文版测试通过。

使用说明：
1. 只能作用于已经高亮的部分（可以使用“键盘或鼠标右键+h”快速标记高亮）。
2. 需要保持“属性栏”为打开状态（快捷键 Ctrl+e）。
3. 使用Alt+1~5，修改颜色（红>绿>蓝>紫>黄）。
4. 颜色选择，部分参考Civati的使用手册。
5. 程序的DPI缩放可能会影响使用。

致谢：
原版本作者jtanx，
https://gist.github.com/jtanx/09c8f0e6f31ecb61c3d5d3faddbaf559
用于Acrobat DC
*/

msgbox, PDF高亮颜色修改助手（适用于Adobe中文版）:`r`n 1. 只能作用于已经高亮的部分;`r`n    2. 需要保持“属性栏”为打开状态（快捷键 Ctrl+e）;`r`n    3. Alt+1~5修改颜色:`r`n        Alt+1: 黄色;`r`n        Alt+2: 绿色;`r`n        Alt+3: 蓝色;`r`n        Alt+4: 紫色;`r`n        Alt+5: 红色

; Set colour Acrobat DC
; Valid x positions: 20, 35, 55, 75, 90, 111, 128, 146
; Valid y positions: 60, 80, 100, 120, 135
SetColour(x, y)
{
    If WinExist("属性 ahk_class AVL_AVFloating") or WinExist("高亮属性 ahk_class AVL_AVFloating")
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
; 普通默认黄色
; Alt+1
!1::
    SetColour(55, 120)
return

; 结果、结论、总结：绿色
; Alt+2
!2::
    ; SetColour(75, 135)
    SetColour(75, 120)
return

; 研究方法、数据来源：蓝色
; Alt+3
!3::
    SetColour(110, 115)
return

; 分析、评论：紫色
; Alt+4
!4::
    SetColour(20, 115)
return

; 重要内容：红色
; Alt+5
!5::
    SetColour(20, 100)
return

