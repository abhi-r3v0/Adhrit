.class public Lo/setTotalAmount;
.super Lo/onAudioInfoChanged;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/content/DialogInterface$OnCancelListener;

.field private onMessageChannelReady:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/onAudioInfoChanged;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo/setTotalAmount;->onMessageChannelReady:Landroid/app/Dialog;

    .line 3
    iput-object v0, p0, Lo/setTotalAmount;->ICustomTabsCallback:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static extraCallback(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lo/setTotalAmount;
    .locals 2

    .line 11
    new-instance v0, Lo/setTotalAmount;

    invoke-direct {v0}, Lo/setTotalAmount;-><init>()V

    if-eqz p0, :cond_1

    .line 12
    check-cast p0, Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    iput-object p0, v0, Lo/setTotalAmount;->onMessageChannelReady:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 17
    iput-object p1, v0, Lo/setTotalAmount;->ICustomTabsCallback:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-object v0

    .line 1011
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot display null dialog"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 4
    iget-object p1, p0, Lo/setTotalAmount;->onMessageChannelReady:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lo/onAudioInfoChanged;->onPostMessage(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lo/setTotalAmount;->onMessageChannelReady:Landroid/app/Dialog;

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lo/setTotalAmount;->ICustomTabsCallback:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void
.end method
