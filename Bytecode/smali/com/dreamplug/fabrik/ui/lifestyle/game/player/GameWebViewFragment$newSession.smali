.class final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;
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
        "com/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$render$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

.field private synthetic extraCallback:Lo/toDebugString$onPostMessage;

.field private synthetic onNavigationEvent:Lo/remove;


# direct methods
.method constructor <init>(Lo/toDebugString$onPostMessage;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;Lo/remove;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->extraCallback:Lo/toDebugString$onPostMessage;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->onNavigationEvent:Lo/remove;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1338
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->onNavigationEvent:Lo/remove;

    .line 2011
    iget-object v1, v1, Lo/remove;->onNavigationEvent:Ljava/lang/Long;

    .line 1338
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const-string v4, "Calendar.getInstance()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 2063
    div-long v5, v1, v3

    const-wide/16 v7, 0x3c

    .line 3051
    div-long/2addr v5, v7

    .line 4039
    div-long v9, v5, v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string/jumbo v13, "timerText"

    const-wide/16 v14, 0x48

    cmp-long v16, v9, v14

    if-gez v16, :cond_1

    mul-long v14, v9, v7

    mul-long v14, v14, v7

    mul-long v14, v14, v3

    sub-long v14, v1, v14

    .line 12063
    div-long/2addr v14, v3

    .line 13051
    div-long/2addr v14, v7

    mul-long v5, v5, v7

    mul-long v5, v5, v3

    sub-long v5, v1, v5

    .line 19063
    div-long/2addr v5, v3

    .line 1344
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {v3, v4}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    const v7, 0x7f130254

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {v3, v4}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1347
    :cond_1
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {v3, v4}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const-wide/16 v3, 0x7530

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_4

    .line 1352
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->extraCallback:Lo/toDebugString$onPostMessage;

    iget v2, v1, Lo/toDebugString$onPostMessage;->onPostMessage:I

    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v3}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1353
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)I

    move-result v2

    goto :goto_3

    .line 1355
    :cond_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)I

    move-result v2

    .line 1352
    :goto_3
    iput v2, v1, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 1357
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {v1, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->extraCallback:Lo/toDebugString$onPostMessage;

    iget v2, v2, Lo/toDebugString$onPostMessage;->onPostMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 1359
    :cond_4
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {v1, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :goto_4
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
