.class final Lo/setConsumeAFDeepLinks$onPostMessage$1;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setConsumeAFDeepLinks$onPostMessage;-><init>(Lo/setConsumeAFDeepLinks;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZLo/handleDeepLinkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/waitForCustomerUserId;

.field private synthetic onNavigationEvent:Lo/setConsumeAFDeepLinks$onPostMessage;


# direct methods
.method constructor <init>(Lo/setConsumeAFDeepLinks$onPostMessage;Lo/waitForCustomerUserId;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lo/setConsumeAFDeepLinks$onPostMessage$1;->onNavigationEvent:Lo/setConsumeAFDeepLinks$onPostMessage;

    iput-object p2, p0, Lo/setConsumeAFDeepLinks$onPostMessage$1;->ICustomTabsCallback:Lo/waitForCustomerUserId;

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 134
    iget-object v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage$1;->onNavigationEvent:Lo/setConsumeAFDeepLinks$onPostMessage;

    .line 3082
    iget-object v0, v0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback$Stub:Lo/startTracking;

    .line 134
    invoke-virtual {v0}, Lo/startTracking;->ICustomTabsCallback()V

    .line 135
    iget-object v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage$1;->onNavigationEvent:Lo/setConsumeAFDeepLinks$onPostMessage;

    const/4 v1, 0x1

    .line 4082
    iput-boolean v1, v0, Lo/setConsumeAFDeepLinks$onPostMessage;->extraCallback:Z

    .line 137
    iget-object v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage$1;->ICustomTabsCallback:Lo/waitForCustomerUserId;

    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage$1;->onNavigationEvent:Lo/setConsumeAFDeepLinks$onPostMessage;

    .line 1082
    iget-object v0, v0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 127
    invoke-interface {v0}, Lo/setPreinstallAttribution;->asBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lo/setConsumeAFDeepLinks$onPostMessage$1;->onNavigationEvent:Lo/setConsumeAFDeepLinks$onPostMessage;

    .line 2082
    iget-object v0, v0, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback$Stub:Lo/startTracking;

    .line 128
    invoke-virtual {v0}, Lo/startTracking;->extraCallback()Z

    :cond_0
    return-void
.end method
