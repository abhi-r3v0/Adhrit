.class final Lo/getOutOfStore$onPostMessage$1;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getOutOfStore$onPostMessage;-><init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getOutOfStore$onPostMessage;

.field private synthetic extraCallback:Z


# direct methods
.method constructor <init>(Lo/getOutOfStore$onPostMessage;Z)V
    .locals 0

    .line 200
    iput-object p1, p0, Lo/getOutOfStore$onPostMessage$1;->ICustomTabsCallback:Lo/getOutOfStore$onPostMessage;

    iput-boolean p2, p0, Lo/getOutOfStore$onPostMessage$1;->extraCallback:Z

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lo/getOutOfStore$onPostMessage$1;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage$1;->ICustomTabsCallback:Lo/getOutOfStore$onPostMessage;

    const/4 v1, 0x1

    .line 3499
    invoke-virtual {v0, v1}, Lo/getOutOfStore$onPostMessage;->onPostMessage(Z)V

    .line 4020
    iget-object v0, v0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 3500
    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 203
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage$1;->ICustomTabsCallback:Lo/getOutOfStore$onPostMessage;

    .line 1143
    iget-object v0, v0, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 203
    invoke-interface {v0}, Lo/setPreinstallAttribution;->asBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage$1;->ICustomTabsCallback:Lo/getOutOfStore$onPostMessage;

    .line 2143
    iget-object v0, v0, Lo/getOutOfStore$onPostMessage;->onPostMessage:Lo/startTracking;

    .line 204
    invoke-virtual {v0}, Lo/startTracking;->extraCallback()Z

    :cond_0
    return-void
.end method
