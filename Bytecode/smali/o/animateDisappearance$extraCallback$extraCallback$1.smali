.class final Lo/animateDisappearance$extraCallback$extraCallback$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateDisappearance$extraCallback$extraCallback;
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
.field private synthetic onNavigationEvent:Lo/animateDisappearance$extraCallback$extraCallback;


# direct methods
.method constructor <init>(Lo/animateDisappearance$extraCallback$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/animateDisappearance$extraCallback$extraCallback$1;->onNavigationEvent:Lo/animateDisappearance$extraCallback$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1327
    iget-object v0, p0, Lo/animateDisappearance$extraCallback$extraCallback$1;->onNavigationEvent:Lo/animateDisappearance$extraCallback$extraCallback;

    iget-object v0, v0, Lo/animateDisappearance$extraCallback$extraCallback;->extraCallback:Lo/animateDisappearance$extraCallback;

    .line 2112
    iget-object v0, v0, Lo/animateDisappearance$extraCallback;->newSession:Lo/s$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1327
    invoke-virtual {v0, v1}, Lo/s$d;->onNavigationEvent(Z)V

    .line 1328
    :cond_0
    iget-object v0, p0, Lo/animateDisappearance$extraCallback$extraCallback$1;->onNavigationEvent:Lo/animateDisappearance$extraCallback$extraCallback;

    iget-object v0, v0, Lo/animateDisappearance$extraCallback$extraCallback;->extraCallback:Lo/animateDisappearance$extraCallback;

    .line 3112
    iget-object v0, v0, Lo/animateDisappearance$extraCallback;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1328
    invoke-virtual {v0, v1}, Lo/OrderDetailsJsonAdapter;->setPlayer(Lo/allow;)V

    .line 1329
    :cond_1
    iget-object v0, p0, Lo/animateDisappearance$extraCallback$extraCallback$1;->onNavigationEvent:Lo/animateDisappearance$extraCallback$extraCallback;

    iget-object v0, v0, Lo/animateDisappearance$extraCallback$extraCallback;->extraCallback:Lo/animateDisappearance$extraCallback;

    .line 4112
    iput-object v1, v0, Lo/animateDisappearance$extraCallback;->newSession:Lo/s$d;

    .line 112
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
