.class public final Lo/StackLayoutManager;
.super Lo/inadequateCoinsActionHandler;

# interfaces
.implements Lo/openYourRewards;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/enableDarkMode;

.field private ICustomTabsCallback$Stub:Lo/TrophySectionsResponseJsonAdapter;

.field private ICustomTabsCallback$Stub$Proxy:Lo/logout;

.field private ICustomTabsService:Ljava/lang/Object;

.field private asBinder:Landroid/os/Bundle;

.field private asInterface:Lo/setOutsideTouchEnabled;

.field private extraCallback:Ljava/lang/String;

.field private getInterfaceDescriptor:Lo/getEventName;

.field private newSession:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Landroid/view/View;

.field private onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Landroid/os/Bundle;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;",
            "Ljava/lang/String;",
            "Lo/enableDarkMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/setOutsideTouchEnabled;",
            "Landroid/os/Bundle;",
            "Lo/TrophySectionsResponseJsonAdapter;",
            "Landroid/view/View;",
            "Lo/getEventName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lo/inadequateCoinsActionHandler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/StackLayoutManager;->ICustomTabsService:Ljava/lang/Object;

    iput-object p1, p0, Lo/StackLayoutManager;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lo/StackLayoutManager;->onMessageChannelReady:Ljava/util/List;

    iput-object p3, p0, Lo/StackLayoutManager;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/StackLayoutManager;->ICustomTabsCallback:Lo/enableDarkMode;

    iput-object p5, p0, Lo/StackLayoutManager;->onPostMessage:Ljava/lang/String;

    iput-object p6, p0, Lo/StackLayoutManager;->onTransact:Ljava/lang/String;

    iput-object p7, p0, Lo/StackLayoutManager;->asInterface:Lo/setOutsideTouchEnabled;

    iput-object p8, p0, Lo/StackLayoutManager;->asBinder:Landroid/os/Bundle;

    iput-object p9, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub:Lo/TrophySectionsResponseJsonAdapter;

    iput-object p10, p0, Lo/StackLayoutManager;->onRelationshipValidationResult:Landroid/view/View;

    iput-object p11, p0, Lo/StackLayoutManager;->getInterfaceDescriptor:Lo/getEventName;

    iput-object p12, p0, Lo/StackLayoutManager;->newSession:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/StackLayoutManager;Lo/logout;)Lo/logout;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    return-object p1
.end method

.method static synthetic onNavigationEvent(Lo/StackLayoutManager;)Lo/logout;
    .locals 0

    iget-object p0, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->onMessageChannelReady:Ljava/util/List;

    return-object v0
.end method

.method public final ICustomTabsCallback(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lo/StackLayoutManager;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#002 Attempt to record impression before native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    iget-object v1, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    invoke-interface {v1, p1}, Lo/logout;->onMessageChannelReady(Landroid/os/Bundle;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final ICustomTabsService()Lo/setOutsideTouchEnabled;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->asInterface:Lo/setOutsideTouchEnabled;

    return-object v0
.end method

.method public final asInterface()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub:Lo/TrophySectionsResponseJsonAdapter;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final mayLaunchUrl()Lo/credProtectDeactivated;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->asInterface:Lo/setOutsideTouchEnabled;

    return-object v0
.end method

.method public final newSession()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->newSession:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/StackLayoutManager;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    invoke-interface {v1, p1}, Lo/logout;->onPostMessage(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady(Lo/logout;)V
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/StackLayoutManager;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#003 Attempt to report touch event before native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/logout;

    invoke-interface {v1, p1}, Lo/logout;->onNavigationEvent(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->getInterfaceDescriptor:Lo/getEventName;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Lo/enableDarkMode;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->ICustomTabsCallback:Lo/enableDarkMode;

    return-object v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final postMessage()V
    .locals 2

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;

    invoke-direct {v1, p0}, Lo/TicketMachineFragment$reset$$inlined$executeOnResume$1;-><init>(Lo/StackLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/StackLayoutManager;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/StackLayoutManager;->onMessageChannelReady:Ljava/util/List;

    iput-object v0, p0, Lo/StackLayoutManager;->extraCallback:Ljava/lang/String;

    iput-object v0, p0, Lo/StackLayoutManager;->ICustomTabsCallback:Lo/enableDarkMode;

    iput-object v0, p0, Lo/StackLayoutManager;->onPostMessage:Ljava/lang/String;

    iput-object v0, p0, Lo/StackLayoutManager;->onTransact:Ljava/lang/String;

    iput-object v0, p0, Lo/StackLayoutManager;->asInterface:Lo/setOutsideTouchEnabled;

    iput-object v0, p0, Lo/StackLayoutManager;->asBinder:Landroid/os/Bundle;

    iput-object v0, p0, Lo/StackLayoutManager;->ICustomTabsService:Ljava/lang/Object;

    iput-object v0, p0, Lo/StackLayoutManager;->ICustomTabsCallback$Stub:Lo/TrophySectionsResponseJsonAdapter;

    iput-object v0, p0, Lo/StackLayoutManager;->onRelationshipValidationResult:Landroid/view/View;

    return-void
.end method

.method public final requestPostMessageChannel()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->onRelationshipValidationResult:Landroid/view/View;

    return-object v0
.end method

.method public final updateVisuals()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/StackLayoutManager;->asBinder:Landroid/os/Bundle;

    return-object v0
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
