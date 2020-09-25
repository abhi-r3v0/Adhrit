.class public final Lo/toLocalMotionEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSupportImageTintList$onMessageChannelReady;


# instance fields
.field private final onMessageChannelReady:Lo/ButtonBarLayout;

.field private final onNavigationEvent:Lo/dispatchFitSystemWindows;


# direct methods
.method public constructor <init>(Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/toLocalMotionEvent;->onNavigationEvent:Lo/dispatchFitSystemWindows;

    .line 31
    iput-object p2, p0, Lo/toLocalMotionEvent;->onMessageChannelReady:Lo/ButtonBarLayout;

    return-void
.end method


# virtual methods
.method public final extraCallback([B)V
    .locals 1

    .line 56
    iget-object v0, p0, Lo/toLocalMotionEvent;->onMessageChannelReady:Lo/ButtonBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-interface {v0, p1}, Lo/ButtonBarLayout;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(I)[I
    .locals 2

    .line 65
    iget-object v0, p0, Lo/toLocalMotionEvent;->onMessageChannelReady:Lo/ButtonBarLayout;

    if-nez v0, :cond_0

    .line 66
    new-array p1, p1, [I

    return-object p1

    .line 68
    :cond_0
    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lo/ButtonBarLayout;->onNavigationEvent(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public final onNavigationEvent(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/toLocalMotionEvent;->onNavigationEvent:Lo/dispatchFitSystemWindows;

    invoke-interface {v0, p1, p2, p3}, Lo/dispatchFitSystemWindows;->ICustomTabsCallback(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(I)[B
    .locals 2

    .line 48
    iget-object v0, p0, Lo/toLocalMotionEvent;->onMessageChannelReady:Lo/ButtonBarLayout;

    if-nez v0, :cond_0

    .line 49
    new-array p1, p1, [B

    return-object p1

    .line 51
    :cond_0
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lo/ButtonBarLayout;->onNavigationEvent(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public final onPostMessage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lo/toLocalMotionEvent;->onNavigationEvent:Lo/dispatchFitSystemWindows;

    invoke-interface {v0, p1}, Lo/dispatchFitSystemWindows;->extraCallback(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onPostMessage([I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/toLocalMotionEvent;->onMessageChannelReady:Lo/ButtonBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-interface {v0, p1}, Lo/ButtonBarLayout;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method
