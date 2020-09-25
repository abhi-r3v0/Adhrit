.class public final Lo/getSharedElementEnterTransition$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSharedElementEnterTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
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
        "com/dreamplug/fabrik/ui/autodebit/AutoDebitViewModel$confirmAutoDebit$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
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
.field private synthetic onMessageChannelReady:Lo/getSharedElementEnterTransition;


# direct methods
.method constructor <init>(Lo/getSharedElementEnterTransition;)V
    .locals 0

    iput-object p1, p0, Lo/getSharedElementEnterTransition$onRelationshipValidationResult;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v1, :cond_1

    .line 179
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 179
    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    .line 180
    iget-object v0, p0, Lo/getSharedElementEnterTransition$onRelationshipValidationResult;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    invoke-static {v0}, Lo/getSharedElementEnterTransition;->onPostMessage(Lo/getSharedElementEnterTransition;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    if-nez p1, :cond_2

    .line 182
    sget-object p1, Lo/getSharedElementEnterTransition$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getSharedElementEnterTransition$ICustomTabsCallback;

    new-instance v0, Lo/getThumbTintList;

    sget-object v1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f130412

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 184
    :cond_1
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v1, :cond_2

    .line 185
    sget-object v1, Lo/getSharedElementEnterTransition$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getSharedElementEnterTransition$ICustomTabsCallback;

    new-instance v2, Lo/getThumbTintList;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 3014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 2010
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-direct {v2, p1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lo/getSharedElementEnterTransition$onRelationshipValidationResult;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    invoke-static {p1}, Lo/getSharedElementEnterTransition;->onPostMessage(Lo/getSharedElementEnterTransition;)Lo/setActive;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
