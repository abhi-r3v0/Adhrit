.class public final Lo/dispatchRemovals$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchRemovals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Ljava/lang/Void;",
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
        "com/dreamplug/fabrik/ui/fileUpload/FileUploadViewModel$uploadFiles$4$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Ljava/lang/Void;",
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
.field private synthetic extraCallback:Lo/dispatchRemovals;


# direct methods
.method constructor <init>(Lo/dispatchRemovals;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchRemovals$ICustomTabsCallback;->extraCallback:Lo/dispatchRemovals;

    .line 86
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
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-object p1, p0, Lo/dispatchRemovals$ICustomTabsCallback;->extraCallback:Lo/dispatchRemovals;

    .line 1029
    iget-object p1, p1, Lo/dispatchRemovals;->extraCallback:Lo/setActive;

    .line 89
    new-instance v0, Lo/dispatchRemovals$onNavigationEvent;

    sget-object v1, Lo/removePostponedUpdate;->onPostMessage:Lo/removePostponedUpdate;

    invoke-direct {v0, v1}, Lo/dispatchRemovals$onNavigationEvent;-><init>(Lo/removePostponedUpdate;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lo/dispatchRemovals$ICustomTabsCallback;->extraCallback:Lo/dispatchRemovals;

    .line 2029
    iget-object v0, v0, Lo/dispatchRemovals;->extraCallback:Lo/setActive;

    .line 92
    new-instance v1, Lo/dispatchRemovals$onNavigationEvent;

    sget-object v2, Lo/removePostponedUpdate;->ICustomTabsCallback:Lo/removePostponedUpdate;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 3014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 4014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 92
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lo/dispatchRemovals$onNavigationEvent;-><init>(Lo/removePostponedUpdate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
