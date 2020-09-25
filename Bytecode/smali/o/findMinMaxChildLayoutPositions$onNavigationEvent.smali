.class final Lo/findMinMaxChildLayoutPositions$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findMinMaxChildLayoutPositions;->setData(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;Lo/hasGapsToFix$onMessageChannelReady;Ljava/lang/String;)V
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
.field private synthetic extraCallback:Landroid/content/ClipboardManager;

.field private synthetic onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;


# direct methods
.method constructor <init>(Lo/findMinMaxChildLayoutPositions;Landroid/content/ClipboardManager;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;)V
    .locals 0

    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

    iput-object p2, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->extraCallback:Landroid/content/ClipboardManager;

    iput-object p3, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 35
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xa

    .line 2014
    invoke-static {p1, v1, v2}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 1078
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$loadAnimation"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f010041

    .line 3009
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-string v1, "AnimationUtils.loadAnimation(this, id)"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1080
    iget-object v1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

    .line 3044
    iget-object v1, v1, Lo/findMinMaxChildLayoutPositions;->extraCallback:Landroid/widget/ImageView;

    .line 1080
    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string/jumbo p1, "text"

    .line 1081
    check-cast p1, Ljava/lang/CharSequence;

    iget-object v1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

    .line 4043
    iget-object v1, v1, Lo/findMinMaxChildLayoutPositions;->onPostMessage:Landroid/widget/TextView;

    .line 1081
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 1082
    iget-object v1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->extraCallback:Landroid/content/ClipboardManager;

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1083
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Code Copied"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/16 v2, 0x50

    .line 4168
    invoke-static {p1, v0, v2, v1}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 1084
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;

    .line 5088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p1, :cond_0

    .line 1085
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

    invoke-static {p1, v1}, Lo/findMinMaxChildLayoutPositions;->onPostMessage(Lo/findMinMaxChildLayoutPositions;Z)V

    :cond_0
    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 1088
    iget-object v2, p0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions;

    invoke-static {v2}, Lo/findMinMaxChildLayoutPositions;->extraCallback(Lo/findMinMaxChildLayoutPositions;)Ljava/lang/String;

    move-result-object v2

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string v4, "game_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 1087
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "win_details_voucher_copied"

    .line 1087
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 35
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
