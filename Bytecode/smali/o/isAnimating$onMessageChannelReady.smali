.class final Lo/isAnimating$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isAnimating;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/throwIfInMutationOperation<",
        "+",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/dreamplug/utils/Event;",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/isAnimating;


# direct methods
.method constructor <init>(Lo/isAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 60
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 1547
    iget-object v0, p0, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3011
    iget-boolean v3, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3015
    :cond_1
    iput-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 3016
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1548
    :goto_1
    check-cast v0, Ljava/lang/Float;

    :cond_2
    if-eqz v0, :cond_3

    .line 1550
    iget-object p1, p0, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-static {p1}, Lo/isAnimating;->getInterfaceDescriptor(Lo/isAnimating;)F

    move-result p1

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(FLjava/lang/Float;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 1551
    iget-object p1, p0, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {p1, v2}, Lo/isAnimating;->ICustomTabsCallback(Lo/isAnimating;F)V

    .line 1552
    iget-object p1, p0, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->trophyRoom:I

    invoke-virtual {p1, v2}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    const-string/jumbo v2, "trophyRoom"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v2, p0, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/isAnimating$onMessageChannelReady$extraCallback;

    invoke-direct {v1, v0, p0}, Lo/isAnimating$onMessageChannelReady$extraCallback;-><init>(Ljava/lang/Float;Lo/isAnimating$onMessageChannelReady;)V

    check-cast v1, Lo/getServerTime;

    const-wide/16 v3, 0x0

    .line 3045
    invoke-static {p1, v2, v3, v4, v1}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    :cond_3
    return-void
.end method
