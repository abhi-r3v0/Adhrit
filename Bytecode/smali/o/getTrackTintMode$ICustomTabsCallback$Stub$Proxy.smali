.class final Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTrackTintMode;->extraCallback(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Z

.field private synthetic extraCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->extraCallback:Ljava/lang/String;

    iput-boolean p2, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 201
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    iget-object v1, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lo/getParentFragment;->onPostMessage:Lo/getParentFragment;

    iget-object v0, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->extraCallback:Ljava/lang/String;

    invoke-static {v0}, Lo/getParentFragment;->onNavigationEvent(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "distinctid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v1}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v1

    .line 1926
    iget-object v1, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v1}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    const-string v2, "MIXPANEL"

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    invoke-static {v2, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    iget-object v4, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->extraCallback:Ljava/lang/String;

    sget-object v5, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v5}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v5

    .line 2926
    iget-object v5, v5, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v5}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {v0, v4, v5}, Lo/Settings;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    sget-object v4, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v4}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v4

    .line 3926
    iget-object v4, v4, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v4}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v4

    .line 4724
    invoke-virtual {v0, v4, v3}, Lo/Settings;->onMessageChannelReady(Ljava/lang/String;Z)V

    .line 211
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    .line 5206
    iget-object v0, v0, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 211
    sget-object v3, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v3}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v3

    .line 5926
    iget-object v3, v3, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v3}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-interface {v0, v3}, Lo/Settings$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    iget-object v4, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->extraCallback:Ljava/lang/String;

    .line 6724
    invoke-virtual {v0, v4, v3}, Lo/Settings;->onMessageChannelReady(Ljava/lang/String;Z)V

    .line 214
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    .line 7206
    iget-object v0, v0, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 214
    iget-object v3, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->extraCallback:Ljava/lang/String;

    invoke-interface {v0, v3}, Lo/Settings$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 218
    :goto_0
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    .line 8206
    iget-object v0, v0, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 218
    iget-object v3, p0, Lo/getTrackTintMode$ICustomTabsCallback$Stub$Proxy;->extraCallback:Ljava/lang/String;

    const-string v4, "USER_ID"

    invoke-interface {v0, v4, v3}, Lo/Settings$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "reg id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v3}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v3

    .line 9206
    iget-object v3, v3, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    const-string v4, "mixpanel.people"

    .line 220
    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/Settings$onMessageChannelReady;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10065
    invoke-static {v2, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v3}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v3

    .line 10206
    iget-object v3, v3, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 221
    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/Settings$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11065
    invoke-static {v2, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    .line 12350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v2, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11894
    iget-object v1, v0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v2, Lo/buildInstanceIdentifierChanged$extraCallback;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v2, v0}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    .line 223
    :cond_1
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {}, Lo/getTrackTintMode;->onPostMessage()Lo/getCollapseIcon;

    move-result-object v0

    .line 14000
    iget-object v0, v0, Lo/getCollapseIcon;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onQueryTextChange;

    .line 13034
    invoke-static {v0}, Lo/getCollapseIcon;->onNavigationEvent(Lo/onQueryTextChange;)V

    return-void
.end method
