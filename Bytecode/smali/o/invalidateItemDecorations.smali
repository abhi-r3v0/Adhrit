.class public final Lo/invalidateItemDecorations;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/invalidateItemDecorations$ICustomTabsCallback;,
        Lo/invalidateItemDecorations$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/os/Message;",
        "kotlin.jvm.PlatformType",
        "handleMessage"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/widget/Scroller;

.field private final ICustomTabsCallback$Stub:Lo/invalidateItemDecorations$onMessageChannelReady;

.field private asInterface:Lo/invalidateItemDecorations$ICustomTabsCallback;

.field private extraCallback:Z

.field public final onMessageChannelReady:Landroid/content/Context;

.field private onNavigationEvent:Landroid/view/GestureDetector;

.field onPostMessage:I

.field private onTransact:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/invalidateItemDecorations$ICustomTabsCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scrollListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/invalidateItemDecorations;->onMessageChannelReady:Landroid/content/Context;

    iput-object p2, p0, Lo/invalidateItemDecorations;->asInterface:Lo/invalidateItemDecorations$ICustomTabsCallback;

    .line 23
    new-instance p1, Lo/invalidateItemDecorations$onMessageChannelReady;

    invoke-direct {p1, p0}, Lo/invalidateItemDecorations$onMessageChannelReady;-><init>(Lo/invalidateItemDecorations;)V

    iput-object p1, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback$Stub:Lo/invalidateItemDecorations$onMessageChannelReady;

    .line 50
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lo/invalidateItemDecorations;->onMessageChannelReady:Landroid/content/Context;

    iget-object v0, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback$Stub:Lo/invalidateItemDecorations$onMessageChannelReady;

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lo/invalidateItemDecorations;->onNavigationEvent:Landroid/view/GestureDetector;

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 53
    new-instance p1, Landroid/widget/Scroller;

    iget-object p2, p0, Lo/invalidateItemDecorations;->onMessageChannelReady:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    .line 55
    new-instance p1, Landroid/os/Handler;

    move-object p2, p0

    check-cast p2, Landroid/os/Handler$Callback;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lo/invalidateItemDecorations;->onTransact:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final extraCallback(I)V
    .locals 2

    .line 2151
    iget-object v0, p0, Lo/invalidateItemDecorations;->onTransact:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2152
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    .line 2153
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lo/invalidateItemDecorations;->onTransact:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 4012
    iget-object v0, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    const-string/jumbo v1, "scroller"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3056
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 5012
    iget-object v0, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3057
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 6012
    iget v2, p0, Lo/invalidateItemDecorations;->onPostMessage:I

    sub-int/2addr v2, v0

    .line 7012
    iput v0, p0, Lo/invalidateItemDecorations;->onPostMessage:I

    if-eqz v2, :cond_2

    .line 8012
    iget-object v3, p0, Lo/invalidateItemDecorations;->asInterface:Lo/invalidateItemDecorations$ICustomTabsCallback;

    .line 3061
    invoke-interface {v3, v2}, Lo/invalidateItemDecorations$ICustomTabsCallback;->onMessageChannelReady(I)V

    .line 9012
    :cond_2
    iget-object v2, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez v2, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3065
    :cond_3
    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_6

    .line 10012
    iget-object v0, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3066
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 11012
    iget-object v0, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez v0, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3067
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 12012
    :cond_6
    iget-object v0, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez v0, :cond_7

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3069
    :cond_7
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 13012
    iget-object v0, p0, Lo/invalidateItemDecorations;->onTransact:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 3070
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    return v2

    .line 3072
    :cond_9
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_a

    .line 14130
    iget-object p1, p0, Lo/invalidateItemDecorations;->asInterface:Lo/invalidateItemDecorations$ICustomTabsCallback;

    invoke-interface {p1}, Lo/invalidateItemDecorations$ICustomTabsCallback;->extraCallback()V

    .line 14131
    invoke-virtual {p0, v2}, Lo/invalidateItemDecorations;->extraCallback(I)V

    return v2

    .line 14135
    :cond_a
    iget-boolean p1, p0, Lo/invalidateItemDecorations;->extraCallback:Z

    if-eqz p1, :cond_b

    .line 14136
    iget-object p1, p0, Lo/invalidateItemDecorations;->asInterface:Lo/invalidateItemDecorations$ICustomTabsCallback;

    invoke-interface {p1}, Lo/invalidateItemDecorations$ICustomTabsCallback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 14137
    iput-boolean p1, p0, Lo/invalidateItemDecorations;->extraCallback:Z

    :cond_b
    return v2
.end method

.method public final onMessageChannelReady(II)V
    .locals 9

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scroll: distance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MixWheel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    const-string/jumbo v1, "scroller"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lo/invalidateItemDecorations;->onPostMessage:I

    .line 116
    iget-object v3, p0, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez v3, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    move v8, p2

    goto :goto_0

    :cond_2
    const/16 p2, 0x190

    const/16 v8, 0x190

    :goto_0
    move v7, p1

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1151
    iget-object p1, p0, Lo/invalidateItemDecorations;->onTransact:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 1152
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1147
    :cond_3
    iget-object p1, p0, Lo/invalidateItemDecorations;->onTransact:Landroid/os/Handler;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2123
    :cond_4
    iget-boolean p1, p0, Lo/invalidateItemDecorations;->extraCallback:Z

    if-nez p1, :cond_5

    .line 2124
    iput-boolean v2, p0, Lo/invalidateItemDecorations;->extraCallback:Z

    .line 2125
    iget-object p1, p0, Lo/invalidateItemDecorations;->asInterface:Lo/invalidateItemDecorations$ICustomTabsCallback;

    invoke-interface {p1}, Lo/invalidateItemDecorations$ICustomTabsCallback;->ICustomTabsCallback()V

    :cond_5
    return-void
.end method
