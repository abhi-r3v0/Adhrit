.class final Lo/getViewLayoutPosition$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewLayoutPosition;->onPostMessage(Ljava/lang/String;)V
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
.field private synthetic ICustomTabsCallback:Lo/getViewLayoutPosition;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getViewLayoutPosition$newSession;->ICustomTabsCallback:Lo/getViewLayoutPosition;

    iput-object p2, p0, Lo/getViewLayoutPosition$newSession;->onPostMessage:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1373
    iget-object v0, p0, Lo/getViewLayoutPosition$newSession;->ICustomTabsCallback:Lo/getViewLayoutPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {v0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Lo/getViewLayoutPosition$newSession;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lo/StaggeredGridLayoutManager$SavedState;->onNavigationEvent(Lo/StaggeredGridLayoutManager$SavedState;Ljava/lang/String;II)V

    .line 63
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
