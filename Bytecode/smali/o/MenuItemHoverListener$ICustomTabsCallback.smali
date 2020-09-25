.class final Lo/MenuItemHoverListener$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MenuItemHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;",
        "Lo/addWrites;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/MenuItemHoverListener$onNavigationEvent;

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Z

.field private synthetic onPostMessage:Lo/MenuItemHoverListener;


# direct methods
.method constructor <init>(Lo/MenuItemHoverListener;ZZLo/MenuItemHoverListener$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onPostMessage:Lo/MenuItemHoverListener;

    iput-boolean p2, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onNavigationEvent:Z

    iput-boolean p3, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onMessageChannelReady:Z

    iput-object p4, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/MenuItemHoverListener$onNavigationEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 31
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1356
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_6

    .line 1357
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1357
    check-cast v0, Lcom/cred/pay/repository/models/SessionCallResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, v0, Lcom/cred/pay/repository/models/SessionCallResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/PreferredInstruments;

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, v0, Lcom/cred/pay/repository/models/PreferredInstruments;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1358
    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    .line 1359
    iget-object p1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onPostMessage:Lo/MenuItemHoverListener;

    iget-boolean v0, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onNavigationEvent:Z

    iget-boolean v1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onMessageChannelReady:Z

    iget-object v2, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/MenuItemHoverListener$onNavigationEvent;

    invoke-static {p1, v0, v1, v2}, Lo/MenuItemHoverListener;->onNavigationEvent(Lo/MenuItemHoverListener;ZZLo/MenuItemHoverListener$onNavigationEvent;)V

    goto :goto_3

    .line 1361
    :cond_3
    iget-object v2, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onPostMessage:Lo/MenuItemHoverListener;

    .line 3046
    iget-object v2, v2, Lo/MenuItemHoverListener;->warmup:Lo/setActive;

    .line 4009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1361
    check-cast p1, Lcom/cred/pay/repository/models/SessionCallResponse;

    if-eqz p1, :cond_4

    .line 4013
    iget-object v1, p1, Lcom/cred/pay/repository/models/SessionCallResponse;->extraCallback:Ljava/util/List;

    .line 1361
    :cond_4
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1362
    iget-object p1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onPostMessage:Lo/MenuItemHoverListener;

    .line 4047
    iget-object p1, p1, Lo/MenuItemHoverListener;->getInterfaceDescriptor:Lo/setActive;

    .line 1362
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1363
    iget-object p1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onPostMessage:Lo/MenuItemHoverListener;

    .line 4050
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    .line 1363
    new-instance v0, Lo/throwIfInMutationOperation;

    sget-object v1, Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1364
    iget-object p1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onPostMessage:Lo/MenuItemHoverListener;

    .line 4054
    iget-object p1, p1, Lo/MenuItemHoverListener;->postMessage:Lo/setActive;

    .line 1364
    new-instance v0, Lo/throwIfInMutationOperation;

    iget-object v1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/MenuItemHoverListener$onNavigationEvent;

    .line 4511
    iget-object v1, v1, Lo/MenuItemHoverListener$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 1365
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_droped_content:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 1364
    :cond_5
    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_3

    .line 1368
    :cond_6
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz p1, :cond_7

    .line 1369
    iget-object p1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onPostMessage:Lo/MenuItemHoverListener;

    iget-boolean v0, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onNavigationEvent:Z

    iget-boolean v1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onMessageChannelReady:Z

    iget-object v2, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/MenuItemHoverListener$onNavigationEvent;

    invoke-static {p1, v0, v1, v2}, Lo/MenuItemHoverListener;->onNavigationEvent(Lo/MenuItemHoverListener;ZZLo/MenuItemHoverListener$onNavigationEvent;)V

    .line 1372
    :cond_7
    :goto_3
    iget-object p1, p0, Lo/MenuItemHoverListener$ICustomTabsCallback;->onPostMessage:Lo/MenuItemHoverListener;

    .line 5051
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1372
    new-instance v0, Lo/addWrite;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 31
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
