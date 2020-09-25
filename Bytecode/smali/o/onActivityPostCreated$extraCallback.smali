.class public final Lo/onActivityPostCreated$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPostCreated;->extraCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactReverseSyncResponse;",
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
        "com/dreamplug/fabrik/ui/contacts/manager/ContactBookManager$syncReverse$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactReverseSyncResponse;",
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
.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 71
    iput p1, p0, Lo/onActivityPostCreated$extraCallback;->onPostMessage:I

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
            "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactReverseSyncResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_3

    .line 75
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 75
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/helper/ContactReverseSyncResponse;

    if-eqz p1, :cond_3

    .line 1032
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/contacts/helper/ContactReverseSyncResponse;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 77
    sget-object v1, Lo/setSubUiVisibilityListener;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    .line 2029
    iget-object v1, v1, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 77
    check-cast v1, Lo/setSubUiVisibilityListener;

    invoke-static {v0}, Lo/extraCallback$ICustomTabsCallback;->onMessageChannelReady(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "entities"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2113
    sget-object v2, Lo/onPerformDefaultAction;->extraCallback:Lo/onPerformDefaultAction;

    new-instance v3, Lo/setSubUiVisibilityListener$asBinder;

    invoke-direct {v3, v1, v0}, Lo/setSubUiVisibilityListener$asBinder;-><init>(Lo/setSubUiVisibilityListener;Ljava/util/ArrayList;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2034
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "class not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 3033
    :cond_1
    :goto_0
    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/contacts/helper/ContactReverseSyncResponse;->onMessageChannelReady:Z

    if-eqz p1, :cond_2

    .line 80
    sget-object p1, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    iget v0, p0, Lo/onActivityPostCreated$extraCallback;->onPostMessage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lo/onActivityPostCreated;->extraCallback(I)V

    return-void

    .line 82
    :cond_2
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4000
    sget-object p1, Lo/setTrackTintMode;->getServiceComponent:Lo/getNavigationContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
