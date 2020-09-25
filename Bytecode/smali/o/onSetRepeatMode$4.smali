.class final Lo/onSetRepeatMode$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSetRepeatMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/onSetRepeatMode;


# direct methods
.method constructor <init>(Lo/onSetRepeatMode;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/onSetRepeatMode$4;->onPostMessage:Lo/onSetRepeatMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 126
    iget-object v0, p0, Lo/onSetRepeatMode$4;->onPostMessage:Lo/onSetRepeatMode;

    .line 1244
    iget v1, v0, Lo/onSetRepeatMode;->ICustomTabsService:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1246
    :cond_0
    iget-object v1, v0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x3

    .line 1249
    iput v1, v0, Lo/onSetRepeatMode;->ICustomTabsService:I

    .line 1250
    iget-object v1, v0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    const/4 v4, 0x0

    iget-object v5, v0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    aput v5, v2, v4

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1251
    iget-object v1, v0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1252
    iget-object v0, v0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
