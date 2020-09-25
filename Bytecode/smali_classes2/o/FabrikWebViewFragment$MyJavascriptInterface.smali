.class public final Lo/FabrikWebViewFragment$MyJavascriptInterface;
.super Lo/CompletionActionJsonAdapter;

# interfaces
.implements Lo/openYourRewards;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Lo/setOutsideTouchEnabled;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/os/Bundle;

.field private ICustomTabsService:Landroid/view/View;

.field private asBinder:Ljava/lang/String;

.field private asInterface:Ljava/lang/String;

.field private extraCallback:Ljava/lang/String;

.field private getInterfaceDescriptor:Lo/getEventName;

.field private mayLaunchUrl:Lo/logout;

.field private newSession:Lo/TrophySectionsResponseJsonAdapter;

.field private onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/enableDarkMode;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:D

.field private updateVisuals:Ljava/lang/Object;

.field private warmup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V
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
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/setOutsideTouchEnabled;",
            "Lo/TrophySectionsResponseJsonAdapter;",
            "Landroid/view/View;",
            "Lo/getEventName;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lo/CompletionActionJsonAdapter;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->updateVisuals:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onPostMessage:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->extraCallback:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onNavigationEvent:Lo/enableDarkMode;

    move-object v1, p5

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->asInterface:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onTransact:D

    move-object v1, p9

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->asBinder:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onRelationshipValidationResult:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub:Lo/setOutsideTouchEnabled;

    move-object v1, p12

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->newSession:Lo/TrophySectionsResponseJsonAdapter;

    move-object/from16 v1, p13

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsService:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->getInterfaceDescriptor:Lo/getEventName;

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->warmup:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub$Proxy:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface;Lo/logout;)Lo/logout;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface;)Lo/logout;
    .locals 0

    iget-object p0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady:Ljava/util/List;

    return-object v0
.end method

.method public final ICustomTabsCallback(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->updateVisuals:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#002 Attempt to record impression before native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

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

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final ICustomTabsService()Lo/setOutsideTouchEnabled;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub:Lo/setOutsideTouchEnabled;

    return-object v0
.end method

.method public final ICustomTabsService$Stub()V
    .locals 2

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/setTextWidth;

    invoke-direct {v1, p0}, Lo/setTextWidth;-><init>(Lo/FabrikWebViewFragment$MyJavascriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ICustomTabsService$Stub$Proxy()Lo/credProtectDeactivated;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub:Lo/setOutsideTouchEnabled;

    return-object v0
.end method

.method public final IPostMessageService()V
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

    invoke-interface {v0}, Lo/logout;->ICustomTabsCallback()V

    return-void
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->asBinder:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->warmup:Ljava/lang/String;

    return-object v0
.end method

.method public final mayLaunchUrl()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->getInterfaceDescriptor:Lo/getEventName;

    return-object v0
.end method

.method public final newSession()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->newSession:Lo/TrophySectionsResponseJsonAdapter;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/enableDarkMode;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onNavigationEvent:Lo/enableDarkMode;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->updateVisuals:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

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

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->updateVisuals:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

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

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->updateVisuals:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

    if-nez v1, :cond_0

    const-string p1, "#003 Attempt to report touch event before native ad initialized."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

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

.method public final onPostMessage(Lo/ActionableJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

    invoke-interface {v0, p1}, Lo/logout;->onNavigationEvent(Lo/ActionableJsonAdapter;)V

    return-void
.end method

.method public final onRelationshipValidationResult()D
    .locals 2

    iget-wide v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onTransact:D

    return-wide v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->asInterface:Ljava/lang/String;

    return-object v0
.end method

.method public final postMessage()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->mayLaunchUrl:Lo/logout;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final requestPostMessageChannel()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsService:Landroid/view/View;

    return-object v0
.end method

.method public final updateVisuals()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub$Proxy:Landroid/os/Bundle;

    return-object v0
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1

    const-string v0, "6"

    return-object v0
.end method
