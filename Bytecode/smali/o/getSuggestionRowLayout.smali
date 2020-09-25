.class public final Lo/getSuggestionRowLayout;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0019\u001a\u00020\u0014H\u0016J$\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J\u0010\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"H\u0016J\u0006\u0010$\u001a\u00020\u0014J\u0010\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\u0011H\u0016J\"\u0010\'\u001a\u00020\u00142\u001a\u0010(\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0004\u0018\u0001`\u0015J\u0010\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u0007H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0004\u0018\u0001`\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/cred/pay/ui/views/SwipeButton;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "bgLayout",
        "Landroid/view/View;",
        "callback",
        "Landroidx/customview/widget/ViewDragHelper$Callback;",
        "fgLayout",
        "oldBgThumbCenter",
        "oldFgThumbCenter",
        "swipeEnabled",
        "",
        "swipeListener",
        "Lkotlin/Function1;",
        "",
        "Lcom/cred/pay/ui/views/OnSwipeListener;",
        "thumbDragHelper",
        "Landroidx/customview/widget/ViewDragHelper;",
        "thumbLayout",
        "computeScroll",
        "drawChild",
        "canvas",
        "Landroid/graphics/Canvas;",
        "child",
        "drawingTime",
        "",
        "onInterceptTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "resetView",
        "setEnabled",
        "enabled",
        "setOnSwipeListener",
        "listener",
        "settleThumbView",
        "finalLeft",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/view/View;

.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field public final extraCallback:Landroid/view/View;

.field public final onMessageChannelReady:Lo/rate;

.field public onNavigationEvent:Z

.field private final onPostMessage:Landroid/view/View;

.field private onRelationshipValidationResult:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/view/View;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/rate$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/getSuggestionRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/getSuggestionRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 36
    iput-boolean p3, p0, Lo/getSuggestionRowLayout;->onNavigationEvent:Z

    .line 39
    sget-object v0, Lo/onItemHoverEnter$asBinder;->SwipeButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 41
    :try_start_0
    sget v0, Lo/onItemHoverEnter$asBinder;->SwipeButton_swBackgroundView:I

    sget v1, Lo/onItemHoverEnter$onTransact;->swipe_bg_layout:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    sget v0, Lo/onItemHoverEnter$asBinder;->SwipeButton_swForegroundView:I

    sget v1, Lo/onItemHoverEnter$onTransact;->swipe_fg_layout:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget v0, Lo/onItemHoverEnter$asBinder;->SwipeButton_swThumbLayout:I

    sget v1, Lo/onItemHoverEnter$onTransact;->swipe_thumb_layout:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "getChildAt(0)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getSuggestionRowLayout;->onPostMessage:Landroid/view/View;

    .line 50
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "getChildAt(1)"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getSuggestionRowLayout;->ICustomTabsCallback:Landroid/view/View;

    const/4 p1, 0x2

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "getChildAt(2)"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getSuggestionRowLayout;->extraCallback:Landroid/view/View;

    .line 52
    new-instance p1, Lo/getSuggestionRowLayout$3;

    invoke-direct {p1, p0}, Lo/getSuggestionRowLayout$3;-><init>(Lo/getSuggestionRowLayout;)V

    check-cast p1, Lo/rate$ICustomTabsCallback;

    iput-object p1, p0, Lo/getSuggestionRowLayout;->onTransact:Lo/rate$ICustomTabsCallback;

    .line 96
    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0, p1}, Lo/rate;->onNavigationEvent(Landroid/view/ViewGroup;FLo/rate$ICustomTabsCallback;)Lo/rate;

    move-result-object p1

    const-string p3, "ViewDragHelper.create(this, 1.0f, callback)"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getSuggestionRowLayout;->onMessageChannelReady:Lo/rate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, -0x1

    .line 118
    iput p1, p0, Lo/getSuggestionRowLayout;->asBinder:I

    .line 119
    iput p1, p0, Lo/getSuggestionRowLayout;->ICustomTabsCallback$Stub:I

    return-void

    .line 46
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "cannot add views inside SwipeButton"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 99
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lo/getSuggestionRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getSuggestionRowLayout;)Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/getSuggestionRowLayout;->extraCallback:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getSuggestionRowLayout;I)V
    .locals 2

    .line 1114
    iget-object v0, p0, Lo/getSuggestionRowLayout;->onMessageChannelReady:Lo/rate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/rate;->onPostMessage(II)Z

    .line 1115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getSuggestionRowLayout;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lo/getSuggestionRowLayout;->onNavigationEvent:Z

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getSuggestionRowLayout;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lo/getSuggestionRowLayout;->onNavigationEvent:Z

    return p0
.end method

.method public static final synthetic onPostMessage(Lo/getSuggestionRowLayout;)Lo/onDisconnectSetValue;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/getSuggestionRowLayout;->onRelationshipValidationResult:Lo/onDisconnectSetValue;

    return-object p0
.end method


# virtual methods
.method public final computeScroll()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 163
    iget-object v0, p0, Lo/getSuggestionRowLayout;->onMessageChannelReady:Lo/rate;

    invoke-virtual {v0}, Lo/rate;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 122
    iget-object v0, p0, Lo/getSuggestionRowLayout;->extraCallback:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lo/getSuggestionRowLayout;->extraCallback:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 123
    iget-object v1, p0, Lo/getSuggestionRowLayout;->ICustomTabsCallback:Landroid/view/View;

    invoke-static {p2, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 169
    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 125
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 127
    iget v1, p0, Lo/getSuggestionRowLayout;->asBinder:I

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 128
    :goto_2
    iput v0, p0, Lo/getSuggestionRowLayout;->asBinder:I

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 130
    :goto_3
    iget-object v4, p0, Lo/getSuggestionRowLayout;->onPostMessage:Landroid/view/View;

    invoke-static {p2, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 177
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 132
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :catchall_1
    move-exception p2

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p2

    :cond_4
    :goto_4
    if-nez v1, :cond_6

    .line 134
    iget v1, p0, Lo/getSuggestionRowLayout;->ICustomTabsCallback$Stub:I

    if-eq v1, v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 135
    :cond_6
    :goto_5
    iput v0, p0, Lo/getSuggestionRowLayout;->ICustomTabsCallback$Stub:I

    move v1, v2

    .line 137
    :cond_7
    iget-object v0, p0, Lo/getSuggestionRowLayout;->extraCallback:Landroid/view/View;

    invoke-static {p2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    :cond_8
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lo/getSuggestionRowLayout;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getSuggestionRowLayout;->onMessageChannelReady:Lo/rate;

    invoke-virtual {v0, p1}, Lo/rate;->onPostMessage(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-boolean v0, p0, Lo/getSuggestionRowLayout;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lo/getSuggestionRowLayout;->onMessageChannelReady:Lo/rate;

    invoke-virtual {v0, p1}, Lo/rate;->extraCallback(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 146
    iput-boolean p1, p0, Lo/getSuggestionRowLayout;->onNavigationEvent:Z

    return-void
.end method

.method public final setOnSwipeListener(Lo/onDisconnectSetValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/view/View;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lo/getSuggestionRowLayout;->onRelationshipValidationResult:Lo/onDisconnectSetValue;

    return-void
.end method
