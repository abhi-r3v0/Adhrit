.class final Lo/onReset$mayLaunchUrl$3$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onReset$mayLaunchUrl$3;
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
.field private synthetic extraCallback:Lo/onReset$mayLaunchUrl$3;


# direct methods
.method constructor <init>(Lo/onReset$mayLaunchUrl$3;)V
    .locals 0

    iput-object p1, p0, Lo/onReset$mayLaunchUrl$3$1;->extraCallback:Lo/onReset$mayLaunchUrl$3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1507
    iget-object v0, p0, Lo/onReset$mayLaunchUrl$3$1;->extraCallback:Lo/onReset$mayLaunchUrl$3;

    iget-object v0, v0, Lo/onReset$mayLaunchUrl$3;->ICustomTabsCallback:Lo/onReset$mayLaunchUrl;

    iget-object v0, v0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->ICustomTabsCallback$Stub$Proxy(Lo/onReset;)Lo/dataToString;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/dataToString;->onNavigationEvent(Lo/dataToString;)V

    .line 71
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
