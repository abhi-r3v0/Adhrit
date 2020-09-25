.class public final Lo/peekValue$ICustomTabsCallback$Stub$1;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/peekValue$ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/CreditScoreIntroFragment$startAnimationListener$2$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/peekValue$ICustomTabsCallback$Stub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lo/peekValue$ICustomTabsCallback$Stub$1;->onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 139
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback$Stub$1;->onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/peekValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/peekValue;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback$Stub$1;->onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/peekValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->scoreMin:I

    invoke-virtual {p1, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "scoreMin"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback$Stub$1;->onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/peekValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->scoreMax:I

    invoke-virtual {p1, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "scoreMax"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback$Stub$1;->onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/peekValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/peekValue;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->textHello:I

    invoke-virtual {p1, v0}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "textHello"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f1303db

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback$Stub$1;->onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/peekValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/peekValue;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p1, v0}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "desc"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f1303da

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback$Stub$1;->onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/peekValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/peekValue;

    invoke-static {p1}, Lo/peekValue;->onTransact(Lo/peekValue;)V

    .line 145
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback$Stub$1;->onNavigationEvent:Lo/peekValue$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/peekValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/peekValue;

    invoke-static {p1}, Lo/peekValue;->asInterface(Lo/peekValue;)V

    :cond_1
    return-void
.end method
