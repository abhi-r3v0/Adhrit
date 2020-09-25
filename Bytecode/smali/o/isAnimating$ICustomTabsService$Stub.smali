.class final Lo/isAnimating$ICustomTabsService$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isAnimating;-><init>()V
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
        "Ljava/lang/Long;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Long;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/isAnimating;


# direct methods
.method constructor <init>(Lo/isAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/isAnimating$ICustomTabsService$Stub;->extraCallback:Lo/isAnimating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 14

    .line 60
    check-cast p1, Ljava/lang/Long;

    .line 1491
    iget-object v0, p0, Lo/isAnimating$ICustomTabsService$Stub;->extraCallback:Lo/isAnimating;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->balancePit:I

    invoke-virtual {v0, v1}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/isScrap;

    const-string v1, "balancePit"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v2, "$this$visible"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2009
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lo/isAnimating$ICustomTabsService$Stub;->extraCallback:Lo/isAnimating;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->coinBalance:I

    invoke-virtual {v0, v4}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "coinBalance"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Lo/isAnimating$ICustomTabsService$Stub;->extraCallback:Lo/isAnimating;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->balanceDivider:I

    invoke-virtual {v0, v5}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/saveOldPosition;

    const-string v5, "balanceDivider"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    iget-object v0, p0, Lo/isAnimating$ICustomTabsService$Stub;->extraCallback:Lo/isAnimating;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->coinBalance:I

    invoke-virtual {v0, v2}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1581
    new-instance v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "\ue900"

    .line 1495
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4047
    iget-object v4, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    const v5, 0x7f060090

    .line 1495
    invoke-static {v4, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v4

    const-string/jumbo v5, "span"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4112
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v3, v6}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1495
    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5059
    iget-object v4, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    .line 1496
    invoke-virtual {v2, v3}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/32 v6, 0x5f5e100

    cmp-long v8, v3, v6

    if-ltz v8, :cond_1

    .line 1499
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/32 v6, 0xf4240

    rem-long/2addr v3, v6

    const-wide/32 v8, 0x186a0

    cmp-long v10, v3, v8

    if-ltz v10, :cond_0

    .line 1500
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float p1, v3

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/Number;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0xb6

    invoke-static/range {v6 .. v13}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6059
    iget-object v3, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1502
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    div-long/2addr v3, v6

    long-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/Number;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfe

    invoke-static/range {v6 .. v13}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7059
    iget-object v3, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    const-string p1, " M"

    .line 1504
    invoke-virtual {v2, p1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_1

    .line 1507
    :cond_1
    move-object v6, p1

    check-cast v6, Ljava/lang/Number;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfe

    invoke-static/range {v6 .. v13}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8059
    iget-object v3, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8156
    :goto_1
    iget-object p1, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    .line 1586
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    iget-object p1, p0, Lo/isAnimating$ICustomTabsService$Stub;->extraCallback:Lo/isAnimating;

    invoke-static {p1}, Lo/isAnimating;->newSession(Lo/isAnimating;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1512
    iget-object p1, p0, Lo/isAnimating$ICustomTabsService$Stub;->extraCallback:Lo/isAnimating;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->balancePit:I

    invoke-virtual {p1, v0}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/isScrap;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/isAnimating$ICustomTabsService$Stub;->extraCallback:Lo/isAnimating;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    new-instance v3, Lo/isAnimating$ICustomTabsService$Stub$2;

    invoke-direct {v3, p0}, Lo/isAnimating$ICustomTabsService$Stub$2;-><init>(Lo/isAnimating$ICustomTabsService$Stub;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    :cond_2
    return-void
.end method
