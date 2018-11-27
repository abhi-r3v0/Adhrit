.class Landroid/support/v4/view/ViewCompat$ViewCompatApi17Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi17Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1096
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 0

    .line 1150
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method public getLabelFor(Landroid/view/View;)I
    .locals 0

    .line 1100
    invoke-virtual {p1}, Landroid/view/View;->getLabelFor()I

    move-result p1

    return p1
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 0

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    return p1
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 0

    .line 1130
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    return p1
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 0

    .line 1125
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    return p1
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 0

    .line 1140
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p1

    return p1
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .locals 0

    .line 1145
    invoke-virtual {p1}, Landroid/view/View;->isPaddingRelative()Z

    move-result p1

    return p1
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0

    .line 1105
    invoke-virtual {p1, p2}, Landroid/view/View;->setLabelFor(I)V

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .line 1110
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0

    .line 1120
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0

    .line 1135
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
