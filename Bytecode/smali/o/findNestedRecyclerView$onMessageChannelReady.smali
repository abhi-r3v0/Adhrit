.class public final Lo/findNestedRecyclerView$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findNestedRecyclerView;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineViewModel$fetchTicket$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;",
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
.field private synthetic ICustomTabsCallback:Lo/findNestedRecyclerView;


# direct methods
.method constructor <init>(Lo/findNestedRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lo/findNestedRecyclerView$onMessageChannelReady;->ICustomTabsCallback:Lo/findNestedRecyclerView;

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
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_5

    .line 167
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 167
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;

    if-eqz p1, :cond_4

    .line 1018
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    if-eqz v0, :cond_2

    .line 169
    iget-object v1, p0, Lo/findNestedRecyclerView$onMessageChannelReady;->ICustomTabsCallback:Lo/findNestedRecyclerView;

    .line 1042
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;->onNavigationEvent:Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 2034
    :goto_0
    iput v2, v1, Lo/findNestedRecyclerView;->extraCallback:I

    .line 170
    iget-object v1, p0, Lo/findNestedRecyclerView$onMessageChannelReady;->ICustomTabsCallback:Lo/findNestedRecyclerView;

    .line 2041
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;->onMessageChannelReady:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3035
    :cond_1
    iput v3, v1, Lo/findNestedRecyclerView;->onNavigationEvent:I

    .line 171
    iget-object v0, p0, Lo/findNestedRecyclerView$onMessageChannelReady;->ICustomTabsCallback:Lo/findNestedRecyclerView;

    .line 4034
    iget v1, v0, Lo/findNestedRecyclerView;->extraCallback:I

    .line 4036
    iput v1, v0, Lo/findNestedRecyclerView;->onMessageChannelReady:I

    .line 173
    :cond_2
    iget-object v0, p0, Lo/findNestedRecyclerView$onMessageChannelReady;->ICustomTabsCallback:Lo/findNestedRecyclerView;

    invoke-static {v0}, Lo/findNestedRecyclerView;->onPostMessage(Lo/findNestedRecyclerView;)Lo/setActive;

    move-result-object v0

    .line 5023
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;->onTransact:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 173
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lo/findNestedRecyclerView$onMessageChannelReady;->ICustomTabsCallback:Lo/findNestedRecyclerView;

    invoke-static {v0}, Lo/findNestedRecyclerView;->extraCallback(Lo/findNestedRecyclerView;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 177
    :cond_5
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_6

    .line 178
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 6014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 7014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 178
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 179
    iget-object p1, p0, Lo/findNestedRecyclerView$onMessageChannelReady;->ICustomTabsCallback:Lo/findNestedRecyclerView;

    invoke-static {p1}, Lo/findNestedRecyclerView;->extraCallback(Lo/findNestedRecyclerView;)Lo/setActive;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
