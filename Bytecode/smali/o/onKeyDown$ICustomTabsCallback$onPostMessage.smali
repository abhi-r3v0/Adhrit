.class final Lo/onKeyDown$ICustomTabsCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onKeyDown$ICustomTabsCallback;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
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
.field final synthetic ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

.field final synthetic onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;


# direct methods
.method constructor <init>(Lo/onKeyDown$ICustomTabsCallback;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 0

    iput-object p1, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iput-object p2, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 82
    sget-object v0, Lo/closeOptionsMenu;->extraCallback:Lo/closeOptionsMenu;

    iget-object v0, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 82
    check-cast v0, Lclub/cred/interjection/data/models/CampaignResponse;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, v0, Lclub/cred/interjection/data/models/CampaignResponse;->onMessageChannelReady:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 2000
    :goto_0
    sget-object v2, Lo/closeOptionsMenu;->onPostMessage:Lo/copyArray;

    sget-object v3, Lo/closeOptionsMenu;->onMessageChannelReady:[Lo/applyUserOverwrite;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iget-object v0, v0, Lo/onKeyDown$ICustomTabsCallback;->onNavigationEvent:Lo/onKeyDown;

    iget-object v1, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 84
    check-cast v1, Lclub/cred/interjection/data/models/CampaignResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2019
    iget-object v1, v1, Lclub/cred/interjection/data/models/CampaignResponse;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2022
    :goto_1
    iput v1, v0, Lo/onKeyDown;->ICustomTabsCallback:I

    .line 85
    sget-object v0, Lo/closeOptionsMenu;->extraCallback:Lo/closeOptionsMenu;

    iget-object v0, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iget-object v0, v0, Lo/onKeyDown$ICustomTabsCallback;->onNavigationEvent:Lo/onKeyDown;

    .line 3022
    iget v0, v0, Lo/onKeyDown;->ICustomTabsCallback:I

    .line 4000
    sget-object v1, Lo/closeOptionsMenu;->onNavigationEvent:Lo/SortedList$Callback;

    sget-object v3, Lo/closeOptionsMenu;->onMessageChannelReady:[Lo/applyUserOverwrite;

    aget-object v2, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iget-object v0, v0, Lo/onKeyDown$ICustomTabsCallback;->onNavigationEvent:Lo/onKeyDown;

    .line 4015
    iget-object v0, v0, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 86
    new-instance v1, Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;

    invoke-direct {v1, p0}, Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;-><init>(Lo/onKeyDown$ICustomTabsCallback$onPostMessage;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 5351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 5352
    iget-object v2, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    .line 5353
    iget-object v3, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v3, v2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 5354
    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 4410
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5395
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4413
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 113
    iget-object v0, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iget-object v0, v0, Lo/onKeyDown$ICustomTabsCallback;->onNavigationEvent:Lo/onKeyDown;

    iget-object v1, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iget-object v1, v1, Lo/onKeyDown$ICustomTabsCallback;->extraCallback:Lo/getServerTime;

    .line 6045
    sget-object v2, Lo/getResources;->onNavigationEvent:Lo/getResources;

    new-instance v3, Lo/onKeyDown$extraCallback;

    invoke-direct {v3, v0, v1}, Lo/onKeyDown$extraCallback;-><init>(Lo/onKeyDown;Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 4413
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 4414
    throw v1
.end method
