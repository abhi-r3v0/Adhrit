.class public final Landroid/support/v4/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;,
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;


# instance fields
.field private mEdgeEffect:Landroid/widget/EdgeEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 1

    .line 174
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;->onPull(Landroid/widget/EdgeEffect;FF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public isFinished()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public onAbsorb(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPull(F)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPull(FF)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;->onPull(Landroid/widget/EdgeEffect;FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onRelease()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 190
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method
