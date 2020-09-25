.class public final Lo/findOneVisibleChild$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findOneVisibleChild;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;",
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
        "com/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicData$fetchMore$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;",
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
.field private synthetic extraCallback:Lo/toDebugString$onPostMessage;


# direct methods
.method constructor <init>(Lo/toDebugString$onPostMessage;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/findOneVisibleChild$onNavigationEvent;->extraCallback:Lo/toDebugString$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    invoke-static {}, Lo/findOneVisibleChild;->ICustomTabsCallback()V

    .line 60
    sget-object v0, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/findOneVisibleChild;->onMessageChannelReady(Lo/clearScrap;)V

    .line 61
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_2

    .line 62
    sget-object v0, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 62
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;

    if-eqz v0, :cond_0

    .line 1014
    iget-boolean v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;->onPostMessage:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-static {v0}, Lo/findOneVisibleChild;->extraCallback(Z)V

    .line 63
    sget-object v0, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    invoke-static {}, Lo/findOneVisibleChild;->onPostMessage()I

    move-result v0

    iget-object v1, p0, Lo/findOneVisibleChild$onNavigationEvent;->extraCallback:Lo/toDebugString$onPostMessage;

    iget v1, v1, Lo/toDebugString$onPostMessage;->onPostMessage:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0}, Lo/findOneVisibleChild;->onNavigationEvent(I)V

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 64
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;

    if-eqz p1, :cond_1

    .line 2012
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResponseBody;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 65
    sget-object v0, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    invoke-static {}, Lo/findOneVisibleChild;->ICustomTabsCallback$Stub()Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 66
    sget-object p1, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    invoke-static {}, Lo/findOneVisibleChild;->onRelationshipValidationResult()V

    :cond_1
    return-void

    .line 68
    :cond_2
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_3

    .line 69
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 2014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 3014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 69
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_3
    return-void
.end method
