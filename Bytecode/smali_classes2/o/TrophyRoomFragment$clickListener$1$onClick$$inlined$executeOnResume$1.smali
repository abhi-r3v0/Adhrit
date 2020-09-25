.class public final Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;
.super Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;

# interfaces
.implements Lo/refreshAuth;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private asBinder:Landroid/view/View;

.field private final extraCallback:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;

.field private final onPostMessage:Lo/setOutsideTouchEnabled;

.field private onRelationshipValidationResult:Lo/logout;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/fromMediaItemList;Lo/fromMediaItemList;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;",
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lo/setOutsideTouchEnabled;",
            "Lo/TrophySectionsResponseJsonAdapter;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    iput-object p1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/fromMediaItemList;

    iput-object p3, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/fromMediaItemList;

    iput-object p4, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setOutsideTouchEnabled;

    iput-object p5, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;

    iput-object p6, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Landroid/view/View;

    return-void
.end method

.method static synthetic extraCallback(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;Lo/logout;)Lo/logout;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    return-object p1
.end method

.method static synthetic onPostMessage(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)Lo/logout;
    .locals 0

    iget-object p0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {p1}, Lo/getText1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lo/logout;->extraCallback(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsService()Lo/setOutsideTouchEnabled;
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setOutsideTouchEnabled;

    return-object v0
.end method

.method public final extraCallback()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/fromMediaItemList;

    invoke-virtual {v0}, Lo/fromMediaItemList;->size()I

    move-result v0

    iget-object v1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/fromMediaItemList;

    invoke-virtual {v1}, Lo/fromMediaItemList;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/fromMediaItemList;

    invoke-virtual {v4}, Lo/fromMediaItemList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/fromMediaItemList;

    invoke-virtual {v4, v2}, Lo/fromMediaItemList;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/fromMediaItemList;

    invoke-virtual {v2}, Lo/fromMediaItemList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/fromMediaItemList;

    invoke-virtual {v2, v1}, Lo/fromMediaItemList;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/enableDarkMode;
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/enableDarkMode;

    return-object p1
.end method

.method public final onMessageChannelReady()V
    .locals 3

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    if-nez v1, :cond_0

    const-string v1, "#002 Attempt to record impression before native ad initialized."

    invoke-static {v1}, Lo/getText1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lo/logout;->ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Lo/logout;)V
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v0}, Lo/logout;->getInterfaceDescriptor()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final onPostMessage()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;

    return-object v0
.end method

.method public final onPostMessage(Lo/getEventName;)Z
    .locals 2

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Attempt to call renderVideoInMediaView before ad initialized."

    invoke-static {p1}, Lo/getText1;->onPostMessage(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Landroid/view/View;

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Lo/SlowLinearLayoutManager;

    invoke-direct {v0, p0}, Lo/SlowLinearLayoutManager;-><init>(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)V

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1, p1, v0}, Lo/logout;->onMessageChannelReady(Landroid/view/View;Lo/openAmexWebView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onRelationshipValidationResult()V
    .locals 2

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/TicketMachineFragment$launchTicketBottomSheet$$inlined$executeOnResume$1;

    invoke-direct {v1, p0}, Lo/TicketMachineFragment$launchTicketBottomSheet$$inlined$executeOnResume$1;-><init>(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/TrophySectionsResponseJsonAdapter;

    iput-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Landroid/view/View;

    return-void
.end method

.method public final requestPostMessageChannel()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Landroid/view/View;

    return-object v0
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method
