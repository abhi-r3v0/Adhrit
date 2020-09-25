.class final Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAccessibilityNodeProvider;->onNavigationEvent(Ljava/lang/String;J)V
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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/String;

    iput-wide p2, p0, Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;->onMessageChannelReady:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    .line 52
    iget-object v2, p0, Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/String;

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "url"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 53
    iget-wide v3, p0, Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;->onMessageChannelReady:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "delay"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v4, v1, v3

    .line 141
    new-instance v4, Lo/PlaybackStateCompat$Builder$onPostMessage;

    invoke-direct {v4}, Lo/PlaybackStateCompat$Builder$onPostMessage;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 142
    aget-object v5, v1, v2

    .line 3027
    iget-object v6, v5, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 143
    check-cast v6, Ljava/lang/String;

    .line 3028
    iget-object v5, v5, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 143
    invoke-virtual {v4, v6, v5}, Lo/PlaybackStateCompat$Builder$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/PlaybackStateCompat$Builder$onPostMessage;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3843
    :cond_0
    new-instance v0, Lo/PlaybackStateCompat$Builder;

    iget-object v1, v4, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    invoke-direct {v0, v1}, Lo/PlaybackStateCompat$Builder;-><init>(Ljava/util/Map;)V

    .line 3846
    invoke-static {v0}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent(Lo/PlaybackStateCompat$Builder;)[B

    const-string v1, "dataBuilder.build()"

    .line 145
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v1, Lo/getErrorCode$onMessageChannelReady;

    invoke-direct {v1}, Lo/getErrorCode$onMessageChannelReady;-><init>()V

    .line 57
    sget-object v2, Lo/addCustomAction;->onPostMessage:Lo/addCustomAction;

    .line 4326
    iput-object v2, v1, Lo/getErrorCode$onMessageChannelReady;->onNavigationEvent:Lo/addCustomAction;

    .line 4339
    iput-boolean v3, v1, Lo/getErrorCode$onMessageChannelReady;->onPostMessage:Z

    .line 4453
    new-instance v2, Lo/getErrorCode;

    invoke-direct {v2, v1}, Lo/getErrorCode;-><init>(Lo/getErrorCode$onMessageChannelReady;)V

    const-string v1, "Constraints.Builder()\n  \u2026                 .build()"

    .line 59
    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lo/setBufferedPosition$extraCallback;

    const-class v3, Lcom/dreamplug/batcher/BatcherWorker;

    invoke-direct {v1, v3}, Lo/setBufferedPosition$extraCallback;-><init>(Ljava/lang/Class;)V

    .line 5197
    iget-object v3, v1, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iput-object v0, v3, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    .line 5198
    invoke-virtual {v1}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object v0

    .line 63
    check-cast v0, Lo/setBufferedPosition$extraCallback;

    .line 64
    iget-wide v3, p0, Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;->onMessageChannelReady:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object v0

    check-cast v0, Lo/setBufferedPosition$extraCallback;

    .line 6185
    iget-object v1, v0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iput-object v2, v1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 6186
    invoke-virtual {v0}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object v0

    .line 65
    check-cast v0, Lo/setBufferedPosition$extraCallback;

    .line 6209
    iget-object v1, v0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/Set;

    const-string v2, "BATCHER_SYNC_JOBS"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6210
    invoke-virtual {v0}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object v0

    .line 66
    check-cast v0, Lo/setBufferedPosition$extraCallback;

    .line 67
    invoke-virtual {v0}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onMessageChannelReady()Lo/PlaybackStateCompat$CustomAction$1;

    move-result-object v0

    const-string v1, "OneTimeWorkRequestBuilde\u2026                 .build()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    check-cast v0, Lo/setBufferedPosition;

    .line 68
    sget-object v1, Lo/onRequestSendAccessibilityEvent;->extraCallback:Lo/onRequestSendAccessibilityEvent;

    invoke-static {}, Lo/onRequestSendAccessibilityEvent;->extraCallback()Landroid/content/Context;

    move-result-object v1

    .line 7184
    invoke-static {v1}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v1

    .line 69
    sget-object v2, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object v2, p0, Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v2}, Lo/getAccessibilityNodeProvider;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo/PlaybackStateCompat$Actions;->ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

    .line 7354
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7351
    invoke-virtual {v1, v2, v3, v0}, Lo/setErrorMessage;->extraCallback(Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;)Lo/setActions;

    return-void
.end method
