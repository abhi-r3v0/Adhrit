.class public final Lo/ensureLeftGlow$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureLeftGlow;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/String;",
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/referal/ReferViaWhatsappFragment$onViewCreated$1",
        "Landroidx/lifecycle/Observer;",
        "",
        "onChanged",
        "",
        "message",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ensureLeftGlow;


# direct methods
.method constructor <init>(Lo/ensureLeftGlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 55
    check-cast p1, Ljava/lang/String;

    .line 1057
    iget-object v0, p0, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-static {v0}, Lo/ensureLeftGlow;->onNavigationEvent(Lo/ensureLeftGlow;)Lo/setSpeed;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;

    invoke-direct {v2, p0, p1}, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;-><init>(Lo/ensureLeftGlow$onPostMessage;Ljava/lang/String;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x0

    .line 2045
    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method
