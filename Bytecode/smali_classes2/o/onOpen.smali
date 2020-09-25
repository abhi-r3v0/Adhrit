.class final Lo/onOpen;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getCsatResponse;

.field private final synthetic onPostMessage:Lo/setChipIconTint;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Lo/setChipIconTint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onOpen;->ICustomTabsCallback:Lo/getCsatResponse;

    iput-object p2, p0, Lo/onOpen;->onPostMessage:Lo/setChipIconTint;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lo/onOpen;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v1}, Lo/getCsatResponse;->onNavigationEvent(Lo/getCsatResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lo/onOpen;->onPostMessage:Lo/setChipIconTint;

    iget-object v2, p0, Lo/onOpen;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v2}, Lo/getCsatResponse;->onNavigationEvent(Lo/getCsatResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lo/onOpen;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnEventListener already registered."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lo/getCsatResponse$extraCallback;

    iget-object v1, p0, Lo/onOpen;->onPostMessage:Lo/setChipIconTint;

    invoke-direct {v0, v1}, Lo/getCsatResponse$extraCallback;-><init>(Lo/setChipIconTint;)V

    .line 8
    iget-object v1, p0, Lo/onOpen;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v1}, Lo/getCsatResponse;->onNavigationEvent(Lo/getCsatResponse;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lo/onOpen;->onPostMessage:Lo/setChipIconTint;

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lo/onOpen;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v1}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/setControllerHideOnTouch;->registerOnMeasurementEventListener(Lo/getConversations;)V

    return-void
.end method
