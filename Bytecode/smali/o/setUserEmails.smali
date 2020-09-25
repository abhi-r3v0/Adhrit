.class public final Lo/setUserEmails;
.super Lo/setUserVisibleHint$onPostMessage;
.source ""

# interfaces
.implements Lo/AFLogger;


# instance fields
.field private final ICustomTabsCallback:Lo/registerConversionListener;

.field private final onMessageChannelReady:Lo/AFLogger;


# direct methods
.method public constructor <init>(Lo/registerConversionListener;Lo/AFLogger;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lo/setUserVisibleHint$onPostMessage;-><init>(Lo/registerConversionListener;Lo/unregisterConversionListener;)V

    .line 22
    iput-object p1, p0, Lo/setUserEmails;->ICustomTabsCallback:Lo/registerConversionListener;

    .line 23
    iput-object p2, p0, Lo/setUserEmails;->onMessageChannelReady:Lo/AFLogger;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setPreinstallAttribution;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lo/setUserEmails;->ICustomTabsCallback:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/registerConversionListener;->extraCallback(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lo/setUserEmails;->onMessageChannelReady:Lo/AFLogger;

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v0, p1}, Lo/AFLogger;->ICustomTabsCallback(Lo/setPreinstallAttribution;)V

    :cond_1
    return-void
.end method

.method public final extraCallback(Lo/setPreinstallAttribution;)V
    .locals 5

    .line 28
    iget-object v0, p0, Lo/setUserEmails;->ICustomTabsCallback:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    .line 31
    invoke-interface {p1}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onRelationshipValidationResult()Z

    move-result v4

    .line 29
    invoke-interface {v0, v1, v2, v3, v4}, Lo/registerConversionListener;->ICustomTabsCallback(Lo/getHostPrefix;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 35
    :cond_0
    iget-object v0, p0, Lo/setUserEmails;->onMessageChannelReady:Lo/AFLogger;

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0, p1}, Lo/AFLogger;->extraCallback(Lo/setPreinstallAttribution;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Lo/setPreinstallAttribution;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lo/setUserEmails;->ICustomTabsCallback:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lo/setPreinstallAttribution;->onRelationshipValidationResult()Z

    move-result v3

    .line 43
    invoke-interface {v0, v1, v2, v3}, Lo/registerConversionListener;->onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Z)V

    .line 46
    :cond_0
    iget-object v0, p0, Lo/setUserEmails;->onMessageChannelReady:Lo/AFLogger;

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0, p1}, Lo/AFLogger;->onNavigationEvent(Lo/setPreinstallAttribution;)V

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/Throwable;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lo/setUserEmails;->ICustomTabsCallback:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    .line 56
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onRelationshipValidationResult()Z

    move-result v3

    .line 54
    invoke-interface {v0, v1, v2, p2, v3}, Lo/registerConversionListener;->onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 60
    :cond_0
    iget-object v0, p0, Lo/setUserEmails;->onMessageChannelReady:Lo/AFLogger;

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0, p1, p2}, Lo/AFLogger;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
