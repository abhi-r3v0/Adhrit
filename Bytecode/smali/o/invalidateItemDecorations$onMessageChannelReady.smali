.class public final Lo/invalidateItemDecorations$onMessageChannelReady;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/invalidateItemDecorations;-><init>(Landroid/content/Context;Lo/invalidateItemDecorations$ICustomTabsCallback;)V
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J,\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/helpers/LuckyNumberDigitScroller$gestureListener$1",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onFling",
        "",
        "e1",
        "Landroid/view/MotionEvent;",
        "e2",
        "velocityX",
        "",
        "velocityY",
        "onScroll",
        "distanceX",
        "distanceY",
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
.field private synthetic extraCallback:Lo/invalidateItemDecorations;


# direct methods
.method constructor <init>(Lo/invalidateItemDecorations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lo/invalidateItemDecorations$onMessageChannelReady;->extraCallback:Lo/invalidateItemDecorations;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 40
    iget-object p1, p0, Lo/invalidateItemDecorations$onMessageChannelReady;->extraCallback:Lo/invalidateItemDecorations;

    const/4 p2, 0x0

    .line 1012
    iput p2, p1, Lo/invalidateItemDecorations;->onPostMessage:I

    .line 43
    iget-object p1, p0, Lo/invalidateItemDecorations$onMessageChannelReady;->extraCallback:Lo/invalidateItemDecorations;

    .line 2012
    iget-object v0, p1, Lo/invalidateItemDecorations;->ICustomTabsCallback:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    const-string/jumbo p1, "scroller"

    invoke-static {p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 43
    iget-object p1, p0, Lo/invalidateItemDecorations$onMessageChannelReady;->extraCallback:Lo/invalidateItemDecorations;

    .line 3012
    iget v2, p1, Lo/invalidateItemDecorations;->onPostMessage:I

    const/4 v3, 0x0

    float-to-int p1, p4

    neg-int v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    .line 43
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 44
    iget-object p1, p0, Lo/invalidateItemDecorations$onMessageChannelReady;->extraCallback:Lo/invalidateItemDecorations;

    .line 4012
    invoke-virtual {p1, p2}, Lo/invalidateItemDecorations;->extraCallback(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
