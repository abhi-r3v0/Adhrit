.class final Lo/computeScrollExtent$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollExtent;->onPostMessage()V
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

.field private synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

.field private synthetic onNavigationEvent:Lo/computeScrollExtent;


# direct methods
.method constructor <init>(Lo/computeScrollExtent;Landroid/content/ClipboardManager;Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$asBinder;->onNavigationEvent:Lo/computeScrollExtent;

    iput-object p2, p0, Lo/computeScrollExtent$asBinder;->extraCallback:Landroid/content/ClipboardManager;

    iput-object p3, p0, Lo/computeScrollExtent$asBinder;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 65
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1406
    iget-object p1, p0, Lo/computeScrollExtent$asBinder;->onNavigationEvent:Lo/computeScrollExtent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v0, "context!!"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xa

    .line 2014
    invoke-static {p1, v1, v2}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 1407
    iget-object p1, p0, Lo/computeScrollExtent$asBinder;->onNavigationEvent:Lo/computeScrollExtent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$loadAnimation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f010041

    .line 3009
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-string v0, "AnimationUtils.loadAnimation(this, id)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1409
    iget-object v0, p0, Lo/computeScrollExtent$asBinder;->onNavigationEvent:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getRemainingScrollVertical;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string/jumbo p1, "text"

    .line 1410
    check-cast p1, Ljava/lang/CharSequence;

    iget-object v0, p0, Lo/computeScrollExtent$asBinder;->onNavigationEvent:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeText:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "voucherCodeText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 1411
    iget-object v0, p0, Lo/computeScrollExtent$asBinder;->extraCallback:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1412
    iget-object p1, p0, Lo/computeScrollExtent$asBinder;->onNavigationEvent:Lo/computeScrollExtent;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p1, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    const-string v0, "copyCode"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "copyCode.context"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Code Copied"

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x50

    const/4 v2, 0x0

    .line 3168
    invoke-static {p1, v0, v1, v2}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 1413
    iget-object p1, p0, Lo/computeScrollExtent$asBinder;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 4076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_2

    .line 4089
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1414
    iget-object p1, p0, Lo/computeScrollExtent$asBinder;->onNavigationEvent:Lo/computeScrollExtent;

    iget-object v0, p0, Lo/computeScrollExtent$asBinder;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    invoke-static {p1, v0}, Lo/computeScrollExtent;->onMessageChannelReady(Lo/computeScrollExtent;Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;)V

    .line 65
    :cond_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
