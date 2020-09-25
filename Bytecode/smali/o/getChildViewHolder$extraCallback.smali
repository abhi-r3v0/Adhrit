.class public final Lo/getChildViewHolder$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/invalidateItemDecorations$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildViewHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberDigitView$scrollListener$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/helpers/LuckyNumberDigitScroller$ScrollListener;",
        "onFinished",
        "",
        "onJustify",
        "onScroll",
        "distance",
        "",
        "onStarted",
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
.field private synthetic onNavigationEvent:Lo/getChildViewHolder;


# direct methods
.method constructor <init>(Lo/getChildViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 97
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/getChildViewHolder;->onNavigationEvent(Lo/getChildViewHolder;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 3

    .line 112
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v0}, Lo/getChildViewHolder;->onNavigationEvent(Lo/getChildViewHolder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v0}, Lo/getChildViewHolder;->extraCallback(Lo/getChildViewHolder;)Lo/invalidateItemDecorations;

    move-result-object v0

    iget-object v1, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v1}, Lo/getChildViewHolder;->onNavigationEvent(Lo/getChildViewHolder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/invalidateItemDecorations;->onMessageChannelReady(II)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 3

    .line 79
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v0, p1}, Lo/getChildViewHolder;->ICustomTabsCallback(Lo/getChildViewHolder;I)V

    .line 81
    iget-object p1, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    .line 1043
    iget p1, p1, Lo/getChildViewHolder;->onNavigationEvent:I

    .line 81
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    .line 1044
    iget v0, v0, Lo/getChildViewHolder;->ICustomTabsCallback:I

    if-eq p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    .line 2043
    iget v0, p1, Lo/getChildViewHolder;->onNavigationEvent:I

    .line 82
    invoke-virtual {p1, v0}, Lo/getChildViewHolder;->setLastItem(I)V

    .line 83
    iget-object p1, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    .line 2075
    iget-object p1, p1, Lo/getChildViewHolder;->onRelationshipValidationResult:Lo/getServerTime;

    .line 83
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 86
    :cond_0
    iget-object p1, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 87
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v0}, Lo/getChildViewHolder;->onNavigationEvent(Lo/getChildViewHolder;)I

    move-result v0

    const-string/jumbo v1, "scroller"

    const/4 v2, 0x1

    if-le v0, p1, :cond_2

    .line 88
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v0, p1}, Lo/getChildViewHolder;->onMessageChannelReady(Lo/getChildViewHolder;I)V

    .line 89
    iget-object p1, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {p1}, Lo/getChildViewHolder;->extraCallback(Lo/getChildViewHolder;)Lo/invalidateItemDecorations;

    move-result-object p1

    .line 2142
    iget-object p1, p1, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez p1, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v0}, Lo/getChildViewHolder;->onNavigationEvent(Lo/getChildViewHolder;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_4

    .line 91
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v0, p1}, Lo/getChildViewHolder;->onMessageChannelReady(Lo/getChildViewHolder;I)V

    .line 92
    iget-object p1, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {p1}, Lo/getChildViewHolder;->extraCallback(Lo/getChildViewHolder;)Lo/invalidateItemDecorations;

    move-result-object p1

    .line 3142
    iget-object p1, p1, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez p1, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_4
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 102
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-static {v0}, Lo/getChildViewHolder;->onMessageChannelReady(Lo/getChildViewHolder;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/getChildViewHolder;->onNavigationEvent(Lo/getChildViewHolder;Ljava/lang/Boolean;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getChildViewHolder;->onMessageChannelReady(Lo/getChildViewHolder;I)V

    .line 108
    iget-object v0, p0, Lo/getChildViewHolder$extraCallback;->onNavigationEvent:Lo/getChildViewHolder;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
