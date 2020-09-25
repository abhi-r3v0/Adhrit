.class final Lo/reset$1;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/reset;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lo/setFillViewport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `ContactEntity` (`id`,`phone_number`,`first_name`,`last_name`,`client_contact_id`,`user_contact_id`,`display_order`,`is_cred_user`,`is_deleted`,`is_synced_to_server`,`last_modified`,`is_suggested`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 4

    .line 33
    check-cast p2, Lo/setFillViewport;

    .line 2014
    iget-object v0, p2, Lo/setFillViewport;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1042
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 3014
    :cond_0
    iget-object v0, p2, Lo/setFillViewport;->onNavigationEvent:Ljava/lang/String;

    .line 1044
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 3016
    :goto_0
    iget-object v0, p2, Lo/setFillViewport;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1047
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 4016
    :cond_1
    iget-object v0, p2, Lo/setFillViewport;->onMessageChannelReady:Ljava/lang/String;

    .line 1049
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 4018
    :goto_1
    iget-object v0, p2, Lo/setFillViewport;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 1052
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_2

    .line 5018
    :cond_2
    iget-object v0, p2, Lo/setFillViewport;->onPostMessage:Ljava/lang/String;

    .line 1054
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 5020
    :goto_2
    iget-object v0, p2, Lo/setFillViewport;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 1057
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_3

    .line 6020
    :cond_3
    iget-object v0, p2, Lo/setFillViewport;->extraCallback:Ljava/lang/String;

    .line 1059
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 6022
    :goto_3
    iget-object v0, p2, Lo/setFillViewport;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 1062
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_4

    .line 7022
    :cond_4
    iget-object v0, p2, Lo/setFillViewport;->ICustomTabsCallback:Ljava/lang/String;

    .line 1064
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 7024
    :goto_4
    iget-object v0, p2, Lo/setFillViewport;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 1067
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_5

    .line 8024
    :cond_5
    iget-object v0, p2, Lo/setFillViewport;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1069
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 8026
    :goto_5
    iget-object v0, p2, Lo/setFillViewport;->onTransact:Ljava/lang/Integer;

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 1072
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_6

    .line 9026
    :cond_6
    iget-object v0, p2, Lo/setFillViewport;->onTransact:Ljava/lang/Integer;

    .line 1074
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 9028
    :goto_6
    iget-boolean v0, p2, Lo/setFillViewport;->asBinder:Z

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 1078
    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 9030
    iget-boolean v0, p2, Lo/setFillViewport;->asInterface:Z

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 1081
    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 9032
    iget-boolean v0, p2, Lo/setFillViewport;->onRelationshipValidationResult:Z

    const/16 v1, 0xa

    int-to-long v2, v0

    .line 1084
    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/16 v0, 0xb

    .line 9034
    iget-wide v1, p2, Lo/setFillViewport;->ICustomTabsCallback$Stub$Proxy:J

    .line 1085
    invoke-interface {p1, v0, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 9036
    iget-object v0, p2, Lo/setFillViewport;->warmup:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    const/4 p2, 0x0

    goto :goto_7

    .line 10036
    :cond_7
    iget-object p2, p2, Lo/setFillViewport;->warmup:Ljava/lang/Boolean;

    .line 1087
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_7
    const/16 v0, 0xc

    if-nez p2, :cond_8

    .line 1089
    invoke-interface {p1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    .line 1091
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    return-void
.end method
