.class final Lo/updateMeasurements$ICustomTabsCallback$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateMeasurements$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/onItemsChanged$onPostMessage;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "Lcom/dreamplug/fabrik/ui/lending/AmountChangedListener$STATE;",
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
.field private synthetic onMessageChannelReady:Lo/updateMeasurements$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/updateMeasurements$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/updateMeasurements$ICustomTabsCallback$3;->onMessageChannelReady:Lo/updateMeasurements$ICustomTabsCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 21
    check-cast p1, Lo/onItemsChanged$onPostMessage;

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    sget-object v0, Lo/onItemsChanged$onPostMessage;->onNavigationEvent:Lo/onItemsChanged$onPostMessage;

    if-eq p1, v0, :cond_2

    .line 1165
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    sget-object v0, Lo/onItemsChanged$onPostMessage;->ICustomTabsCallback:Lo/onItemsChanged$onPostMessage;

    if-ne p1, v0, :cond_0

    const-string v0, "SLIDER"

    goto :goto_0

    :cond_0
    const-string v0, "EDITTEXT"

    :goto_0
    const-string/jumbo v1, "selected"

    invoke-static {v1, v0}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lo/updateMeasurements$ICustomTabsCallback$3;->onMessageChannelReady:Lo/updateMeasurements$ICustomTabsCallback;

    iget-object v0, v0, Lo/updateMeasurements$ICustomTabsCallback;->onNavigationEvent:Lo/updateMeasurements;

    .line 2021
    iget-object v0, v0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 1166
    sget-object v1, Lo/onItemsChanged$onPostMessage;->ICustomTabsCallback:Lo/onItemsChanged$onPostMessage;

    if-ne p1, v1, :cond_1

    const-string p1, "dial"

    goto :goto_1

    :cond_1
    const-string p1, "edittext"

    :goto_1
    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2060
    iput-object p1, v0, Lo/getSpanIndex;->postMessage:Ljava/lang/String;

    .line 1167
    iget-object p1, p0, Lo/updateMeasurements$ICustomTabsCallback$3;->onMessageChannelReady:Lo/updateMeasurements$ICustomTabsCallback;

    iget-object p1, p1, Lo/updateMeasurements$ICustomTabsCallback;->onNavigationEvent:Lo/updateMeasurements;

    invoke-static {p1}, Lo/updateMeasurements;->extraCallback(Lo/updateMeasurements;)V

    .line 1169
    :cond_2
    iget-object p1, p0, Lo/updateMeasurements$ICustomTabsCallback$3;->onMessageChannelReady:Lo/updateMeasurements$ICustomTabsCallback;

    iget-object p1, p1, Lo/updateMeasurements$ICustomTabsCallback;->onNavigationEvent:Lo/updateMeasurements;

    .line 3174
    iget-object v0, p1, Lo/updateMeasurements;->getInterfaceDescriptor:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 3175
    iget-object v1, p1, Lo/updateMeasurements;->asBinder:Lo/findFirstVisibleItemClosestToStart;

    invoke-virtual {v1}, Lo/findFirstVisibleItemClosestToStart;->onMessageChannelReady()D

    move-result-wide v1

    .line 3176
    check-cast v0, Ljava/lang/Iterable;

    .line 3207
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;

    .line 3177
    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;->getAmount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    :goto_2
    cmpg-double v6, v1, v4

    if-gez v6, :cond_3

    .line 3178
    iget-object p1, p1, Lo/updateMeasurements;->asBinder:Lo/findFirstVisibleItemClosestToStart;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;->getStep()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_3

    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_3
    invoke-virtual {p1, v0, v1}, Lo/findFirstVisibleItemClosestToStart;->setInterval(D)V

    .line 21
    :cond_6
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
