.class public final Lo/LifecycleController$observer$1$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LifecycleController$observer$1;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/onActivityStopped;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferralLinkData;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onMessageChannelReady:Lo/LifecycleController$observer$1;


# direct methods
.method constructor <init>(Lo/LifecycleController$observer$1;)V
    .locals 0

    iput-object p1, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 30
    check-cast p1, Lo/onActivityStopped;

    if-eqz p1, :cond_3

    .line 1160
    sget-object v0, Lo/onActivitySaveInstanceState$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/onActivitySaveInstanceState$ICustomTabsCallback;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1160
    :goto_0
    check-cast v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;

    if-eqz v0, :cond_2

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2021
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onNavigationEvent:Ljava/lang/String;

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    iget-object v2, p1, Lo/onActivityStopped;->onNavigationEvent:Ljava/lang/String;

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&link="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    iget-object v2, p1, Lo/onActivityStopped;->onMessageChannelReady:Ljava/lang/String;

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    iget-object v2, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3023
    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->ICustomTabsCallback:Ljava/lang/String;

    .line 1163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4023
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->ICustomTabsCallback:Ljava/lang/String;

    .line 4110
    iget-object p1, p1, Lo/onActivityStopped;->extraCallback:Ljava/lang/String;

    .line 1162
    invoke-static {v2, v1, v3, v0, p1}, Lo/extraCallback;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    const/4 v1, 0x0

    .line 5043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v4, "status"

    const-string/jumbo v5, "success"

    invoke-direct {v2, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 1170
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6043
    new-instance v2, Lo/addWrite;

    const-string v4, "is_resend"

    invoke-direct {v2, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    const-string v1, "pairs"

    .line 1168
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "greeting_send_result"

    .line 1168
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1173
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    new-instance v3, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;

    invoke-direct {v3, p0}, Lo/LifecycleController$observer$1$getInterfaceDescriptor$onMessageChannelReady;-><init>(Lo/LifecycleController$observer$1$getInterfaceDescriptor;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    :cond_2
    return-void

    .line 1184
    :cond_3
    iget-object p1, p0, Lo/LifecycleController$observer$1$getInterfaceDescriptor;->onMessageChannelReady:Lo/LifecycleController$observer$1;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {p1, v0}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    const-string v0, "loader"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
