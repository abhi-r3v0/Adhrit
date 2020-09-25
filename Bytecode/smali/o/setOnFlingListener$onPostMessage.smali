.class final Lo/setOnFlingListener$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setOnFlingListener;
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
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoreSheetFragment$updateTimer$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setOnFlingListener;


# direct methods
.method constructor <init>(Lo/setOnFlingListener;)V
    .locals 0

    iput-object p1, p0, Lo/setOnFlingListener$onPostMessage;->onPostMessage:Lo/setOnFlingListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1104
    iget-object v0, p0, Lo/setOnFlingListener$onPostMessage;->onPostMessage:Lo/setOnFlingListener;

    invoke-static {v0}, Lo/setOnFlingListener;->onPostMessage(Lo/setOnFlingListener;)Lo/addItemDecoration;

    move-result-object v0

    invoke-virtual {v0}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v0

    const-string v1, "leaderboard_buffer_sheet_time_up"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1105
    iget-object v0, p0, Lo/setOnFlingListener$onPostMessage;->onPostMessage:Lo/setOnFlingListener;

    invoke-virtual {v0}, Lo/findLastVisibleItemPositions;->onTransact()V

    .line 25
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
