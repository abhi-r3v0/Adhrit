.class Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventCompatApi16Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventCompatBaseImpl;
.source "AccessibilityEventCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventCompatApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 0

    .line 71
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result p1

    return p1
.end method

.method public getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 0

    .line 61
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getMovementGranularity()I

    move-result p1

    return p1
.end method

.method public setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    return-void
.end method

.method public setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    return-void
.end method
