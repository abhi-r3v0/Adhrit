.class final Lo/addOnItemTouchListener$requestPostMessageChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnItemTouchListener;-><init>()V
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
.field private synthetic onPostMessage:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$requestPostMessageChannel;->onPostMessage:Lo/addOnItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 13

    .line 50
    check-cast p1, Ljava/lang/Long;

    .line 1319
    iget-object v0, p0, Lo/addOnItemTouchListener$requestPostMessageChannel;->onPostMessage:Lo/addOnItemTouchListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->balancePit:I

    invoke-virtual {v0, v1}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/isScrap;

    const-string v1, "balancePit"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$visible"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2009
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    iget-object v0, p0, Lo/addOnItemTouchListener$requestPostMessageChannel;->onPostMessage:Lo/addOnItemTouchListener;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->coinBalance:I

    invoke-virtual {v0, v3}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "coinBalance"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    iget-object v0, p0, Lo/addOnItemTouchListener$requestPostMessageChannel;->onPostMessage:Lo/addOnItemTouchListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->coinBalance:I

    invoke-virtual {v0, v1}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    new-instance v1, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\ue900"

    .line 1322
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3047
    iget-object v3, v1, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    const v4, 0x7f060090

    .line 1322
    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    const-string/jumbo v4, "span"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3112
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v2, v5}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1322
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4059
    iget-object v3, v1, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, " "

    .line 1323
    invoke-virtual {v1, v2}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/32 v5, 0x5f5e100

    cmp-long v7, v2, v5

    if-ltz v7, :cond_1

    .line 1326
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/32 v5, 0xf4240

    rem-long/2addr v2, v5

    const-wide/32 v7, 0x186a0

    cmp-long v9, v2, v7

    if-ltz v9, :cond_0

    .line 1327
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-float p1, v2

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xb6

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5059
    iget-object v2, v1, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1329
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    div-long/2addr v2, v5

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfe

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6059
    iget-object v2, v1, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    const-string p1, " M"

    .line 1331
    invoke-virtual {v1, p1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_1

    .line 1334
    :cond_1
    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfe

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7059
    iget-object v2, v1, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7156
    :goto_1
    iget-object p1, v1, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    .line 1404
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
