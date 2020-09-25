.class public final Lo/pullGlows$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pullGlows;->ICustomTabsCallback(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemViewModel$onRedeemInitiated$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;",
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
.field private synthetic extraCallback:Lo/pullGlows;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/pullGlows;)V
    .locals 0

    iput-object p1, p0, Lo/pullGlows$asBinder;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/pullGlows$asBinder;->extraCallback:Lo/pullGlows;

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 943
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 943
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    if-eqz p1, :cond_0

    .line 944
    iget-object v0, p0, Lo/pullGlows$asBinder;->extraCallback:Lo/pullGlows;

    .line 1070
    iget-object v0, v0, Lo/pullGlows;->newSession:Lo/setActive;

    .line 944
    new-instance v1, Lo/getThumbTintList;

    new-instance v2, Lo/getItemDecorationCount;

    iget-object v3, p0, Lo/pullGlows$asBinder;->onPostMessage:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lo/getItemDecorationCount;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;)V

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 946
    :cond_1
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 947
    iget-object v0, p0, Lo/pullGlows$asBinder;->extraCallback:Lo/pullGlows;

    .line 1082
    iget-object v0, v0, Lo/pullGlows;->extraCommand:Lo/setActive;

    .line 947
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 2014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 3014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 947
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v1, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
