.class public final Lo/getCurrency;
.super Landroid/app/DialogFragment;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/app/Dialog;

.field private onPostMessage:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo/getCurrency;->ICustomTabsCallback:Landroid/app/Dialog;

    .line 3
    iput-object v0, p0, Lo/getCurrency;->onPostMessage:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static onNavigationEvent(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lo/getCurrency;
    .locals 2

    .line 11
    new-instance v0, Lo/getCurrency;

    invoke-direct {v0}, Lo/getCurrency;-><init>()V

    if-eqz p0, :cond_1

    .line 12
    check-cast p0, Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    iput-object p0, v0, Lo/getCurrency;->ICustomTabsCallback:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 17
    iput-object p1, v0, Lo/getCurrency;->onPostMessage:Landroid/content/DialogInterface$OnCancelListener;

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
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lo/getCurrency;->onPostMessage:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 4
    iget-object p1, p0, Lo/getCurrency;->ICustomTabsCallback:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lo/getCurrency;->setShowsDialog(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lo/getCurrency;->ICustomTabsCallback:Landroid/app/Dialog;

    return-object p1
.end method

.method public final show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
