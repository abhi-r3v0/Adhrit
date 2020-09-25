.class public final Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;
.super Lo/exit$default;

# interfaces
.implements Lo/openYourRewards;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/enableDarkMode;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsCallback$Stub$Proxy:Lo/TrophySectionsResponseJsonAdapter;

.field private ICustomTabsService:Landroid/view/View;

.field private asBinder:Lo/setOutsideTouchEnabled;

.field private asInterface:Landroid/os/Bundle;

.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private newSession:Lo/getEventName;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:D

.field private requestPostMessageChannel:Lo/logout;

.field private warmup:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Landroid/os/Bundle;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;)V
    .locals 3
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
            "D",
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

    move-object v0, p0

    invoke-direct {p0}, Lo/exit$default;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->warmup:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->extraCallback:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/enableDarkMode;

    move-object v1, p5

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onTransact:D

    move-object v1, p8

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onRelationshipValidationResult:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->asBinder:Lo/setOutsideTouchEnabled;

    move-object v1, p11

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->asInterface:Landroid/os/Bundle;

    move-object v1, p12

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/TrophySectionsResponseJsonAdapter;

    move-object/from16 v1, p13

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsService:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->newSession:Lo/getEventName;

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->getInterfaceDescriptor:Ljava/lang/String;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;Lo/logout;)Lo/logout;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

    return-object p1
.end method

.method static synthetic onPostMessage(Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;)Lo/logout;
    .locals 0

    iget-object p0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->extraCallback:Ljava/util/List;

    return-object v0
.end method

.method public final ICustomTabsCallback(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#002 Attempt to record impression before native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    iget-object v1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

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

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final ICustomTabsService()Lo/setOutsideTouchEnabled;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->asBinder:Lo/setOutsideTouchEnabled;

    return-object v0
.end method

.method public final IPostMessageService()V
    .locals 3

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/RaffleTicketBottomSheet$realDismiss$$inlined$executeOnResume$1;

    invoke-direct {v1, p0}, Lo/RaffleTicketBottomSheet$realDismiss$$inlined$executeOnResume$1;-><init>(Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->extraCallback:Ljava/util/List;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/enableDarkMode;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onTransact:D

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->asBinder:Lo/setOutsideTouchEnabled;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->asInterface:Landroid/os/Bundle;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->warmup:Ljava/lang/Object;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/TrophySectionsResponseJsonAdapter;

    iput-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsService:Landroid/view/View;

    return-void
.end method

.method public final asInterface()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/TrophySectionsResponseJsonAdapter;

    return-object v0
.end method

.method public final extraCallback()Lo/enableDarkMode;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/enableDarkMode;

    return-object v0
.end method

.method public final extraCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->getInterfaceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final mayLaunchUrl()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->asInterface:Landroid/os/Bundle;

    return-object v0
.end method

.method public final newSession()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

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

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

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

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#003 Attempt to report touch event before native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel:Lo/logout;

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

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method

.method public final onTransact()D
    .locals 2

    iget-wide v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onTransact:D

    return-wide v0
.end method

.method public final postMessage()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->newSession:Lo/getEventName;

    return-object v0
.end method

.method public final requestPostMessageChannel()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsService:Landroid/view/View;

    return-object v0
.end method

.method public final updateVisuals()Lo/credProtectDeactivated;
    .locals 1

    iget-object v0, p0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->asBinder:Lo/setOutsideTouchEnabled;

    return-object v0
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method
