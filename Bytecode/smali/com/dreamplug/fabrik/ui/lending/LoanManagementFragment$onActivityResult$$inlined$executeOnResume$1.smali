.class public final Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/scrollVerticallyBy;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic extraCallback:Lo/scrollVerticallyBy;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/scrollVerticallyBy;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/content/Intent;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 9

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x6e8d8031

    if-eq v0, v1, :cond_4

    const v1, 0x341314

    if-eq v0, v1, :cond_3

    const v1, 0x67622a8

    if-eq v0, v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "retry"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 64
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {p1}, Lo/scrollVerticallyBy;->onMessageChannelReady(Lo/scrollVerticallyBy;)Lo/ensureAnchorIsInCorrectSpan;

    move-result-object p1

    .line 1030
    iget-object p1, p1, Lo/ensureAnchorIsInCorrectSpan;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    if-eqz p1, :cond_6

    .line 2024
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p1, :cond_6

    .line 65
    sget-object v0, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Lo/getMovementFlags$onMessageChannelReady;

    invoke-direct {v1, p1}, Lo/getMovementFlags$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V

    invoke-static {v0, v1}, Lo/getMovementFlags;->onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getMovementFlags$onMessageChannelReady;)V

    goto :goto_1

    :cond_3
    const-string v0, "okay"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 69
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {p1}, Lo/scrollVerticallyBy;->onMessageChannelReady(Lo/scrollVerticallyBy;)Lo/ensureAnchorIsInCorrectSpan;

    move-result-object p1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v0}, Lo/scrollVerticallyBy;->ICustomTabsCallback(Lo/scrollVerticallyBy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v1}, Lo/scrollVerticallyBy;->onPostMessage(Lo/scrollVerticallyBy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/ensureAnchorIsInCorrectSpan;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "support"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 72
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {p1}, Lo/scrollVerticallyBy;->onMessageChannelReady(Lo/scrollVerticallyBy;)Lo/ensureAnchorIsInCorrectSpan;

    move-result-object p1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v0}, Lo/scrollVerticallyBy;->ICustomTabsCallback(Lo/scrollVerticallyBy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v1}, Lo/scrollVerticallyBy;->onPostMessage(Lo/scrollVerticallyBy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/ensureAnchorIsInCorrectSpan;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Lo/scrollVerticallyBy;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    const v3, 0x7f1304ef

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v3, "support/articles/43000566210"

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f5

    const-string/jumbo v1, "web"

    invoke-static/range {v0 .. v8}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 27
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
