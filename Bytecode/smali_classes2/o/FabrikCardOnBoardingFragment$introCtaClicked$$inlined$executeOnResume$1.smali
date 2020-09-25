.class final Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/refreshAuth;

.field private final synthetic extraCallback:Lo/setPanGiven;

.field private final synthetic onMessageChannelReady:I

.field private final synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/setPanGiven;Lo/refreshAuth;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iput-object p2, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    iput p3, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:I

    iput-object p4, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onPostMessage:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    instance-of v0, v0, Lo/StackLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget-object v0, v0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget v3, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:I

    iget-object v4, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lo/setPanGiven;->onNavigationEvent:Z

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    invoke-static {v0}, Lo/setPanGiven;->onNavigationEvent(Lo/refreshAuth;)Lo/FabrikWebViewFragment$MyJavascriptInterface;

    move-result-object v0

    iget-object v1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget-object v1, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    invoke-interface {v1, v0}, Lo/Actionable;->extraCallback(Lo/DataItemBackgroundJsonAdapter;)V

    iget-object v1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    invoke-virtual {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->postMessage()Lo/getEventName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/setPanGiven;->extraCallback(Lo/getEventName;)V

    return-void

    :cond_1
    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    instance-of v0, v0, Lo/StackLayoutManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget-object v0, v0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget v3, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:I

    iget-object v4, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, v0, Lo/setPanGiven;->onNavigationEvent:Z

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    check-cast v0, Lo/StackLayoutManager;

    iget-object v1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget-object v1, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    invoke-interface {v1, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;->onNavigationEvent(Lo/viesRequest;)V

    iget-object v1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    invoke-virtual {v0}, Lo/StackLayoutManager;->newSession()Lo/getEventName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/setPanGiven;->extraCallback(Lo/getEventName;)V

    return-void

    :cond_3
    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    instance-of v0, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget-object v0, v0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget v3, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:I

    iget-object v4, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, v0, Lo/setPanGiven;->onNavigationEvent:Z

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    invoke-static {v0}, Lo/setPanGiven;->onNavigationEvent(Lo/refreshAuth;)Lo/FabrikWebViewFragment$MyJavascriptInterface;

    move-result-object v0

    iget-object v1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget-object v1, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    invoke-interface {v1, v0}, Lo/Actionable;->extraCallback(Lo/DataItemBackgroundJsonAdapter;)V

    iget-object v1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    invoke-virtual {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->postMessage()Lo/getEventName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/setPanGiven;->extraCallback(Lo/getEventName;)V

    return-void

    :cond_5
    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    instance-of v0, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget-object v0, v0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget v3, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:I

    iget-object v4, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, v0, Lo/setPanGiven;->onNavigationEvent:Z

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/refreshAuth;

    check-cast v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iget-object v1, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    invoke-interface {v1, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;->extraCallback(Lo/startFileDownload;)V

    iget-object v1, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->newSession()Lo/getEventName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/setPanGiven;->extraCallback(Lo/getEventName;)V

    return-void

    :cond_7
    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    const/4 v3, 0x3

    iget v4, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:I

    iget-object v5, p0, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;->onPostMessage:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v0, v3, v1}, Lo/DeviceAttrResponse;->onPostMessage(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
