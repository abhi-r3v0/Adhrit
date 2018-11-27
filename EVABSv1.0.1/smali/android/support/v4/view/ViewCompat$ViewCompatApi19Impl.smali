.class Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi18Impl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi19Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1173
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi18Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 0

    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result p1

    return p1
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 0

    .line 1201
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    return p1
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 0

    .line 1191
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    return p1
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 0

    .line 1196
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result p1

    return p1
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0

    .line 1181
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0

    .line 1186
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method
