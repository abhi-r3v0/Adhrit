.class public final Lo/getQueue;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static extraCallback(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 2

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 292
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 2

    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
