.class Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi23Impl;
.super Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;
.source "PopupWindowCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 0

    .line 166
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result p1

    return p1
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 0

    .line 176
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    move-result p1

    return p1
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0

    .line 171
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    return-void
.end method
