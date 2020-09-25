.class public final Lo/getChildViewHolderInt$updateVisuals;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildViewHolderInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "value",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/helper/ui/animation/TransitionKtxKt$checkAnimate$1$1$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment$$special$$inlined$apply$lambda$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment$checkAnimate$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:J

.field private synthetic onMessageChannelReady:Lo/getChildViewHolderInt;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLo/getChildViewHolderInt;Ljava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lo/getChildViewHolderInt$updateVisuals;->ICustomTabsCallback:J

    iput-object p3, p0, Lo/getChildViewHolderInt$updateVisuals;->onMessageChannelReady:Lo/getChildViewHolderInt;

    iput-object p4, p0, Lo/getChildViewHolderInt$updateVisuals;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 75
    iget-wide v0, p0, Lo/getChildViewHolderInt$updateVisuals;->ICustomTabsCallback:J

    const-string/jumbo v2, "value"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 124
    iget-object p1, p0, Lo/getChildViewHolderInt$updateVisuals;->onMessageChannelReady:Lo/getChildViewHolderInt;

    iget-object v2, p0, Lo/getChildViewHolderInt$updateVisuals;->onPostMessage:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lo/getChildViewHolderInt;->onPostMessage(Lo/getChildViewHolderInt;JLjava/lang/String;)V

    return-void

    .line 75
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
