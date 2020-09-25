.class public final Lo/addChildDrawingOrderCallback$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addChildDrawingOrderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/StashPaymentOrderStatusDialog$Companion;",
        "",
        "()V",
        "FLOW_DISBURSAL",
        "",
        "FLOW_EMI_PAYMENT",
        "STATUS_COMPLETE",
        "STATUS_FAILED",
        "STATUS_PROCESSING",
        "TIME_OUT",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final extraCallback:Lo/resolveIsInfinite$onPostMessage;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/resolveIsInfinite$onPostMessage;Ljava/lang/String;IJ)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/addChildDrawingOrderCallback$onMessageChannelReady;->extraCallback:Lo/resolveIsInfinite$onPostMessage;

    iput-object p2, p0, Lo/addChildDrawingOrderCallback$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    iput p3, p0, Lo/addChildDrawingOrderCallback$onMessageChannelReady;->onNavigationEvent:I

    iput-wide p4, p0, Lo/addChildDrawingOrderCallback$onMessageChannelReady;->ICustomTabsCallback:J

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 11

    .line 2000
    iget-object v0, p0, Lo/addChildDrawingOrderCallback$onMessageChannelReady;->extraCallback:Lo/resolveIsInfinite$onPostMessage;

    iget-object v1, p0, Lo/addChildDrawingOrderCallback$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    iget v2, p0, Lo/addChildDrawingOrderCallback$onMessageChannelReady;->onNavigationEvent:I

    iget-wide v3, p0, Lo/addChildDrawingOrderCallback$onMessageChannelReady;->ICustomTabsCallback:J

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 3000
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 4000
    new-instance v8, Lo/getReverseLayout$onMessageChannelReady;

    invoke-direct {v8, v0, v6}, Lo/getReverseLayout$onMessageChannelReady;-><init>(Lo/resolveIsInfinite$onPostMessage;Ljava/util/List;)V

    invoke-virtual {v0, v8}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(Lo/isValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 3000
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/computeScrollRange$extraCallback;

    const/4 v8, 0x4

    if-eqz v6, :cond_2

    iget-object v9, v6, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v9, v9, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    const/4 v10, 0x6

    if-eq v9, v10, :cond_1

    if-ne v9, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_3

    :cond_2
    sget-object v9, Lo/resolveIsInfinite$onPostMessage;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const-string v10, "Could not find pack %s while trying to complete it"

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v7}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v0, Lo/resolveIsInfinite$onPostMessage;->ICustomTabsCallback:Lo/onVerificationFailed;

    .line 6000
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/io/File;)Z

    .line 3000
    :cond_4
    iget-object v0, v6, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iput v8, v0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v0, 0x0

    return-object v0
.end method
