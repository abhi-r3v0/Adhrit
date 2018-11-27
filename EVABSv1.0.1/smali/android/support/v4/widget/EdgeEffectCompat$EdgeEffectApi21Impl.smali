.class Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;
.super Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;
.source "EdgeEffectCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 0

    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method
