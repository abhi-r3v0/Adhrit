.class public Lo/addAnimatorUpdateListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/reverseAnimationSpeed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/reverseAnimationSpeed;",
        ">",
        "Ljava/lang/Object;",
        "Lo/reverseAnimationSpeed;"
    }
.end annotation


# instance fields
.field private extraCallback:Lo/reverseAnimationSpeed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/reverseAnimationSpeed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 100
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 102
    :cond_0
    invoke-interface {v0}, Lo/reverseAnimationSpeed;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(Landroid/graphics/Rect;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lo/reverseAnimationSpeed;->ICustomTabsCallback(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lo/reverseAnimationSpeed;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()I
    .locals 1

    .line 44
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lo/reverseAnimationSpeed;->extraCallback()I

    move-result v0

    return v0
.end method

.method public final extraCallback(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lo/reverseAnimationSpeed;->extraCallback(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lo/reverseAnimationSpeed;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lo/reverseAnimationSpeed;->onMessageChannelReady(I)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 54
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lo/reverseAnimationSpeed;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(I)I
    .locals 1

    .line 49
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lo/reverseAnimationSpeed;->onNavigationEvent(I)I

    move-result p1

    return p1
.end method

.method public final onPostMessage()I
    .locals 1

    .line 107
    iget-object v0, p0, Lo/addAnimatorUpdateListener;->extraCallback:Lo/reverseAnimationSpeed;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 109
    :cond_0
    invoke-interface {v0}, Lo/reverseAnimationSpeed;->onPostMessage()I

    move-result v0

    return v0
.end method
