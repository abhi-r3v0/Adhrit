.class public final Lo/RecyclerView$OnFlingListener$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$OnFlingListener;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/track/TrackViewModel$getConfig$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic onPostMessage:Lo/RecyclerView$OnFlingListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$OnFlingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lo/RecyclerView$OnFlingListener$onMessageChannelReady;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lo/RecyclerView$OnFlingListener$onMessageChannelReady;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 128
    check-cast p1, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;

    .line 1064
    iput-object p1, v0, Lo/RecyclerView$OnFlingListener;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;

    .line 129
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$onMessageChannelReady;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-static {p1}, Lo/RecyclerView$OnFlingListener;->onNavigationEvent(Lo/RecyclerView$OnFlingListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$onMessageChannelReady;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-static {p1}, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady(Lo/RecyclerView$OnFlingListener;)V

    return-void

    .line 131
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lo/RecyclerView$OnFlingListener$onMessageChannelReady;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    const/4 v1, 0x1

    .line 2062
    iput-boolean v1, v0, Lo/RecyclerView$OnFlingListener;->asBinder:Z

    .line 133
    iget-object v0, p0, Lo/RecyclerView$OnFlingListener$onMessageChannelReady;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 3014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 4014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 133
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v1, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    .line 4063
    iput-object p1, v0, Lo/RecyclerView$OnFlingListener;->asInterface:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$onMessageChannelReady;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-static {p1}, Lo/RecyclerView$OnFlingListener;->onNavigationEvent(Lo/RecyclerView$OnFlingListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$onMessageChannelReady;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-static {p1}, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady(Lo/RecyclerView$OnFlingListener;)V

    :cond_1
    return-void
.end method
