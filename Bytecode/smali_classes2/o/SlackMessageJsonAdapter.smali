.class final Lo/SlackMessageJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

.field final synthetic onNavigationEvent:Lo/FragmentViewBindingDelegate$1;


# direct methods
.method constructor <init>(Lo/FragmentViewBindingDelegate$1;Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lo/SlackMessageJsonAdapter;->ICustomTabsCallback:Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 5
    iget-object v0, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    iget-boolean v0, v0, Lo/FragmentViewBindingDelegate$1;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lo/SlackMessageJsonAdapter;->ICustomTabsCallback:Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->ICustomTabsCallback()Lo/setReferenceId;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lo/setReferenceId;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    iget-object v1, v1, Lo/FragmentViewBindingDelegate$1;->mLifecycleFragment:Lo/Transaction;

    iget-object v2, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    .line 10
    invoke-virtual {v2}, Lo/FragmentViewBindingDelegate$1;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lo/setReferenceId;->onMessageChannelReady()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lo/SlackMessageJsonAdapter;->ICustomTabsCallback:Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    .line 12
    invoke-virtual {v3}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->extraCallback()I

    move-result v3

    const/4 v4, 0x0

    .line 13
    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->onPostMessage(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    .line 14
    invoke-interface {v1, v0, v2}, Lo/Transaction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    iget-object v1, v1, Lo/FragmentViewBindingDelegate$1;->extraCallback:Lo/getMinAmount;

    invoke-virtual {v0}, Lo/setReferenceId;->extraCallback()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/getMinAmount;->onMessageChannelReady(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    iget-object v2, v1, Lo/FragmentViewBindingDelegate$1;->extraCallback:Lo/getMinAmount;

    iget-object v1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    .line 17
    invoke-virtual {v1}, Lo/FragmentViewBindingDelegate$1;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    iget-object v4, v1, Lo/FragmentViewBindingDelegate$1;->mLifecycleFragment:Lo/Transaction;

    .line 18
    invoke-virtual {v0}, Lo/setReferenceId;->extraCallback()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    .line 19
    invoke-virtual/range {v2 .. v7}, Lo/getMinAmount;->onMessageChannelReady(Landroid/app/Activity;Lo/Transaction;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    .line 20
    :cond_2
    invoke-virtual {v0}, Lo/setReferenceId;->extraCallback()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 21
    iget-object v0, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    .line 22
    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    invoke-static {v0, v1}, Lo/getMinAmount;->onMessageChannelReady(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    iget-object v1, v1, Lo/FragmentViewBindingDelegate$1;->extraCallback:Lo/getMinAmount;

    iget-object v2, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    .line 24
    invoke-virtual {v2}, Lo/FragmentViewBindingDelegate$1;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lo/OtpSMSBroadcastReceiver$1;

    invoke-direct {v3, p0, v0}, Lo/OtpSMSBroadcastReceiver$1;-><init>(Lo/SlackMessageJsonAdapter;Landroid/app/Dialog;)V

    .line 25
    invoke-virtual {v1, v2, v3}, Lo/getMinAmount;->onNavigationEvent(Landroid/content/Context;Lo/getFirstName;)Lo/ProfileResponse;

    return-void

    .line 27
    :cond_3
    iget-object v1, p0, Lo/SlackMessageJsonAdapter;->onNavigationEvent:Lo/FragmentViewBindingDelegate$1;

    iget-object v2, p0, Lo/SlackMessageJsonAdapter;->ICustomTabsCallback:Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    invoke-virtual {v2}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->extraCallback()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady(Lo/setReferenceId;I)V

    return-void
.end method
