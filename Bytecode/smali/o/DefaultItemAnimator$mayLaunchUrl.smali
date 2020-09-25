.class final Lo/DefaultItemAnimator$mayLaunchUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/DefaultItemAnimator;

.field private synthetic extraCallback:Lo/toDebugString$ICustomTabsCallback;

.field private synthetic onPostMessage:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;Lo/toDebugString$ICustomTabsCallback;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    iput-object p2, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iput-object p3, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 13

    .line 1184
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->onPostMessage()J

    move-result-wide v0

    const-wide/16 v2, 0x4b0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    cmp-long p1, v11, v0

    if-eqz p1, :cond_3

    .line 1185
    :goto_0
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    .line 1186
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->coinCountText:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "coinCountText"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->onPostMessage()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v10, v9, v9, v8}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/Number;ZLjava/lang/String;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1188
    :cond_1
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    move-wide v0, v6

    .line 1189
    :goto_1
    sget-object p1, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {p1}, Lo/onPanelClosed;->onPostMessage()J

    move-result-wide v11

    new-array p1, v5, [I

    aput v10, p1, v10

    sub-long/2addr v11, v0

    long-to-int v12, v11

    aput v12, p1, v4

    .line 1190
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1191
    new-instance v11, Lo/DefaultItemAnimator$mayLaunchUrl$onPostMessage;

    invoke-direct {v11, p0, v0, v1}, Lo/DefaultItemAnimator$mayLaunchUrl$onPostMessage;-><init>(Lo/DefaultItemAnimator$mayLaunchUrl;J)V

    check-cast v11, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1194
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1195
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1199
    :cond_3
    :goto_2
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->ICustomTabsCallback()J

    move-result-wide v0

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    cmp-long p1, v11, v0

    if-eqz p1, :cond_7

    .line 1200
    :goto_3
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_5

    .line 1201
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->gemCountText:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "gemCountText"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v10, v9, v9, v8}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/Number;ZLjava/lang/String;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1203
    :cond_5
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1204
    :cond_6
    sget-object p1, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {p1}, Lo/onPanelClosed;->ICustomTabsCallback()J

    move-result-wide v0

    new-array p1, v5, [I

    aput v10, p1, v10

    sub-long/2addr v0, v6

    long-to-int v1, v0

    aput v1, p1, v4

    .line 1205
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1206
    new-instance v0, Lo/DefaultItemAnimator$mayLaunchUrl$ICustomTabsCallback;

    invoke-direct {v0, p0, v6, v7}, Lo/DefaultItemAnimator$mayLaunchUrl$ICustomTabsCallback;-><init>(Lo/DefaultItemAnimator$mayLaunchUrl;J)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1209
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1210
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1214
    :cond_7
    :goto_4
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->onPostMessage()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1215
    iget-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method
