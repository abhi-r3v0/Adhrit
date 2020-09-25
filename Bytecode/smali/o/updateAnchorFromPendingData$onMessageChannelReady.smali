.class public final Lo/updateAnchorFromPendingData$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateAnchorFromPendingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002:\u00126\u00124\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0007`\u00060\u0001JF\u0010\u0008\u001a\u00020\t2<\u0010\n\u001a8\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0002j \u0012\u0004\u0012\u00020\u0003\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0007\u0018\u0001`\u0006H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimedViewModel$fetchClaimedRewards$1",
        "Landroidx/lifecycle/Observer;",
        "Ljava/util/HashMap;",
        "",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
        "Lkotlin/collections/HashMap;",
        "Lkotlin/collections/ArrayList;",
        "onChanged",
        "",
        "t",
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
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lo/updateAnchorFromPendingData;


# direct methods
.method constructor <init>(Lo/updateAnchorFromPendingData;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    iput-object p2, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 1064
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    iget-object v0, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/updateAnchorFromPendingData;->onMessageChannelReady(Lo/updateAnchorFromPendingData;Ljava/lang/String;)V

    .line 1065
    sget-object p1, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 1066
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    sget-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lo/updateAnchorFromPendingData;->extraCallback(Lo/updateAnchorFromPendingData;Ljava/util/ArrayList;)V

    .line 1067
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->extraCallback(Lo/updateAnchorFromPendingData;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1068
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->onMessageChannelReady(Lo/updateAnchorFromPendingData;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 1070
    :cond_1
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->ICustomTabsCallback(Lo/updateAnchorFromPendingData;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1071
    invoke-static {}, Lo/updateAnchorFromPendingData;->ICustomTabsCallback()V

    .line 1072
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/updateAnchorFromPendingData;->ICustomTabsCallback(Lo/updateAnchorFromPendingData;I)V

    .line 1073
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->ICustomTabsCallback$Stub(Lo/updateAnchorFromPendingData;)V

    .line 1074
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onMessageChannelReady;->onNavigationEvent:Lo/updateAnchorFromPendingData;

    invoke-virtual {p1}, Lo/updateAnchorFromPendingData;->extraCallback()V

    .line 1075
    sget-object p1, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->ICustomTabsCallback()Lo/setActive;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    return-void
.end method
