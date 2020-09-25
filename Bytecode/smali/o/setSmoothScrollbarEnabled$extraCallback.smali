.class public final Lo/setSmoothScrollbarEnabled$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSmoothScrollbarEnabled;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/LifestyleViewModel$fetchDeepLinkedCard$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
.field private synthetic onMessageChannelReady:Lo/setSmoothScrollbarEnabled;


# direct methods
.method constructor <init>(Lo/setSmoothScrollbarEnabled;)V
    .locals 0

    iput-object p1, p0, Lo/setSmoothScrollbarEnabled$extraCallback;->onMessageChannelReady:Lo/setSmoothScrollbarEnabled;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 255
    iget-object v0, p0, Lo/setSmoothScrollbarEnabled$extraCallback;->onMessageChannelReady:Lo/setSmoothScrollbarEnabled;

    invoke-static {v0}, Lo/setSmoothScrollbarEnabled;->onPostMessage(Lo/setSmoothScrollbarEnabled;)V

    .line 256
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 256
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v0, :cond_2

    .line 257
    iget-object v1, p0, Lo/setSmoothScrollbarEnabled$extraCallback;->onMessageChannelReady:Lo/setSmoothScrollbarEnabled;

    sget-object v3, Lo/collectAdjacentPrefetchPositions;->onPostMessage:Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;

    .line 1091
    invoke-static {}, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent()Ljava/util/List;

    move-result-object v3

    .line 2031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    .line 257
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 258
    move-object v2, p1

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    goto :goto_0

    .line 260
    :cond_0
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f1301a8

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 3090
    :goto_0
    iput-object v2, v1, Lo/setSmoothScrollbarEnabled;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    goto :goto_1

    .line 264
    :cond_1
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lo/setSmoothScrollbarEnabled$extraCallback;->onMessageChannelReady:Lo/setSmoothScrollbarEnabled;

    invoke-static {v1}, Lo/setSmoothScrollbarEnabled;->onPostMessage(Lo/setSmoothScrollbarEnabled;)V

    .line 266
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 4010
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    .line 266
    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 267
    iget-object p1, p0, Lo/setSmoothScrollbarEnabled$extraCallback;->onMessageChannelReady:Lo/setSmoothScrollbarEnabled;

    .line 5090
    iput-object v2, p1, Lo/setSmoothScrollbarEnabled;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 269
    :cond_2
    :goto_1
    iget-object p1, p0, Lo/setSmoothScrollbarEnabled$extraCallback;->onMessageChannelReady:Lo/setSmoothScrollbarEnabled;

    invoke-virtual {p1}, Lo/setSmoothScrollbarEnabled;->ICustomTabsCallback()V

    return-void
.end method
