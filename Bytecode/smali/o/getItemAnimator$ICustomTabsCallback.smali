.class final Lo/getItemAnimator$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getItemAnimator;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsNotifyTemplate$updateTimer$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getItemAnimator;

.field private synthetic extraCallback:Lo/processAdapterUpdatesAndSetAnimationFlags;


# direct methods
.method constructor <init>(Lo/getItemAnimator;Lo/processAdapterUpdatesAndSetAnimationFlags;)V
    .locals 0

    iput-object p1, p0, Lo/getItemAnimator$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemAnimator;

    iput-object p2, p0, Lo/getItemAnimator$ICustomTabsCallback;->extraCallback:Lo/processAdapterUpdatesAndSetAnimationFlags;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1160
    iget-object v1, v0, Lo/getItemAnimator$ICustomTabsCallback;->extraCallback:Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 2010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 2029
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;

    .line 2103
    iget-wide v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;->onNavigationEvent:J

    .line 1160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const-string v4, "Calendar.getInstance()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 3063
    div-long v5, v1, v3

    const-wide/16 v7, 0x3c

    .line 4051
    div-long/2addr v5, v7

    .line 5039
    div-long v9, v5, v7

    .line 1164
    iget-object v11, v0, Lo/getItemAnimator$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemAnimator;

    invoke-static {v11}, Lo/getItemAnimator;->ICustomTabsCallback(Lo/getItemAnimator;)Lo/createFullSpanItemFromEnd;

    move-result-object v11

    const-string v12, "liveStatusText"

    invoke-static {v11, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v0, Lo/getItemAnimator$ICustomTabsCallback;->extraCallback:Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 7010
    iget-object v12, v12, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 7029
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;

    .line 7111
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 1164
    check-cast v12, Ljava/lang/CharSequence;

    goto :goto_0

    .line 1165
    :cond_0
    sget-object v12, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v12, 0x7f130501

    invoke-static {v12}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v11, v0, Lo/getItemAnimator$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemAnimator;

    invoke-static {v11}, Lo/getItemAnimator;->extraCallback(Lo/getItemAnimator;)J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string/jumbo v15, "timerText"

    cmp-long v16, v9, v11

    if-gtz v16, :cond_2

    mul-long v11, v9, v7

    mul-long v11, v11, v7

    mul-long v11, v11, v3

    sub-long v11, v1, v11

    .line 15063
    div-long/2addr v11, v3

    .line 16051
    div-long/2addr v11, v7

    mul-long v5, v5, v7

    mul-long v5, v5, v3

    sub-long/2addr v1, v5

    .line 22063
    div-long/2addr v1, v3

    .line 1171
    iget-object v3, v0, Lo/getItemAnimator$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemAnimator;

    invoke-static {v3}, Lo/getItemAnimator;->onMessageChannelReady(Lo/getItemAnimator;)Lo/createFullSpanItemFromEnd;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lo/getItemAnimator$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemAnimator;

    .line 23096
    iget-object v4, v4, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    if-eqz v4, :cond_1

    const v5, 0x7f130254

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1171
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v14

    const/4 v7, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    const-wide/16 v1, 0x18

    .line 27027
    div-long/2addr v9, v1

    .line 1174
    iget-object v1, v0, Lo/getItemAnimator$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemAnimator;

    invoke-static {v1}, Lo/getItemAnimator;->onMessageChannelReady(Lo/getItemAnimator;)Lo/createFullSpanItemFromEnd;

    move-result-object v1

    invoke-static {v1, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lo/getItemAnimator$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemAnimator;

    .line 28096
    iget-object v2, v2, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    if-eqz v2, :cond_3

    const v3, 0x7f13014f

    new-array v4, v14, [Ljava/lang/Object;

    .line 1174
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_3
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
