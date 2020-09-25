.class public final Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$OnFlingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountsResponse;",
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
        "com/dreamplug/fabrik/ui/track/TrackViewModel$syncAccounts$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountsResponse;",
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
.field final synthetic onPostMessage:Lo/RecyclerView$OnFlingListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$OnFlingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 487
    iput-object p1, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_4

    .line 490
    iget-object v0, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 490
    check-cast p1, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountsResponse;

    invoke-static {v0, p1}, Lo/RecyclerView$OnFlingListener;->onMessageChannelReady(Lo/RecyclerView$OnFlingListener;Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountsResponse;)V

    .line 491
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-static {p1}, Lo/RecyclerView$OnFlingListener;->extraCallback(Lo/RecyclerView$OnFlingListener;)V

    .line 492
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    .line 1437
    iget-object p1, p1, Lo/RecyclerView$OnFlingListener;->ICustomTabsService$Stub:Lo/snapFromFling$extraCallback;

    if-eqz p1, :cond_5

    .line 493
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-static {p1}, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub(Lo/RecyclerView$OnFlingListener;)Ljava/util/List;

    move-result-object p1

    .line 689
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 690
    check-cast v2, Lo/StaggeredGridLayoutManager;

    .line 494
    instance-of v4, v2, Lo/onFling$ICustomTabsCallback;

    if-eqz v4, :cond_1

    check-cast v2, Lo/onFling$ICustomTabsCallback;

    .line 2272
    iget-object v2, v2, Lo/onFling$ICustomTabsCallback;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 3048
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 3072
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 494
    iget-object v4, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    .line 3437
    iget-object v4, v4, Lo/RecyclerView$OnFlingListener;->ICustomTabsService$Stub:Lo/snapFromFling$extraCallback;

    if-eqz v4, :cond_0

    .line 4054
    iget-object v4, v4, Lo/snapFromFling$extraCallback;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v4, v3

    .line 494
    :goto_1
    invoke-static {v2, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 497
    :goto_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor$onMessageChannelReady;

    invoke-direct {v0, p0, v1}, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor$onMessageChannelReady;-><init>(Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;I)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    .line 4437
    iput-object v3, p1, Lo/RecyclerView$OnFlingListener;->ICustomTabsService$Stub:Lo/snapFromFling$extraCallback;

    return-void

    .line 502
    :cond_4
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_5

    .line 503
    iget-object v0, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-static {v0}, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult(Lo/RecyclerView$OnFlingListener;)V

    .line 504
    iget-object v0, p0, Lo/RecyclerView$OnFlingListener$getInterfaceDescriptor;->onPostMessage:Lo/RecyclerView$OnFlingListener;

    invoke-static {v0}, Lo/RecyclerView$OnFlingListener;->asInterface(Lo/RecyclerView$OnFlingListener;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/addWrite;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 5014
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 504
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v4, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
