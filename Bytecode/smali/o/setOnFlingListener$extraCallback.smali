.class final Lo/setOnFlingListener$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setOnFlingListener;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic extraCallback:Lo/setOnFlingListener;


# direct methods
.method constructor <init>(Lo/setOnFlingListener;)V
    .locals 0

    iput-object p1, p0, Lo/setOnFlingListener$extraCallback;->extraCallback:Lo/setOnFlingListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 25
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    iget-object p1, p0, Lo/setOnFlingListener$extraCallback;->extraCallback:Lo/setOnFlingListener;

    invoke-static {p1}, Lo/setOnFlingListener;->onPostMessage(Lo/setOnFlingListener;)Lo/addItemDecoration;

    move-result-object p1

    invoke-virtual {p1}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object p1

    const-string v0, "leaderboard_buffer_sheet_cta_click"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1054
    iget-object p1, p0, Lo/setOnFlingListener$extraCallback;->extraCallback:Lo/setOnFlingListener;

    .line 2026
    iget-object v0, p1, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    if-nez v0, :cond_0

    const-string v1, "fetchingScoreSheetData"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2082
    :cond_0
    iget-object v0, v0, Lo/getDecoratedStart;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    .line 3061
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 1054
    invoke-static {p1, v0}, Lo/setOnFlingListener;->onPostMessage(Lo/setOnFlingListener;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;)V

    .line 25
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method