.class public final Lo/getChildPosition$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "androidx/lifecycle/LiveDataKt$observe$wrappedObserver$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getChildPosition;


# direct methods
.method public constructor <init>(Lo/getChildPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    check-cast p1, Ljava/lang/Long;

    .line 52
    iget-object v0, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-static {v0}, Lo/getChildPosition;->onMessageChannelReady(Lo/getChildPosition;)Lo/findViewHolderForItemId;

    move-result-object v0

    .line 1050
    iget-object v0, v0, Lo/findViewHolderForItemId;->onRelationshipValidationResult:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 52
    :goto_0
    instance-of v0, v0, Lo/findChildViewUnder$extraCallback;

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-static {v0}, Lo/getChildPosition;->onMessageChannelReady(Lo/getChildPosition;)Lo/findViewHolderForItemId;

    move-result-object v0

    .line 2086
    iget-object v0, v0, Lo/findViewHolderForItemId;->extraCommand:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    move-object v2, v0

    .line 52
    :cond_1
    check-cast v2, Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_2

    goto :goto_4

    .line 57
    :cond_2
    iget-object v0, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-static {v0}, Lo/getChildPosition;->onNavigationEvent(Lo/getChildPosition;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-static {v0}, Lo/getChildPosition;->onNavigationEvent(Lo/getChildPosition;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 58
    iget-object v0, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-static {v0}, Lo/getChildPosition;->onTransact(Lo/getChildPosition;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-static {v2}, Lo/getChildPosition;->onNavigationEvent(Lo/getChildPosition;)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    long-to-int v2, v4

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 60
    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 61
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2

    .line 61
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v3

    .line 65
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    aput v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 66
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 69
    :cond_6
    iget-object v0, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/getChildPosition;->onPostMessage(Lo/getChildPosition;J)V

    .line 71
    :goto_3
    iget-object v0, p0, Lo/getChildPosition$ICustomTabsService;->onMessageChannelReady:Lo/getChildPosition;

    invoke-static {v0, p1}, Lo/getChildPosition;->extraCallback(Lo/getChildPosition;Ljava/lang/Long;)V

    :cond_7
    :goto_4
    return-void
.end method
