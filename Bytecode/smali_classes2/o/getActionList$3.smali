.class final Lo/getActionList$3;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getActionList;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lo/sendAccessibilityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `request` (`id`,`request_id`,`url`,`method`,`data`,`status`,`is_immediate`,`created_at`,`is_compressed`) VALUES (?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 4

    .line 36
    check-cast p2, Lo/sendAccessibilityEvent;

    .line 2011
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1045
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 3011
    :cond_0
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3013
    :goto_0
    iget-object v0, p2, Lo/sendAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1050
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 4013
    :cond_1
    iget-object v0, p2, Lo/sendAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 1052
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 4015
    :goto_1
    iget-object v0, p2, Lo/sendAccessibilityEvent;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 1055
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_2

    .line 5015
    :cond_2
    iget-object v0, p2, Lo/sendAccessibilityEvent;->extraCallback:Ljava/lang/String;

    .line 1057
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 5017
    :goto_2
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 1060
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_3

    .line 6017
    :cond_3
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onPostMessage:Ljava/lang/String;

    .line 1062
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 6019
    :goto_3
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 1065
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_4

    .line 7019
    :cond_4
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1067
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 7021
    :goto_4
    iget-object v0, p2, Lo/sendAccessibilityEvent;->asBinder:Ljava/lang/Integer;

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 1070
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_5

    .line 8021
    :cond_5
    iget-object v0, p2, Lo/sendAccessibilityEvent;->asBinder:Ljava/lang/Integer;

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 8023
    :goto_5
    iget-object v0, p2, Lo/sendAccessibilityEvent;->asInterface:Ljava/lang/Integer;

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 1075
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_6

    .line 9023
    :cond_6
    iget-object v0, p2, Lo/sendAccessibilityEvent;->asInterface:Ljava/lang/Integer;

    .line 1077
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 9025
    :goto_6
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onRelationshipValidationResult:Ljava/lang/Long;

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 1080
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_7

    .line 10025
    :cond_7
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onRelationshipValidationResult:Ljava/lang/Long;

    .line 1082
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 10027
    :goto_7
    iget-object v0, p2, Lo/sendAccessibilityEvent;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 1085
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    .line 11027
    :cond_8
    iget-object p2, p2, Lo/sendAccessibilityEvent;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 1087
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    return-void
.end method
