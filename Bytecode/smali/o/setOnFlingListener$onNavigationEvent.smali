.class final Lo/setOnFlingListener$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


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
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Long;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoreSheetFragment$updateTimer$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:J

.field private synthetic onMessageChannelReady:Lo/setOnFlingListener;


# direct methods
.method constructor <init>(Lo/setOnFlingListener;J)V
    .locals 0

    iput-object p1, p0, Lo/setOnFlingListener$onNavigationEvent;->onMessageChannelReady:Lo/setOnFlingListener;

    iput-wide p2, p0, Lo/setOnFlingListener$onNavigationEvent;->ICustomTabsCallback:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1087
    iget-wide v0, p0, Lo/setOnFlingListener$onNavigationEvent;->ICustomTabsCallback:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string v2, "Calendar.getInstance()"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 2063
    div-long v4, v0, v2

    const-wide/16 v6, 0x3c

    .line 3051
    div-long/2addr v4, v6

    .line 4039
    div-long v8, v4, v6

    mul-long v10, v8, v6

    mul-long v10, v10, v6

    mul-long v10, v10, v2

    sub-long v10, v0, v10

    .line 12063
    div-long/2addr v10, v2

    .line 13051
    div-long/2addr v10, v6

    mul-long v4, v4, v6

    mul-long v4, v4, v2

    sub-long/2addr v0, v4

    .line 19063
    div-long/2addr v0, v2

    .line 1094
    iget-object p1, p0, Lo/setOnFlingListener$onNavigationEvent;->onMessageChannelReady:Lo/setOnFlingListener;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const v4, 0x7f130254

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1095
    :goto_0
    iget-object v0, p0, Lo/setOnFlingListener$onNavigationEvent;->onMessageChannelReady:Lo/setOnFlingListener;

    .line 21026
    iget-object v0, v0, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    if-nez v0, :cond_1

    const-string v1, "fetchingScoreSheetData"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 21082
    :cond_1
    iget-object v0, v0, Lo/getDecoratedStart;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    .line 22060
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onMessageChannelReady:Ljava/lang/String;

    .line 1096
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const-string v4, "desc"

    if-eqz v1, :cond_4

    .line 1097
    iget-object v0, p0, Lo/setOnFlingListener$onNavigationEvent;->onMessageChannelReady:Lo/setOnFlingListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1099
    :cond_4
    iget-object v1, p0, Lo/setOnFlingListener$onNavigationEvent;->onMessageChannelReady:Lo/setOnFlingListener;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {v1, v5}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    if-nez v0, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
