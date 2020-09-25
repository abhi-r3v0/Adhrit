.class final Lo/obtainVelocityTracker$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/obtainVelocityTracker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "it",
        "Landroid/view/View;",
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
.field private synthetic onPostMessage:Lo/obtainVelocityTracker;


# direct methods
.method constructor <init>(Lo/obtainVelocityTracker;)V
    .locals 0

    iput-object p1, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 43
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array v0, p1, [Lo/addWrite;

    .line 1085
    iget-object v1, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {v1}, Lo/obtainVelocityTracker;->onNavigationEvent(Lo/obtainVelocityTracker;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ne v1, v2, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {v1}, Lo/obtainVelocityTracker;->extraCallback(Lo/obtainVelocityTracker;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {v5}, Lo/obtainVelocityTracker;->onNavigationEvent(Lo/obtainVelocityTracker;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    .line 2021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback:Ljava/lang/Double;

    .line 2043
    :goto_0
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "start_amount"

    invoke-direct {v5, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    const/4 v1, 0x1

    .line 1086
    iget-object v5, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {v5}, Lo/obtainVelocityTracker;->onNavigationEvent(Lo/obtainVelocityTracker;)I

    move-result v5

    if-ne v5, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {v2}, Lo/obtainVelocityTracker;->extraCallback(Lo/obtainVelocityTracker;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {v4}, Lo/obtainVelocityTracker;->onNavigationEvent(Lo/obtainVelocityTracker;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    .line 3023
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 3043
    :goto_1
    new-instance v2, Lo/addWrite;

    const-string/jumbo v5, "start_tenure"

    invoke-direct {v2, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 1087
    iget-object v2, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {v2}, Lo/obtainVelocityTracker;->onMessageChannelReady(Lo/obtainVelocityTracker;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    move-result-object v2

    .line 4021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback:Ljava/lang/Double;

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "end_amount"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 1088
    iget-object v2, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {v2}, Lo/obtainVelocityTracker;->onMessageChannelReady(Lo/obtainVelocityTracker;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    move-result-object v2

    .line 5023
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 5043
    new-instance v4, Lo/addWrite;

    const-string v5, "end_tenure"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const-string v1, "pairs"

    .line 1084
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "stash_custom_tenure_click_done"

    .line 1084
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1090
    iget-object p1, p0, Lo/obtainVelocityTracker$onMessageChannelReady;->onPostMessage:Lo/obtainVelocityTracker;

    invoke-static {p1}, Lo/obtainVelocityTracker;->onMessageChannelReady(Lo/obtainVelocityTracker;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    move-result-object v0

    .line 6023
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1090
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    :cond_2
    invoke-static {p1, v3}, Lo/obtainVelocityTracker;->onNavigationEvent(Lo/obtainVelocityTracker;I)V

    .line 43
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
