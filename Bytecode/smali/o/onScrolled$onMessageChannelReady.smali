.class public final Lo/onScrolled$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onScrolled;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/ticket/RaffleTicketViewModel$fetchTickets$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;",
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
.field private synthetic onNavigationEvent:Lo/onScrolled;


# direct methods
.method constructor <init>(Lo/onScrolled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lo/onScrolled$onMessageChannelReady;->onNavigationEvent:Lo/onScrolled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 44
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 44
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;

    if-eqz p1, :cond_1

    .line 45
    iget-object v0, p0, Lo/onScrolled$onMessageChannelReady;->onNavigationEvent:Lo/onScrolled;

    .line 2008
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lo/onScrolled;->onMessageChannelReady(Lo/onScrolled;Z)V

    .line 46
    iget-object v0, p0, Lo/onScrolled$onMessageChannelReady;->onNavigationEvent:Lo/onScrolled;

    .line 2009
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;->onNavigationEvent:Lo/getTargetScrollPosition;

    .line 2010
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;->extraCallback:Ljava/util/List;

    .line 46
    invoke-static {v0, v2, p1}, Lo/onScrolled;->extraCallback(Lo/onScrolled;Lo/getTargetScrollPosition;Ljava/util/List;)V

    .line 48
    :cond_1
    iget-object p1, p0, Lo/onScrolled$onMessageChannelReady;->onNavigationEvent:Lo/onScrolled;

    invoke-static {p1}, Lo/onScrolled;->onPostMessage(Lo/onScrolled;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lo/onScrolled;->extraCallback(Lo/onScrolled;I)V

    .line 49
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string p1, "RaffleTicketViewModel"

    const-string v0, "fetchTickets :: RESPONSE"

    invoke-static {p1, v0}, Lo/replaceAll;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_2
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lo/onScrolled$onMessageChannelReady;->onNavigationEvent:Lo/onScrolled;

    .line 2073
    iput v1, v0, Lo/onScrolled;->onMessageChannelReady:I

    .line 2074
    iput-boolean v1, v0, Lo/onScrolled;->ICustomTabsCallback:Z

    .line 2075
    iget-object v0, v0, Lo/onScrolled;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    iget-object v0, p0, Lo/onScrolled$onMessageChannelReady;->onNavigationEvent:Lo/onScrolled;

    invoke-static {v0}, Lo/onScrolled;->extraCallback(Lo/onScrolled;)Lo/setActive;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 54
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 3014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 4014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 54
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 57
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/onScrolled$onMessageChannelReady;->onNavigationEvent:Lo/onScrolled;

    invoke-static {p1}, Lo/onScrolled;->onNavigationEvent(Lo/onScrolled;)V

    return-void
.end method
