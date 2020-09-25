.class final Lo/getActionList$5;
.super Lo/onRemoveQueueItem;
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
        "Lo/onRemoveQueueItem<",
        "Lo/sendAccessibilityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lo/onRemoveQueueItem;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `request` SET `id` = ?,`request_id` = ?,`url` = ?,`method` = ?,`data` = ?,`status` = ?,`is_immediate` = ?,`created_at` = ?,`is_compressed` = ? WHERE `id` = ?"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 4

    .line 106
    check-cast p2, Lo/sendAccessibilityEvent;

    .line 2011
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1115
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 3011
    :cond_0
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3013
    :goto_0
    iget-object v0, p2, Lo/sendAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1120
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 4013
    :cond_1
    iget-object v0, p2, Lo/sendAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 1122
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 4015
    :goto_1
    iget-object v0, p2, Lo/sendAccessibilityEvent;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 1125
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_2

    .line 5015
    :cond_2
    iget-object v0, p2, Lo/sendAccessibilityEvent;->extraCallback:Ljava/lang/String;

    .line 1127
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 5017
    :goto_2
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 1130
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_3

    .line 6017
    :cond_3
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onPostMessage:Ljava/lang/String;

    .line 1132
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 6019
    :goto_3
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 1135
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_4

    .line 7019
    :cond_4
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1137
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 7021
    :goto_4
    iget-object v0, p2, Lo/sendAccessibilityEvent;->asBinder:Ljava/lang/Integer;

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 1140
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_5

    .line 8021
    :cond_5
    iget-object v0, p2, Lo/sendAccessibilityEvent;->asBinder:Ljava/lang/Integer;

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 8023
    :goto_5
    iget-object v0, p2, Lo/sendAccessibilityEvent;->asInterface:Ljava/lang/Integer;

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 1145
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_6

    .line 9023
    :cond_6
    iget-object v0, p2, Lo/sendAccessibilityEvent;->asInterface:Ljava/lang/Integer;

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 9025
    :goto_6
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onRelationshipValidationResult:Ljava/lang/Long;

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 1150
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_7

    .line 10025
    :cond_7
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onRelationshipValidationResult:Ljava/lang/Long;

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 10027
    :goto_7
    iget-object v0, p2, Lo/sendAccessibilityEvent;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 1155
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_8

    .line 11027
    :cond_8
    iget-object v0, p2, Lo/sendAccessibilityEvent;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 1157
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 12011
    :goto_8
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    const/16 v1, 0xa

    if-nez v0, :cond_9

    .line 1160
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    .line 13011
    :cond_9
    iget-object p2, p2, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    .line 1162
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    return-void
.end method
