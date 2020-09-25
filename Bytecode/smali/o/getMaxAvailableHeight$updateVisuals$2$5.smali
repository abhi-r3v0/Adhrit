.class final Lo/getMaxAvailableHeight$updateVisuals$2$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight$updateVisuals$2;
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
.field private synthetic onMessageChannelReady:Lo/getMaxAvailableHeight$updateVisuals$2;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight$updateVisuals$2;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$updateVisuals$2$5;->onMessageChannelReady:Lo/getMaxAvailableHeight$updateVisuals$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1420
    iget-object v0, p0, Lo/getMaxAvailableHeight$updateVisuals$2$5;->onMessageChannelReady:Lo/getMaxAvailableHeight$updateVisuals$2;

    iget-object v0, v0, Lo/getMaxAvailableHeight$updateVisuals$2;->onNavigationEvent:Ljava/util/Map;

    const-string v1, "payment_back_button_click"

    invoke-static {v1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1421
    iget-object v0, p0, Lo/getMaxAvailableHeight$updateVisuals$2$5;->onMessageChannelReady:Lo/getMaxAvailableHeight$updateVisuals$2;

    iget-object v0, v0, Lo/getMaxAvailableHeight$updateVisuals$2;->onPostMessage:Lo/getMaxAvailableHeight$updateVisuals;

    iget-object v0, v0, Lo/getMaxAvailableHeight$updateVisuals;->onNavigationEvent:Lo/getMaxAvailableHeight;

    iget-object v1, p0, Lo/getMaxAvailableHeight$updateVisuals$2$5;->onMessageChannelReady:Lo/getMaxAvailableHeight$updateVisuals$2;

    iget-object v1, v1, Lo/getMaxAvailableHeight$updateVisuals$2;->onNavigationEvent:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lo/getMaxAvailableHeight;->onPostMessage(Lo/getMaxAvailableHeight;Ljava/util/Map;ZI)V

    .line 45
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
