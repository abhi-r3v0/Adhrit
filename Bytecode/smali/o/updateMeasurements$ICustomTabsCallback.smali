.class final Lo/updateMeasurements$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateMeasurements;-><init>(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/getSpanIndex;Lo/setRecycleChildrenOnDetach;Lo/getSpanGroupIndex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/onItemsChanged;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/fabrik/ui/lending/AmountChangedListener;",
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
.field final synthetic onNavigationEvent:Lo/updateMeasurements;


# direct methods
.method constructor <init>(Lo/updateMeasurements;)V
    .locals 0

    iput-object p1, p0, Lo/updateMeasurements$ICustomTabsCallback;->onNavigationEvent:Lo/updateMeasurements;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1163
    new-instance v0, Lo/onItemsChanged;

    iget-object v1, p0, Lo/updateMeasurements$ICustomTabsCallback;->onNavigationEvent:Lo/updateMeasurements;

    .line 2021
    iget-object v1, v1, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    const-string v2, "loanAmount"

    .line 1163
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/updateMeasurements$ICustomTabsCallback;->onNavigationEvent:Lo/updateMeasurements;

    .line 3021
    iget-object v2, v2, Lo/updateMeasurements;->asBinder:Lo/findFirstVisibleItemClosestToStart;

    const-string/jumbo v3, "seeker"

    .line 1163
    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lo/updateMeasurements$ICustomTabsCallback$3;

    invoke-direct {v3, p0}, Lo/updateMeasurements$ICustomTabsCallback$3;-><init>(Lo/updateMeasurements$ICustomTabsCallback;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-direct {v0, v1, v2, v3}, Lo/onItemsChanged;-><init>(Landroid/widget/EditText;Lo/findFirstVisibleItemClosestToStart;Lo/onDisconnectSetValue;)V

    return-object v0
.end method
