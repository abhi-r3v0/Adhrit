.class public abstract Lo/setItemInvoker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;
.implements Lo/setChecked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setItemInvoker$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Path;

.field private final ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final asBinder:[F

.field private final asInterface:Landroid/graphics/RectF;

.field private final extraCallback:Landroid/graphics/Path;

.field private getInterfaceDescriptor:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Landroid/graphics/Paint;

.field private final onNavigationEvent:Landroid/graphics/PathMeasure;

.field protected final onPostMessage:Lo/setOverlayMode;

.field private final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setItemInvoker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/createCheckedTextView;

.field private final warmup:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLo/getTabContainer;Lo/setTransitioning;Ljava/util/List;Lo/setTransitioning;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createCheckedTextView;",
            "Lo/setOverlayMode;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lo/getTabContainer;",
            "Lo/setTransitioning;",
            "Ljava/util/List<",
            "Lo/setTransitioning;",
            ">;",
            "Lo/setTransitioning;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lo/setItemInvoker;->onNavigationEvent:Landroid/graphics/PathMeasure;

    .line 40
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setItemInvoker;->ICustomTabsCallback:Landroid/graphics/Path;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setItemInvoker;->asInterface:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setItemInvoker;->onRelationshipValidationResult:Ljava/util/List;

    .line 47
    new-instance v0, Lo/createViewByPrefix;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/createViewByPrefix;-><init>(I)V

    iput-object v0, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    .line 58
    iput-object p1, p0, Lo/setItemInvoker;->onTransact:Lo/createCheckedTextView;

    .line 59
    iput-object p2, p0, Lo/setItemInvoker;->onPostMessage:Lo/setOverlayMode;

    .line 61
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p1, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    iget-object p1, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 64
    iget-object p1, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1020
    new-instance p1, Lo/showOverflowMenu;

    iget-object p3, p6, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p1, p3}, Lo/showOverflowMenu;-><init>(Ljava/util/List;)V

    .line 66
    iput-object p1, p0, Lo/setItemInvoker;->warmup:Lo/isOverflowMenuShowPending;

    .line 2020
    new-instance p1, Lo/isOverflowMenuShowing;

    iget-object p3, p7, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p1, p3}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 67
    iput-object p1, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    goto :goto_0

    .line 3020
    :cond_0
    new-instance p1, Lo/isOverflowMenuShowing;

    iget-object p3, p9, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p1, p3}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 72
    iput-object p1, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    .line 74
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/setItemInvoker;->ICustomTabsService:Ljava/util/List;

    .line 75
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lo/setItemInvoker;->asBinder:[F

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 77
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 78
    iget-object p4, p0, Lo/setItemInvoker;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/setTransitioning;

    .line 4020
    new-instance p6, Lo/isOverflowMenuShowing;

    iget-object p5, p5, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p6, p5}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 78
    invoke-interface {p4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 81
    :cond_1
    iget-object p3, p0, Lo/setItemInvoker;->warmup:Lo/isOverflowMenuShowPending;

    if-eqz p3, :cond_2

    .line 4173
    iget-object p4, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_2
    iget-object p3, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz p3, :cond_3

    .line 5173
    iget-object p4, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 p3, 0x0

    .line 83
    :goto_2
    iget-object p4, p0, Lo/setItemInvoker;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_5

    .line 84
    iget-object p4, p0, Lo/setItemInvoker;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo/isOverflowMenuShowPending;

    if-eqz p4, :cond_4

    .line 6173
    iget-object p5, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 86
    :cond_5
    iget-object p3, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p3, :cond_6

    if-eqz p3, :cond_6

    .line 7173
    iget-object p2, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    iget-object p2, p0, Lo/setItemInvoker;->warmup:Lo/isOverflowMenuShowPending;

    .line 8045
    iget-object p2, p2, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p2, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    .line 9045
    iget-object p2, p2, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 94
    iget-object p2, p0, Lo/setItemInvoker;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/isOverflowMenuShowPending;

    .line 10045
    iget-object p2, p2, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 96
    :cond_7
    iget-object p1, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_8

    .line 11045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method private ICustomTabsCallback(Landroid/graphics/Canvas;Lo/setItemInvoker$ICustomTabsCallback;Landroid/graphics/Matrix;)V
    .locals 11

    .line 182
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 17335
    iget-object v0, p2, Lo/setItemInvoker$ICustomTabsCallback;->ICustomTabsCallback:Lo/setupAnimatorToVisibility;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 18335
    iget-object v0, p2, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 189
    iget-object v1, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    .line 19335
    iget-object v2, p2, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 189
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setForceShowIcon;

    invoke-interface {v2}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lo/setItemInvoker;->onNavigationEvent:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 192
    iget-object v0, p0, Lo/setItemInvoker;->onNavigationEvent:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 193
    :goto_1
    iget-object v1, p0, Lo/setItemInvoker;->onNavigationEvent:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lo/setItemInvoker;->onNavigationEvent:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    .line 20335
    :cond_2
    iget-object v1, p2, Lo/setItemInvoker$ICustomTabsCallback;->ICustomTabsCallback:Lo/setupAnimatorToVisibility;

    .line 21068
    iget-object v1, v1, Lo/setupAnimatorToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    .line 196
    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float v1, v1, v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    .line 21335
    iget-object v3, p2, Lo/setItemInvoker$ICustomTabsCallback;->ICustomTabsCallback:Lo/setupAnimatorToVisibility;

    .line 22060
    iget-object v3, v3, Lo/setupAnimatorToVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    .line 198
    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    mul-float v3, v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 22335
    iget-object v5, p2, Lo/setItemInvoker$ICustomTabsCallback;->ICustomTabsCallback:Lo/setupAnimatorToVisibility;

    .line 23064
    iget-object v5, v5, Lo/setupAnimatorToVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    .line 200
    invoke-virtual {v5}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    mul-float v5, v5, v0

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    .line 23335
    iget-object v1, p2, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 203
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ltz v1, :cond_9

    .line 204
    iget-object v7, p0, Lo/setItemInvoker;->ICustomTabsCallback:Landroid/graphics/Path;

    .line 24335
    iget-object v8, p2, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 204
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/setForceShowIcon;

    invoke-interface {v8}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 205
    iget-object v7, p0, Lo/setItemInvoker;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v7, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 206
    iget-object v7, p0, Lo/setItemInvoker;->onNavigationEvent:Landroid/graphics/PathMeasure;

    iget-object v8, p0, Lo/setItemInvoker;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 207
    iget-object v7, p0, Lo/setItemInvoker;->onNavigationEvent:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v5, v0

    if-lez v9, :cond_4

    sub-float v9, v5, v0

    add-float v10, v6, v7

    cmpg-float v10, v9, v10

    if-gez v10, :cond_4

    cmpg-float v10, v6, v9

    if-gez v10, :cond_4

    cmpl-float v10, v3, v0

    if-lez v10, :cond_3

    sub-float v10, v3, v0

    div-float/2addr v10, v7

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    div-float/2addr v9, v7

    .line 218
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto :goto_5

    :cond_4
    add-float v9, v6, v7

    cmpg-float v10, v9, v3

    if-ltz v10, :cond_8

    cmpl-float v10, v6, v5

    if-gtz v10, :cond_8

    cmpg-float v10, v9, v5

    if-gtz v10, :cond_5

    cmpg-float v10, v3, v6

    if-gez v10, :cond_5

    .line 226
    iget-object v8, p0, Lo/setItemInvoker;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v9, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_5
    cmpg-float v10, v3, v6

    if-gez v10, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    sub-float v10, v3, v6

    div-float/2addr v10, v7

    :goto_4
    cmpl-float v9, v5, v9

    if-lez v9, :cond_7

    goto :goto_5

    :cond_7
    sub-float v8, v5, v6

    div-float/2addr v8, v7

    .line 240
    :goto_5
    iget-object v9, p0, Lo/setItemInvoker;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-static {v9, v10, v8, v4}, Lo/ActionBarOverlayLayout$LayoutParams;->extraCallback(Landroid/graphics/Path;FFF)V

    .line 241
    iget-object v8, p0, Lo/setItemInvoker;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v9, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    :goto_6
    add-float/2addr v6, v7

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 245
    :cond_9
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 102
    iget-object v0, p0, Lo/setItemInvoker;->onTransact:Lo/createCheckedTextView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V
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

    .line 312
    sget-object v0, Lo/createRatingBar;->extraCallback:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 313
    iget-object p1, p0, Lo/setItemInvoker;->warmup:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 314
    :cond_0
    sget-object v0, Lo/createRatingBar;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 315
    iget-object p1, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 316
    :cond_1
    sget-object v0, Lo/createRatingBar;->cancel:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    .line 317
    iget-object p1, p0, Lo/setItemInvoker;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_2

    .line 318
    iget-object v0, p0, Lo/setItemInvoker;->onPostMessage:Lo/setOverlayMode;

    .line 27177
    iget-object v0, v0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    .line 322
    iput-object p1, p0, Lo/setItemInvoker;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    return-void

    .line 324
    :cond_3
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/setItemInvoker;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    .line 28045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object p1, p0, Lo/setItemInvoker;->onPostMessage:Lo/setOverlayMode;

    iget-object p2, p0, Lo/setItemInvoker;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_4

    .line 28173
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setPadding;

    .line 109
    instance-of v4, v3, Lo/setupAnimatorToVisibility;

    if-eqz v4, :cond_0

    check-cast v3, Lo/setupAnimatorToVisibility;

    .line 11056
    iget-object v4, v3, Lo/setupAnimatorToVisibility;->onMessageChannelReady:Lo/init$ICustomTabsCallback;

    .line 110
    sget-object v5, Lo/init$ICustomTabsCallback;->ICustomTabsCallback:Lo/init$ICustomTabsCallback;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 12052
    iget-object p1, v2, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_7

    .line 120
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 121
    instance-of v3, v0, Lo/setupAnimatorToVisibility;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lo/setupAnimatorToVisibility;

    .line 12056
    iget-object v5, v3, Lo/setupAnimatorToVisibility;->onMessageChannelReady:Lo/init$ICustomTabsCallback;

    .line 122
    sget-object v6, Lo/init$ICustomTabsCallback;->ICustomTabsCallback:Lo/init$ICustomTabsCallback;

    if-ne v5, v6, :cond_4

    if-eqz v1, :cond_3

    .line 124
    iget-object v0, p0, Lo/setItemInvoker;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    new-instance v0, Lo/setItemInvoker$ICustomTabsCallback;

    invoke-direct {v0, v3, v4}, Lo/setItemInvoker$ICustomTabsCallback;-><init>(Lo/setupAnimatorToVisibility;B)V

    .line 13052
    iget-object v1, v3, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_2

    .line 128
    :cond_4
    instance-of v3, v0, Lo/setForceShowIcon;

    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    .line 130
    new-instance v1, Lo/setItemInvoker$ICustomTabsCallback;

    invoke-direct {v1, v2, v4}, Lo/setItemInvoker$ICustomTabsCallback;-><init>(Lo/setupAnimatorToVisibility;B)V

    .line 13335
    :cond_5
    iget-object v3, v1, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 132
    check-cast v0, Lo/setForceShowIcon;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 136
    iget-object p1, p0, Lo/setItemInvoker;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    .line 249
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 250
    iget-object p3, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 251
    :goto_0
    iget-object v1, p0, Lo/setItemInvoker;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lo/setItemInvoker;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setItemInvoker$ICustomTabsCallback;

    const/4 v2, 0x0

    .line 25335
    :goto_1
    iget-object v3, v1, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 253
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 254
    iget-object v3, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    .line 26335
    iget-object v4, v1, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 254
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setForceShowIcon;

    invoke-interface {v4}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object p2, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    iget-object v0, p0, Lo/setItemInvoker;->asInterface:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 259
    iget-object p2, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    check-cast p2, Lo/isOverflowMenuShowing;

    invoke-virtual {p2}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result p2

    .line 260
    iget-object p3, p0, Lo/setItemInvoker;->asInterface:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    iget-object v1, p0, Lo/setItemInvoker;->asInterface:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lo/setItemInvoker;->asInterface:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    iget-object v3, p0, Lo/setItemInvoker;->asInterface:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 262
    iget-object p2, p0, Lo/setItemInvoker;->asInterface:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 264
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method public onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 141
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 142
    invoke-static {p2}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void

    :cond_0
    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 146
    iget-object v1, p0, Lo/setItemInvoker;->warmup:Lo/isOverflowMenuShowPending;

    check-cast v1, Lo/showOverflowMenu;

    invoke-virtual {v1}, Lo/showOverflowMenu;->onTransact()I

    move-result v1

    int-to-float v1, v1

    mul-float p3, p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 147
    iget-object v0, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-static {p3}, Lo/onContentScrollStopped;->ICustomTabsCallback(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    iget-object p3, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    iget-object v0, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    check-cast v0, Lo/isOverflowMenuShowing;

    invoke-virtual {v0}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v0

    invoke-static {p2}, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent(Landroid/graphics/Matrix;)F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object p3, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_1

    .line 151
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void

    .line 14274
    :cond_1
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 14275
    iget-object p3, p0, Lo/setItemInvoker;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 14276
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    goto :goto_3

    .line 14280
    :cond_2
    invoke-static {p2}, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent(Landroid/graphics/Matrix;)F

    move-result p3

    const/4 v2, 0x0

    .line 14281
    :goto_0
    iget-object v3, p0, Lo/setItemInvoker;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 14282
    iget-object v3, p0, Lo/setItemInvoker;->asBinder:[F

    iget-object v4, p0, Lo/setItemInvoker;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/isOverflowMenuShowPending;

    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aput v4, v3, v2

    .line 14287
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    .line 14288
    iget-object v3, p0, Lo/setItemInvoker;->asBinder:[F

    aget v4, v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 14289
    aput v5, v3, v2

    goto :goto_1

    .line 14292
    :cond_3
    iget-object v3, p0, Lo/setItemInvoker;->asBinder:[F

    aget v4, v3, v2

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 14293
    aput v5, v3, v2

    .line 14296
    :cond_4
    :goto_1
    iget-object v3, p0, Lo/setItemInvoker;->asBinder:[F

    aget v4, v3, v2

    mul-float v4, v4, p3

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14298
    :cond_5
    iget-object v2, p0, Lo/setItemInvoker;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float v0, v0, p3

    .line 14299
    :goto_2
    iget-object p3, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Lo/setItemInvoker;->asBinder:[F

    invoke-direct {v2, v3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 14300
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 156
    :goto_3
    iget-object p3, p0, Lo/setItemInvoker;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    if-eqz p3, :cond_7

    .line 157
    iget-object v0, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    :cond_7
    :goto_4
    iget-object p3, p0, Lo/setItemInvoker;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_a

    .line 161
    iget-object p3, p0, Lo/setItemInvoker;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/setItemInvoker$ICustomTabsCallback;

    .line 14335
    iget-object v0, p3, Lo/setItemInvoker$ICustomTabsCallback;->ICustomTabsCallback:Lo/setupAnimatorToVisibility;

    if-eqz v0, :cond_8

    .line 165
    invoke-direct {p0, p1, p3, p2}, Lo/setItemInvoker;->ICustomTabsCallback(Landroid/graphics/Canvas;Lo/setItemInvoker$ICustomTabsCallback;Landroid/graphics/Matrix;)V

    goto :goto_6

    .line 167
    :cond_8
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 168
    iget-object v0, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 15335
    iget-object v0, p3, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_9

    .line 170
    iget-object v2, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    .line 16335
    iget-object v3, p3, Lo/setItemInvoker$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 170
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setForceShowIcon;

    invoke-interface {v3}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 172
    :cond_9
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 173
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 174
    iget-object p3, p0, Lo/setItemInvoker;->extraCallback:Landroid/graphics/Path;

    iget-object v0, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 178
    :cond_a
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method public final onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionBarContainer;",
            "I",
            "Ljava/util/List<",
            "Lo/ActionBarContainer;",
            ">;",
            "Lo/ActionBarContainer;",
            ")V"
        }
    .end annotation

    .line 305
    invoke-static {p1, p2, p3, p4, p0}, Lo/onContentScrollStopped;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;Lo/onAnimationCancel;)V

    return-void
.end method
