.class final Lo/getStateLabel$1;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateLabel;->onPostMessage(Lo/extraCallback$ICustomTabsCallback;)Lo/extraCallback$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/os/Handler;

.field final synthetic onMessageChannelReady:Lo/extraCallback$ICustomTabsCallback;

.field final synthetic onPostMessage:Lo/getStateLabel;


# direct methods
.method constructor <init>(Lo/getStateLabel;Lo/extraCallback$ICustomTabsCallback;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lo/getStateLabel$1;->onPostMessage:Lo/getStateLabel;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/getStateLabel$1;->onMessageChannelReady:Lo/extraCallback$ICustomTabsCallback;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    .line 192
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/getStateLabel$1;->ICustomTabsCallback:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lo/getStateLabel$1;->onMessageChannelReady:Lo/extraCallback$ICustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lo/getStateLabel$1;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v1, Lo/getStateLabel$1$2;

    invoke-direct {v1, p0, p1, p2}, Lo/getStateLabel$1$2;-><init>(Lo/getStateLabel$1;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lo/getStateLabel$1;->onMessageChannelReady:Lo/extraCallback$ICustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lo/getStateLabel$1;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v1, Lo/getStateLabel$1$3;

    invoke-direct {v1, p0, p1}, Lo/getStateLabel$1$3;-><init>(Lo/getStateLabel$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lo/getStateLabel$1;->onMessageChannelReady:Lo/extraCallback$ICustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lo/getStateLabel$1;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v1, Lo/getStateLabel$1$1;

    invoke-direct {v1, p0, p1, p2}, Lo/getStateLabel$1$1;-><init>(Lo/getStateLabel$1;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lo/getStateLabel$1;->onMessageChannelReady:Lo/extraCallback$ICustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lo/getStateLabel$1;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v1, Lo/getStateLabel$1$4;

    invoke-direct {v1, p0, p1, p2}, Lo/getStateLabel$1$4;-><init>(Lo/getStateLabel$1;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lo/getStateLabel$1;->onMessageChannelReady:Lo/extraCallback$ICustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lo/getStateLabel$1;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v7, Lo/getStateLabel$1$5;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/getStateLabel$1$5;-><init>(Lo/getStateLabel$1;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
