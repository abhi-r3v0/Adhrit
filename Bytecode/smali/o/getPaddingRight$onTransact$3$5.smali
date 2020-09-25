.class final Lo/getPaddingRight$onTransact$3$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaddingRight$onTransact$3;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$setCompletionAnimation$1$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getPaddingRight$onTransact$3;


# direct methods
.method constructor <init>(Lo/getPaddingRight$onTransact$3;)V
    .locals 0

    iput-object p1, p0, Lo/getPaddingRight$onTransact$3$5;->onPostMessage:Lo/getPaddingRight$onTransact$3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1166
    iget-object v0, p0, Lo/getPaddingRight$onTransact$3$5;->onPostMessage:Lo/getPaddingRight$onTransact$3;

    iget-object v0, v0, Lo/getPaddingRight$onTransact$3;->onNavigationEvent:Lo/getPaddingRight$onTransact;

    iget-object v0, v0, Lo/getPaddingRight$onTransact;->onMessageChannelReady:Lo/getPaddingRight;

    invoke-static {v0}, Lo/getPaddingRight;->ICustomTabsCallback(Lo/getPaddingRight;)Lo/dispatchAttachedToWindow$ICustomTabsCallback;

    move-result-object v0

    iget-object v1, p0, Lo/getPaddingRight$onTransact$3$5;->onPostMessage:Lo/getPaddingRight$onTransact$3;

    iget-object v1, v1, Lo/getPaddingRight$onTransact$3;->onNavigationEvent:Lo/getPaddingRight$onTransact;

    iget-object v1, v1, Lo/getPaddingRight$onTransact;->onMessageChannelReady:Lo/getPaddingRight;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lo/dispatchAttachedToWindow$ICustomTabsCallback;->onMessageChannelReady(I)V

    .line 56
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
