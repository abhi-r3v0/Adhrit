.class public final Lo/ActionBarOverlayLayout;
.super Lo/setOverlayMode;
.source ""


# instance fields
.field private final ICustomTabsCallback$Stub:Landroid/graphics/Rect;

.field private ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Landroid/graphics/Paint;

.field private final newSession:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lo/setOverlayMode;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    .line 23
    new-instance p1, Lo/createViewByPrefix;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lo/createViewByPrefix;-><init>(I)V

    iput-object p1, p0, Lo/ActionBarOverlayLayout;->asBinder:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/ActionBarOverlayLayout;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    .line 25
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/ActionBarOverlayLayout;->newSession:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1062
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 1115
    iget-object v0, v0, Lo/setActionBarVisibilityCallback;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1063
    iget-object v1, p0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    .line 2042
    invoke-virtual {v1}, Lo/createCheckedTextView;->ICustomTabsCallback()Lo/onFinishInflate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2044
    invoke-virtual {v1, v0}, Lo/onFinishInflate;->onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v1

    .line 39
    iget-object v2, p0, Lo/ActionBarOverlayLayout;->asBinder:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    iget-object p3, p0, Lo/ActionBarOverlayLayout;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p3, :cond_2

    .line 41
    iget-object v2, p0, Lo/ActionBarOverlayLayout;->asBinder:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 45
    iget-object p2, p0, Lo/ActionBarOverlayLayout;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    iget-object p2, p0, Lo/ActionBarOverlayLayout;->newSession:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    iget-object p2, p0, Lo/ActionBarOverlayLayout;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    iget-object p3, p0, Lo/ActionBarOverlayLayout;->newSession:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/ActionBarOverlayLayout;->asBinder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/onMeasureExactFormat<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1, p2}, Lo/setOverlayMode;->extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    .line 70
    sget-object v0, Lo/createRatingBar;->cancel:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lo/ActionBarOverlayLayout;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    return-void

    .line 75
    :cond_0
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/ActionBarOverlayLayout;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 52
    invoke-super {p0, p1, p2, p3}, Lo/setOverlayMode;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2062
    iget-object p2, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 2115
    iget-object p2, p2, Lo/setActionBarVisibilityCallback;->onRelationshipValidationResult:Ljava/lang/String;

    .line 2063
    iget-object p3, p0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    .line 3042
    invoke-virtual {p3}, Lo/createCheckedTextView;->ICustomTabsCallback()Lo/onFinishInflate;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3044
    invoke-virtual {p3, p2}, Lo/onFinishInflate;->onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v0

    mul-float p3, p3, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v0

    mul-float p2, p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    iget-object p2, p0, Lo/setOverlayMode;->onNavigationEvent:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    return-void
.end method
