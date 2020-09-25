.class final Lo/offsetChildrenHorizontal$extraCommand$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/offsetChildrenHorizontal$extraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/Boolean;",
        "Lo/AFHelper;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "b",
        "",
        "<anonymous parameter 1>",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$setupText$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/offsetChildrenHorizontal$extraCommand;


# direct methods
.method constructor <init>(Lo/offsetChildrenHorizontal$extraCommand;)V
    .locals 0

    iput-object p1, p0, Lo/offsetChildrenHorizontal$extraCommand$3;->onNavigationEvent:Lo/offsetChildrenHorizontal$extraCommand;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1330
    iget-object p1, p0, Lo/offsetChildrenHorizontal$extraCommand$3;->onNavigationEvent:Lo/offsetChildrenHorizontal$extraCommand;

    iget-object p1, p1, Lo/offsetChildrenHorizontal$extraCommand;->onNavigationEvent:Lo/offsetChildrenHorizontal;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->logoShimmer:I

    invoke-virtual {p1, p2}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSharedPreferences;

    .line 2095
    iget-object p1, p1, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 3068
    iget-object p2, p1, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 3075
    iget-object p2, p1, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3069
    iget-object p1, p1, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1331
    :cond_1
    iget-object p1, p0, Lo/offsetChildrenHorizontal$extraCommand$3;->onNavigationEvent:Lo/offsetChildrenHorizontal$extraCommand;

    iget-object p1, p1, Lo/offsetChildrenHorizontal$extraCommand;->onNavigationEvent:Lo/offsetChildrenHorizontal;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->logoShimmer:I

    invoke-virtual {p1, p2}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSharedPreferences;

    const-string p2, "logoShimmer"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$gone"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 4017
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
