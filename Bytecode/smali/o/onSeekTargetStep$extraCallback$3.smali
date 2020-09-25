.class final Lo/onSeekTargetStep$extraCallback$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSeekTargetStep$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onSeekTargetStep$extraCallback;


# direct methods
.method constructor <init>(Lo/onSeekTargetStep$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 11

    .line 1066
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 2029
    iget-object v0, v0, Lo/onSeekTargetStep;->onNavigationEvent:Lo/recycleViewsFromEnd$onNavigationEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2297
    iget-object v0, v0, Lo/recycleViewsFromEnd$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "discover_farm"

    .line 1066
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1067
    iget-object v2, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v2, v2, Lo/onSeekTargetStep$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 3025
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz v2, :cond_1

    .line 3061
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 1067
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x621270c9

    const-string v5, "LIFESTYLE_PRIMARY_FARM_TAG"

    const-string v6, "lifestyle"

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v3, v4, :cond_6

    const v1, 0x2fd836

    if-eq v3, v1, :cond_4

    const v0, 0x258156e6

    if-eq v3, v0, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v0, "deeplink"

    .line 1088
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1089
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 14027
    iget-object v0, v0, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    .line 1089
    invoke-static {v0, v6, v8, v9, v7}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1090
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    iget-object v1, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v1, v1, Lo/onSeekTargetStep$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 15025
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 15065
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 1090
    invoke-virtual {v0, v1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v1, "farm"

    .line 1068
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_5

    .line 1070
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 4027
    iget-object v0, v0, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    .line 1070
    invoke-static {v0, v6, v8, v9, v7}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1071
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 5027
    iget-object v1, v0, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1071
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 6000
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/removeItemDecoration;

    const/4 v6, 0x0

    const/16 v7, 0x13

    const-string v5, "mosaic"

    .line 1071
    invoke-static/range {v1 .. v7}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lo/getStackFromEnd;Lo/removeItemDecoration;Ljava/lang/String;ZI)V

    goto/16 :goto_3

    .line 1073
    :cond_5
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 6027
    iget-object v0, v0, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    .line 1073
    invoke-static {v0, v5, v8, v9, v7}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1074
    sget-object v0, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    iget-object v1, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v1, v1, Lo/onSeekTargetStep$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 7000
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/removeItemDecoration;

    const-string v2, "mosaic category"

    const-string/jumbo v3, "source"

    .line 1074
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7022
    new-instance v3, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    invoke-direct {v3, v1, v2}, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;-><init>(Lo/removeItemDecoration;Ljava/lang/String;)V

    check-cast v3, Lo/setRemoveDuration;

    .line 8010
    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    const-string v3, "farm_with_machine"

    .line 1077
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v2, v2, Lo/onSeekTargetStep$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 8025
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 8065
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1078
    iget-object v3, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v3, v3, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 9027
    iget-object v3, v3, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    .line 9111
    iget-object v4, v3, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    if-nez v4, :cond_7

    .line 9112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v3, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    :cond_7
    if-eqz v0, :cond_8

    .line 1080
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 10027
    iget-object v0, v0, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    .line 1080
    invoke-static {v0, v6, v8, v9, v7}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1081
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 11027
    iget-object v4, v0, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1081
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 12000
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lo/removeItemDecoration;

    const/4 v9, 0x0

    const/16 v10, 0x13

    const-string v8, "mosaic"

    .line 1081
    invoke-static/range {v4 .. v10}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lo/getStackFromEnd;Lo/removeItemDecoration;Ljava/lang/String;ZI)V

    goto :goto_2

    .line 1083
    :cond_8
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->ICustomTabsCallback:Lo/onSeekTargetStep;

    .line 12027
    iget-object v0, v0, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    const/4 v4, 0x6

    .line 1083
    invoke-static {v0, v5, v9, v9, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1085
    :goto_2
    iget-object v0, p0, Lo/onSeekTargetStep$extraCallback$3;->onPostMessage:Lo/onSeekTargetStep$extraCallback;

    iget-object v0, v0, Lo/onSeekTargetStep$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 13000
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeItemDecoration;

    const-string v4, "mosaic"

    .line 1085
    invoke-virtual {v3, v2, v0, v4}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Lo/removeItemDecoration;Ljava/lang/String;)V

    .line 13117
    iget-object v0, v3, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 13118
    iput-object v1, v3, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    .line 13119
    new-instance v1, Lo/getRemoveDuration$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/getRemoveDuration$onMessageChannelReady;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v3, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 25
    :cond_9
    :goto_3
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
