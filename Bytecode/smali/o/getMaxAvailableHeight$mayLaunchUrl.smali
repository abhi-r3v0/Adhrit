.class final Lo/getMaxAvailableHeight$mayLaunchUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxAvailableHeight;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/MenuItemHoverListener$onNavigationEvent;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004 \u0005*\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "pair",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/cred/pay/ui/PaymentContainerViewModel$ErrorBottomSheet;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getMaxAvailableHeight;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$mayLaunchUrl;->onPostMessage:Lo/getMaxAvailableHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 45
    check-cast p1, Lo/throwIfInMutationOperation;

    if-eqz p1, :cond_6

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1199
    :goto_0
    check-cast p1, Lo/MenuItemHoverListener$onNavigationEvent;

    if-eqz p1, :cond_6

    .line 2515
    iget-boolean v0, p1, Lo/MenuItemHoverListener$onNavigationEvent;->onTransact:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1203
    iget-object v2, p0, Lo/getMaxAvailableHeight$mayLaunchUrl;->onPostMessage:Lo/getMaxAvailableHeight;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2896
    iget-object v2, v2, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v2}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v2

    .line 1203
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const-string v4, "fragment"

    .line 1204
    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;

    const-string/jumbo v5, "retry_recommendation"

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_1

    .line 1206
    instance-of v4, v3, Lo/getAllExperimentsInAnalytics;

    if-eqz v4, :cond_1

    .line 1207
    check-cast v3, Lo/getAllExperimentsInAnalytics;

    invoke-virtual {v3}, Lo/onAudioInfoChanged;->m_()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 1210
    iget-object v0, p0, Lo/getMaxAvailableHeight$mayLaunchUrl;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 4000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 4110
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    new-instance v1, Lo/throwIfInMutationOperation;

    sget-object v2, Lo/onItemHoverExit$onRelationshipValidationResult;->extraCallback:Lo/onItemHoverExit$onRelationshipValidationResult;

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1213
    :cond_4
    iget-object v0, p0, Lo/getMaxAvailableHeight$mayLaunchUrl;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 4510
    iget-object v2, p1, Lo/MenuItemHoverListener$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 4511
    iget-object v3, p1, Lo/MenuItemHoverListener$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 4512
    iget-object p1, p1, Lo/MenuItemHoverListener$onNavigationEvent;->onNavigationEvent:Ljava/util/Map;

    if-nez p1, :cond_5

    .line 1214
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    :cond_5
    move-object v4, p1

    .line 1213
    new-instance p1, Lo/MenuItemHoverListener$onNavigationEvent;

    const/4 v5, 0x0

    const/16 v6, 0x38

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    invoke-static {v0, p1}, Lo/getMaxAvailableHeight;->ICustomTabsCallback(Lo/getMaxAvailableHeight;Lo/MenuItemHoverListener$onNavigationEvent;)V

    :cond_6
    return-void
.end method
