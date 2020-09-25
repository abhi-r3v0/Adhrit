.class final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;

.field private synthetic extraCallback:Lo/calculateDistanceToFinalSnap;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;Lo/calculateDistanceToFinalSnap;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->extraCallback:Lo/calculateDistanceToFinalSnap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 60
    check-cast p1, Lo/offsetChild$onMessageChannelReady;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->extraCallback:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 2016
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->ICustomTabsCallback:Ljava/lang/String;

    .line 2117
    iput-object v0, p1, Lo/offsetChild$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 1196
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->extraCallback:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 3017
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->onPostMessage:Ljava/lang/String;

    .line 3118
    iput-object v0, p1, Lo/offsetChild$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 1197
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->extraCallback:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 4023
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->extraCallback:Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 4046
    iget-object v3, v0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 4047
    iget-object v3, v0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 1200
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;

    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

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

    .line 1202
    :cond_3
    new-instance v4, Lo/offsetChild$extraCallback;

    new-instance v5, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent$4;

    invoke-direct {v5, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent$4;-><init>(Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;)V

    check-cast v5, Lo/getServerTime;

    invoke-direct {v4, v3, v5}, Lo/offsetChild$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 4119
    iput-object v4, p1, Lo/offsetChild$onMessageChannelReady;->onPostMessage:Lo/offsetChild$extraCallback;

    .line 1206
    :cond_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->extraCallback:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 5024
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->onNavigationEvent:Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

    if-eqz v0, :cond_9

    .line 5046
    iget-object v3, v0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 5047
    iget-object v3, v0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 1209
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;

    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

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

    .line 1211
    :goto_2
    new-instance v1, Lo/offsetChild$extraCallback;

    new-instance v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent$5;

    invoke-direct {v3, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent$5;-><init>(Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;)V

    check-cast v3, Lo/getServerTime;

    invoke-direct {v1, v2, v3}, Lo/offsetChild$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 5120
    iput-object v1, p1, Lo/offsetChild$onMessageChannelReady;->extraCallback:Lo/offsetChild$extraCallback;

    .line 1215
    :cond_9
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->extraCallback:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 6020
    iget v0, v0, Lo/getDecoratedMeasurementInOther;->onMessageChannelReady:I

    .line 6123
    iput v0, p1, Lo/offsetChild$onMessageChannelReady;->asInterface:I

    .line 1216
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;->extraCallback:Lo/calculateDistanceToFinalSnap;

    check-cast v0, Lo/getDecoratedMeasurementInOther;

    .line 7021
    iget-object v0, v0, Lo/getDecoratedMeasurementInOther;->onRelationshipValidationResult:Ljava/lang/String;

    .line 7124
    iput-object v0, p1, Lo/offsetChild$onMessageChannelReady;->asBinder:Ljava/lang/String;

    .line 60
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
