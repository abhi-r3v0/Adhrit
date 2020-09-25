.class public final Lo/requestLayout$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requestLayout;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinFarmResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingViewModel$refresh$2",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinFarmResponse;",
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
.field private synthetic onPostMessage:Lo/requestLayout;


# direct methods
.method constructor <init>(Lo/requestLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinFarmResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string/jumbo v1, "tag"

    if-eqz v0, :cond_3

    const-string v0, "API_SUCCESS cacheExists"

    .line 80
    iget-object v2, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    .line 1030
    iget-boolean v2, v2, Lo/requestLayout;->onNavigationEvent:Z

    .line 80
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v0, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 81
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinFarmResponse;

    if-eqz p1, :cond_2

    .line 2014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinFarmResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 81
    check-cast p1, Ljava/lang/Iterable;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 152
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 82
    iget-object v4, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    invoke-static {v4}, Lo/requestLayout;->onNavigationEvent(Lo/requestLayout;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 2029
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 2062
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    .line 82
    invoke-static {v4, v3}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lo/requestLayout;->onMessageChannelReady(Lo/requestLayout;Ljava/util/ArrayList;)V

    .line 84
    iget-object p1, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    invoke-static {p1}, Lo/requestLayout;->ICustomTabsCallback(Lo/requestLayout;)V

    return-void

    .line 87
    :cond_3
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_9

    const-string v0, "API_FAILURE cacheExists"

    .line 88
    iget-object v2, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    .line 3030
    iget-boolean v2, v2, Lo/requestLayout;->onNavigationEvent:Z

    .line 88
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3065
    invoke-static {v0, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    invoke-static {v0}, Lo/requestLayout;->extraCallback(Lo/requestLayout;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_9

    .line 90
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    const-string v3, "API_ERROR"

    if-eqz v0, :cond_7

    .line 91
    iget-object v0, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    .line 4027
    iget-object v0, v0, Lo/requestLayout;->onPostMessage:Lo/setActive;

    .line 91
    new-instance v4, Lo/requestLayout$ICustomTabsCallback$onNavigationEvent;

    .line 92
    new-instance v5, Lo/addWrite;

    .line 5014
    iget-object v6, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 92
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v6, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    .line 6026
    iget v6, v6, Lo/requestLayout;->onMessageChannelReady:I

    if-nez v6, :cond_6

    const/4 v1, 0x1

    .line 92
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v5, p1, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    invoke-direct {v4, v5, v3}, Lo/requestLayout$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/addWrite;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 95
    :cond_7
    iget-object p1, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    .line 6027
    iget-object p1, p1, Lo/requestLayout;->onPostMessage:Lo/setActive;

    .line 95
    new-instance v0, Lo/requestLayout$ICustomTabsCallback$onNavigationEvent;

    .line 96
    new-instance v4, Lo/addWrite;

    iget-object v5, p0, Lo/requestLayout$onMessageChannelReady;->onPostMessage:Lo/requestLayout;

    .line 7026
    iget v5, v5, Lo/requestLayout;->onMessageChannelReady:I

    if-nez v5, :cond_8

    const/4 v1, 0x1

    .line 96
    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "something went wrong. please check back in some time"

    invoke-direct {v4, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-direct {v0, v4, v3}, Lo/requestLayout$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/addWrite;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
