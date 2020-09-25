.class final Lo/addOnItemTouchListener$postMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addOnItemTouchListener;
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
.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$postMessage;->onNavigationEvent:Lo/addOnItemTouchListener;

    iput-object p2, p0, Lo/addOnItemTouchListener$postMessage;->onMessageChannelReady:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 1232
    iget-object v0, p0, Lo/addOnItemTouchListener$postMessage;->onNavigationEvent:Lo/addOnItemTouchListener;

    invoke-static {v0}, Lo/addOnItemTouchListener;->onMessageChannelReady(Lo/addOnItemTouchListener;)Lo/resetScroll;

    move-result-object v0

    iget-object v1, p0, Lo/addOnItemTouchListener$postMessage;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2101
    iget-object v0, v0, Lo/resetScroll;->onMessageChannelReady:Lo/setActive;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2101
    :goto_0
    check-cast v0, Lo/addWrite;

    if-eqz v0, :cond_3

    .line 3027
    iget-object v0, v0, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 2101
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 2153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    .line 2102
    instance-of v5, v3, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz v5, :cond_1

    .line 4028
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onPostMessage:Ljava/lang/String;

    .line 2102
    invoke-static {v3, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v2, v4

    goto :goto_1

    .line 3441
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_3
    const/4 v2, -0x1

    :goto_2
    if-lez v2, :cond_4

    .line 1234
    iget-object v0, p0, Lo/addOnItemTouchListener$postMessage;->onNavigationEvent:Lo/addOnItemTouchListener;

    invoke-static {v0, v2}, Lo/addOnItemTouchListener;->extraCallback(Lo/addOnItemTouchListener;I)V

    .line 50
    :cond_4
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
