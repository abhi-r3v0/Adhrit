.class Landroid/support/v4/view/ViewCompat$ViewCompatApi18Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi17Impl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi18Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1155
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi17Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public isInLayout(Landroid/view/View;)Z
    .locals 0

    .line 1168
    invoke-virtual {p1}, Landroid/view/View;->isInLayout()Z

    move-result p1

    return p1
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1158
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
