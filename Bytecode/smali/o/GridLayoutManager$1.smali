.class final Lo/GridLayoutManager$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GridLayoutManager;-><init>()V
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
        "onChange",
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
.field private synthetic onMessageChannelReady:Lo/GridLayoutManager;


# direct methods
.method constructor <init>(Lo/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/GridLayoutManager$1;->onMessageChannelReady:Lo/GridLayoutManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/GridLayoutManager$1;->onNavigationEvent()V

    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 4

    .line 15
    sget-object v0, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 15
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lo/GridLayoutManager$1;->onMessageChannelReady:Lo/GridLayoutManager;

    .line 2011
    iget-object v0, v0, Lo/GridLayoutManager;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    .line 16
    sget-object v1, Lo/onLayoutCompleted;->onTransact:Lo/onLayoutCompleted;

    .line 2320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v3, :cond_1

    move-object v2, v1

    .line 16
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lo/GridLayoutManager$1;->onMessageChannelReady:Lo/GridLayoutManager;

    .line 3011
    iget-object v0, v0, Lo/GridLayoutManager;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    .line 18
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
