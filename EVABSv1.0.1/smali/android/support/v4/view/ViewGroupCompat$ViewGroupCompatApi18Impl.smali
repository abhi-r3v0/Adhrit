.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;
.source "ViewGroupCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatApi18Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 0

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result p1

    return p1
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    return-void
.end method
