.class final Lo/OtpSMSBroadcastReceiver$1;
.super Lo/getFirstName;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/app/Dialog;

.field private final synthetic onNavigationEvent:Lo/SlackMessageJsonAdapter;


# direct methods
.method constructor <init>(Lo/SlackMessageJsonAdapter;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/OtpSMSBroadcastReceiver$1;->onNavigationEvent:Lo/SlackMessageJsonAdapter;

    iput-object p2, p0, Lo/OtpSMSBroadcastReceiver$1;->ICustomTabsCallback:Landroid/app/Dialog;

    invoke-direct {p0}, Lo/getFirstName;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/OtpSMSBroadcastReceiver$1;->onNavigationEvent:Lo/SlackMessageJsonAdapter;

    iget-object v0, v0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady()V

    .line 3
    iget-object v0, p0, Lo/OtpSMSBroadcastReceiver$1;->ICustomTabsCallback:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/OtpSMSBroadcastReceiver$1;->ICustomTabsCallback:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
