.class final Lo/createView$5;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createView;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lclub/cred/interjection/data/models/Campaign;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `campaigns` (`id`,`expiry_time`,`start_time`,`starting_events`,`total_fire_count`,`priority`,`data`) VALUES (?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 4

    .line 35
    check-cast p2, Lclub/cred/interjection/data/models/Campaign;

    .line 2064
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1044
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 3064
    :cond_0
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->onMessageChannelReady:Ljava/lang/String;

    .line 1046
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 3067
    :goto_0
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->ICustomTabsCallback:Ljava/lang/Long;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1049
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 4067
    :cond_1
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->ICustomTabsCallback:Ljava/lang/Long;

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 4070
    :goto_1
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->extraCallback:Ljava/lang/Long;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 1054
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_2

    .line 5070
    :cond_2
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->extraCallback:Ljava/lang/Long;

    .line 1056
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 5072
    :goto_2
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->onPostMessage:Ljava/util/List;

    .line 1059
    invoke-static {v0}, Lo/onNightModeChanged;->ICustomTabsCallback(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 1061
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_3

    .line 1063
    :cond_3
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x5

    .line 5075
    iget v1, p2, Lclub/cred/interjection/data/models/Campaign;->onNavigationEvent:I

    int-to-long v1, v1

    .line 1065
    invoke-interface {p1, v0, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 5078
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->asInterface:Ljava/lang/Integer;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 1067
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_4

    .line 6078
    :cond_4
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->asInterface:Ljava/lang/Integer;

    .line 1069
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 6081
    :goto_4
    iget-object p2, p2, Lclub/cred/interjection/data/models/Campaign;->asBinder:Lclub/cred/interjection/data/models/DataCampaign;

    .line 1072
    invoke-static {p2}, Lo/onNightModeChanged;->extraCallback(Lclub/cred/interjection/data/models/DataCampaign;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x7

    if-nez p2, :cond_5

    .line 1074
    invoke-interface {p1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    .line 1076
    :cond_5
    invoke-interface {p1, v0, p2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    return-void
.end method
