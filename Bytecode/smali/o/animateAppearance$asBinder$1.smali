.class final Lo/animateAppearance$asBinder$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateAppearance$asBinder;
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
.field private synthetic extraCallback:Lo/animateAppearance$asBinder;


# direct methods
.method constructor <init>(Lo/animateAppearance$asBinder;)V
    .locals 0

    iput-object p1, p0, Lo/animateAppearance$asBinder$1;->extraCallback:Lo/animateAppearance$asBinder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1257
    iget-object v0, p0, Lo/animateAppearance$asBinder$1;->extraCallback:Lo/animateAppearance$asBinder;

    iget-object v0, v0, Lo/animateAppearance$asBinder;->extraCallback:Lo/animateAppearance;

    invoke-static {v0}, Lo/animateAppearance;->extraCallback(Lo/animateAppearance;)Lo/s$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/s$d;->onNavigationEvent(Z)V

    .line 1258
    :cond_0
    iget-object v0, p0, Lo/animateAppearance$asBinder$1;->extraCallback:Lo/animateAppearance$asBinder;

    iget-object v0, v0, Lo/animateAppearance$asBinder;->extraCallback:Lo/animateAppearance;

    invoke-static {v0}, Lo/animateAppearance;->onPostMessage(Lo/animateAppearance;)Lo/OrderDetailsJsonAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lo/OrderDetailsJsonAdapter;->setPlayer(Lo/allow;)V

    .line 1259
    :cond_1
    iget-object v0, p0, Lo/animateAppearance$asBinder$1;->extraCallback:Lo/animateAppearance$asBinder;

    iget-object v0, v0, Lo/animateAppearance$asBinder;->extraCallback:Lo/animateAppearance;

    invoke-static {v0, v1}, Lo/animateAppearance;->onPostMessage(Lo/animateAppearance;Lo/s$d;)V

    .line 1260
    iget-object v0, p0, Lo/animateAppearance$asBinder$1;->extraCallback:Lo/animateAppearance$asBinder;

    iget-object v0, v0, Lo/animateAppearance$asBinder;->extraCallback:Lo/animateAppearance;

    invoke-static {v0, v1}, Lo/animateAppearance;->onMessageChannelReady(Lo/animateAppearance;Lo/SearchView$OnSuggestionListener$onMessageChannelReady;)V

    .line 49
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
