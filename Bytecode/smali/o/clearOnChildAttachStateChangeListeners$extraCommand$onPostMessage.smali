.class final Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearOnChildAttachStateChangeListeners$extraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/offsetChild$onMessageChannelReady;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/details/GameGenericBottomSheet$UIState;",
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
.field private synthetic onNavigationEvent:Lo/calculateDistanceToFinalSnap;

.field private synthetic onPostMessage:Lo/clearOnChildAttachStateChangeListeners$extraCommand;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners$extraCommand;Lo/calculateDistanceToFinalSnap;)V
    .locals 0

    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners$extraCommand;

    iput-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 53
    check-cast p1, Lo/offsetChild$onMessageChannelReady;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners$extraCommand;

    iget-object v0, v0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v0}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object v0

    invoke-virtual {v0}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v0

    .line 1280
    iget-object v1, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    check-cast v1, Lo/getDecoratedMeasurementInOther;

    .line 2016
    iget-object v1, v1, Lo/getDecoratedMeasurementInOther;->ICustomTabsCallback:Ljava/lang/String;

    const-string/jumbo v2, "title"

    .line 1280
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    iget-object v1, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    check-cast v1, Lo/getDecoratedMeasurementInOther;

    .line 2017
    iget-object v1, v1, Lo/getDecoratedMeasurementInOther;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v2, "subtitle"

    .line 1281
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "leaderboard_winner_status_shown"

    .line 1279
    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1284
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 3016
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->ICustomTabsCallback:Ljava/lang/String;

    .line 3117
    iput-object v0, p1, Lo/offsetChild$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 1285
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 4017
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->onPostMessage:Ljava/lang/String;

    .line 4118
    iput-object v0, p1, Lo/offsetChild$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 1286
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 5023
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->extraCallback:Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 5046
    iget-object v3, v0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 5047
    iget-object v3, v0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 1289
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners$extraCommand;

    iget-object v4, v4, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    move-object v3, v2

    .line 1291
    :cond_3
    new-instance v4, Lo/offsetChild$extraCallback;

    new-instance v5, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage$5;

    invoke-direct {v5, v0}, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage$5;-><init>(Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;)V

    check-cast v5, Lo/getServerTime;

    invoke-direct {v4, v3, v5}, Lo/offsetChild$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 5119
    iput-object v4, p1, Lo/offsetChild$onMessageChannelReady;->onPostMessage:Lo/offsetChild$extraCallback;

    .line 1295
    :cond_4
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 6024
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->onNavigationEvent:Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

    if-eqz v0, :cond_9

    .line 6046
    iget-object v3, v0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 6047
    iget-object v3, v0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 1298
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners$extraCommand;

    iget-object v3, v3, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v3

    :cond_7
    :goto_1
    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, v1

    .line 1300
    :goto_2
    new-instance v1, Lo/offsetChild$extraCallback;

    new-instance v3, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage$3;

    invoke-direct {v3, v0}, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage$3;-><init>(Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;)V

    check-cast v3, Lo/getServerTime;

    invoke-direct {v1, v2, v3}, Lo/offsetChild$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 6120
    iput-object v1, p1, Lo/offsetChild$onMessageChannelReady;->extraCallback:Lo/offsetChild$extraCallback;

    .line 1304
    :cond_9
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 7020
    iget v0, v0, Lo/getDecoratedMeasurementInOther;->onMessageChannelReady:I

    .line 7123
    iput v0, p1, Lo/offsetChild$onMessageChannelReady;->asInterface:I

    .line 1305
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;->onNavigationEvent:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 8021
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->onRelationshipValidationResult:Ljava/lang/String;

    .line 8124
    iput-object v0, p1, Lo/offsetChild$onMessageChannelReady;->asBinder:Ljava/lang/String;

    .line 53
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
