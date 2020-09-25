.class final Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$SmoothScroller$ScrollVectorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

.field private synthetic asBinder:Lo/getServerTime;

.field private synthetic extraCallback:J

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Landroid/content/Context;

.field private synthetic onPostMessage:Lo/isPendingInitialRun$ICustomTabsCallback;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Lo/isPendingInitialRun$ICustomTabsCallback;JJLo/getServerTime;)V
    .locals 0

    iput-boolean p1, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->onMessageChannelReady:Z

    iput-object p2, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    iput-object p3, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->onPostMessage:Lo/isPendingInitialRun$ICustomTabsCallback;

    iput-wide p4, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->extraCallback:J

    iput-wide p6, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->ICustomTabsCallback:J

    iput-object p8, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->asBinder:Lo/getServerTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 46
    sget-object v0, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onNavigationEvent()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    move-wide v11, v2

    goto :goto_1

    :cond_0
    sget-object v0, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    .line 1000
    sget-object v0, Lo/setTargetPosition;->asInterface:Lo/copyArray;

    sget-object v2, Lo/setTargetPosition;->onMessageChannelReady:[Lo/applyUserOverwrite;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 50
    :goto_1
    iget-object v4, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    iget-object v5, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->onPostMessage:Lo/isPendingInitialRun$ICustomTabsCallback;

    iget-wide v6, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->extraCallback:J

    iget-wide v8, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->ICustomTabsCallback:J

    iget-boolean v10, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->onMessageChannelReady:Z

    iget-object v13, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->asBinder:Lo/getServerTime;

    invoke-static/range {v4 .. v13}, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider;->ICustomTabsCallback(Landroid/content/Context;Lo/isPendingInitialRun$ICustomTabsCallback;JJZJLo/getServerTime;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 52
    check-cast v0, Ljava/lang/Throwable;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SMSHandler:getSms"

    invoke-static {v0, v2, v1}, Lo/frameInBuffer;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    sget-object v1, Lo/merge;->extraCallback:Lo/merge;

    const-string/jumbo v1, "throwable"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    sget-object v1, Lo/merge;->onPostMessage:Lo/findSameItem;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lo/findSameItem;->onPostMessage(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;->asBinder:Lo/getServerTime;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_3
    const/16 v0, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SMSHandler:getSms:skipping no sms permission"

    .line 57
    invoke-static {v0, v2, v1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
