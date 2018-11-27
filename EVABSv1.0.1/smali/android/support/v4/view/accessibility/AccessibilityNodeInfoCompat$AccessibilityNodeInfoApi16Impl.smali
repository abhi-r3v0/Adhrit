.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi16Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoBaseImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1096
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    .line 1114
    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    return-void
.end method

.method public findFocus(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Object;
    .locals 0

    .line 1104
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public focusSearch(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Object;
    .locals 0

    .line 1109
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getMovementGranularities(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    .line 1154
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result p1

    return p1
.end method

.method public isAccessibilityFocused(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    .line 1134
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result p1

    return p1
.end method

.method public isVisibleToUser(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    .line 1124
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result p1

    return p1
.end method

.method public obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 1099
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public performAction(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1144
    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setAccessibilityFocused(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    .line 1139
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    return-void
.end method

.method public setMovementGranularities(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0

    .line 1149
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    return-void
.end method

.method public setParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    .line 1159
    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    return-void
.end method

.method public setSource(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0

    .line 1119
    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public setVisibleToUser(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    .line 1129
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-void
.end method
