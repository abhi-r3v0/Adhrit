.class final Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setPanGiven;

.field private final synthetic extraCallback:Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/setPanGiven;Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iput-object p2, p0, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->extraCallback:Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v0, v0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v0, v0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->extraCallback:Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    invoke-interface {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;->extraCallback(Lo/startFileDownload;)V

    iget-object v0, p0, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v1, p0, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->extraCallback:Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    invoke-virtual {v1}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->newSession()Lo/getEventName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setPanGiven;->extraCallback(Lo/getEventName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method