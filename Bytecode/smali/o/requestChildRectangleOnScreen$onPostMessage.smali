.class final Lo/requestChildRectangleOnScreen$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requestChildRectangleOnScreen;-><init>(Landroidx/fragment/app/Fragment;DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Lo/requestChildRectangleOnScreen$ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/getMoveDuration;",
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
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
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
.field private synthetic onMessageChannelReady:Lo/requestChildRectangleOnScreen;


# direct methods
.method constructor <init>(Lo/requestChildRectangleOnScreen;)V
    .locals 0

    iput-object p1, p0, Lo/requestChildRectangleOnScreen$onPostMessage;->onMessageChannelReady:Lo/requestChildRectangleOnScreen;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1033
    iget-object v0, p0, Lo/requestChildRectangleOnScreen$onPostMessage;->onMessageChannelReady:Lo/requestChildRectangleOnScreen;

    invoke-static {v0}, Lo/requestChildRectangleOnScreen;->onPostMessage(Lo/requestChildRectangleOnScreen;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/removeOnActiveChangeListener;

    .line 1102
    new-instance v1, Lo/setMetadata;

    invoke-direct {v1, v0}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class v0, Lo/getMoveDuration;

    invoke-virtual {v1, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/getMoveDuration;

    return-object v0
.end method
