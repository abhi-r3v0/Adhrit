.class public final Lo/isInOverlayMode;
.super Lo/setOverlayMode;
.source ""


# instance fields
.field private final ICustomTabsCallback$Stub:Ljava/lang/StringBuilder;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

.field private final ICustomTabsService:Landroid/graphics/Paint;

.field private ICustomTabsService$Stub:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub$Proxy:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private IPostMessageService:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub$Proxy:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Landroid/graphics/RectF;

.field private extraCommand:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/isCurrent$onNavigationEvent;",
            "Ljava/util/List<",
            "Lo/setCheckable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mayLaunchUrl:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final newSession:Landroid/graphics/Matrix;

.field private notify:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final postMessage:Lo/AbsActionBarView$VisibilityAnimListener;

.field private final requestPostMessageChannel:Lo/createCheckedTextView;

.field private final updateVisuals:Lo/createCheckBox;

.field private validateRelationship:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final warmup:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1, p2}, Lo/setOverlayMode;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/isInOverlayMode;->asBinder:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/isInOverlayMode;->newSession:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Lo/isInOverlayMode$4;

    invoke-direct {v0}, Lo/isInOverlayMode$4;-><init>()V

    iput-object v0, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Lo/isInOverlayMode$5;

    invoke-direct {v0}, Lo/isInOverlayMode$5;-><init>()V

    iput-object v0, p0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/isInOverlayMode;->getInterfaceDescriptor:Ljava/util/Map;

    .line 48
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/isInOverlayMode;->warmup:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 75
    iput-object p1, p0, Lo/isInOverlayMode;->requestPostMessageChannel:Lo/createCheckedTextView;

    .line 1091
    iget-object p1, p2, Lo/setActionBarVisibilityCallback;->onMessageChannelReady:Lo/createCheckBox;

    .line 76
    iput-object p1, p0, Lo/isInOverlayMode;->updateVisuals:Lo/createCheckBox;

    .line 1163
    iget-object p1, p2, Lo/setActionBarVisibilityCallback;->postMessage:Lo/getMeasuredHeightWithMargins;

    .line 2016
    new-instance v0, Lo/AbsActionBarView$VisibilityAnimListener;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/AbsActionBarView$VisibilityAnimListener;-><init>(Ljava/util/List;)V

    .line 78
    iput-object v0, p0, Lo/isInOverlayMode;->postMessage:Lo/AbsActionBarView$VisibilityAnimListener;

    .line 2045
    iget-object p1, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lo/isInOverlayMode;->postMessage:Lo/AbsActionBarView$VisibilityAnimListener;

    if-eqz p1, :cond_0

    .line 2173
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3167
    :cond_0
    iget-object p1, p2, Lo/setActionBarVisibilityCallback;->extraCommand:Lo/isCurrent$onMessageChannelReady;

    if-eqz p1, :cond_1

    .line 83
    iget-object p2, p1, Lo/isCurrent$onMessageChannelReady;->onPostMessage:Lo/verifyDrawable;

    if-eqz p2, :cond_1

    .line 84
    iget-object p2, p1, Lo/isCurrent$onMessageChannelReady;->onPostMessage:Lo/verifyDrawable;

    .line 4015
    new-instance v0, Lo/postShowOverflowMenu;

    iget-object p2, p2, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p2}, Lo/postShowOverflowMenu;-><init>(Ljava/util/List;)V

    .line 84
    iput-object v0, p0, Lo/isInOverlayMode;->mayLaunchUrl:Lo/isOverflowMenuShowPending;

    .line 4045
    iget-object p2, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p2, p0, Lo/isInOverlayMode;->mayLaunchUrl:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_1

    .line 4173
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 89
    iget-object p2, p1, Lo/isCurrent$onMessageChannelReady;->ICustomTabsCallback:Lo/verifyDrawable;

    if-eqz p2, :cond_2

    .line 90
    iget-object p2, p1, Lo/isCurrent$onMessageChannelReady;->ICustomTabsCallback:Lo/verifyDrawable;

    .line 5015
    new-instance v0, Lo/postShowOverflowMenu;

    iget-object p2, p2, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p2}, Lo/postShowOverflowMenu;-><init>(Ljava/util/List;)V

    .line 90
    iput-object v0, p0, Lo/isInOverlayMode;->validateRelationship:Lo/isOverflowMenuShowPending;

    .line 5045
    iget-object p2, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p2, p0, Lo/isInOverlayMode;->validateRelationship:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_2

    .line 5173
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 95
    iget-object p2, p1, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady:Lo/setTransitioning;

    if-eqz p2, :cond_3

    .line 96
    iget-object p2, p1, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady:Lo/setTransitioning;

    .line 6020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p2, p2, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p2}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 96
    iput-object v0, p0, Lo/isInOverlayMode;->ICustomTabsService$Stub:Lo/isOverflowMenuShowPending;

    .line 6045
    iget-object p2, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p2, p0, Lo/isInOverlayMode;->ICustomTabsService$Stub:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_3

    .line 6173
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 101
    iget-object p2, p1, Lo/isCurrent$onMessageChannelReady;->extraCallback:Lo/setTransitioning;

    if-eqz p2, :cond_4

    .line 102
    iget-object p1, p1, Lo/isCurrent$onMessageChannelReady;->extraCallback:Lo/setTransitioning;

    .line 7020
    new-instance p2, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p2, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 102
    iput-object p2, p0, Lo/isInOverlayMode;->IPostMessageService$Stub:Lo/isOverflowMenuShowPending;

    .line 7045
    iget-object p1, p2, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lo/isInOverlayMode;->IPostMessageService$Stub:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_4

    .line 7173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private onMessageChannelReady(Ljava/lang/String;Lo/setStackedBackground;Landroid/graphics/Canvas;F)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 296
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 24412
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 24413
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 24416
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 24417
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 24442
    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v6

    const/16 v7, 0x10

    if-eq v6, v7, :cond_1

    .line 24443
    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v6

    const/16 v7, 0x1b

    if-eq v6, v7, :cond_1

    .line 24444
    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    .line 24445
    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v6

    const/16 v7, 0x1c

    if-eq v6, v7, :cond_1

    .line 24446
    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v6

    const/16 v7, 0x13

    if-ne v6, v7, :cond_0

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_2

    .line 24421
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    goto :goto_1

    .line 24426
    :cond_2
    iget-object v4, p0, Lo/isInOverlayMode;->warmup:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24427
    iget-object v2, p0, Lo/isInOverlayMode;->warmup:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const/4 v3, 0x0

    .line 25109
    invoke-virtual {v2, v6, v7, v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 24427
    check-cast v2, Ljava/lang/String;

    goto :goto_5

    .line 24430
    :cond_3
    iget-object v2, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_4

    .line 24432
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 24433
    iget-object v8, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 24434
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 24436
    :cond_4
    iget-object v2, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24437
    iget-object v3, p0, Lo/isInOverlayMode;->warmup:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3, v6, v7, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    .line 298
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 25377
    iget-boolean v3, p2, Lo/setStackedBackground;->newSession:Z

    if-eqz v3, :cond_5

    .line 25378
    iget-object v3, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-static {v2, v3, p3}, Lo/isInOverlayMode;->ICustomTabsCallback(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 25379
    iget-object v3, p0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-static {v2, v3, p3}, Lo/isInOverlayMode;->ICustomTabsCallback(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 25381
    :cond_5
    iget-object v3, p0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-static {v2, v3, p3}, Lo/isInOverlayMode;->ICustomTabsCallback(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 25382
    iget-object v3, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-static {v2, v3, p3}, Lo/isInOverlayMode;->ICustomTabsCallback(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 300
    :goto_6
    iget-object v3, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    .line 302
    iget v3, p2, Lo/setStackedBackground;->onNavigationEvent:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 303
    iget-object v4, p0, Lo/isInOverlayMode;->IPostMessageService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz v4, :cond_6

    .line 304
    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    :goto_7
    add-float/2addr v3, v4

    goto :goto_8

    .line 305
    :cond_6
    iget-object v4, p0, Lo/isInOverlayMode;->IPostMessageService$Stub:Lo/isOverflowMenuShowPending;

    if-eqz v4, :cond_7

    .line 306
    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    goto :goto_7

    :cond_7
    :goto_8
    mul-float v3, v3, p4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    .line 309
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private static onMessageChannelReady(Lo/setStackedBackground$ICustomTabsCallback;Landroid/graphics/Canvas;F)V
    .locals 2

    .line 329
    sget-object v0, Lo/isInOverlayMode$2;->onPostMessage:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    .line 337
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void

    :cond_1
    neg-float p0, p2

    .line 334
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private onMessageChannelReady(Lo/setStackedBackground;Lo/isCurrent$extraCallback;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 7

    .line 237
    invoke-static {p3}, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent(Landroid/graphics/Matrix;)F

    move-result v0

    .line 238
    iget-object v1, p0, Lo/isInOverlayMode;->requestPostMessageChannel:Lo/createCheckedTextView;

    .line 20023
    iget-object v2, p2, Lo/isCurrent$extraCallback;->extraCallback:Ljava/lang/String;

    .line 20031
    iget-object p2, p2, Lo/isCurrent$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 20077
    invoke-virtual {v1}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v1, v4

    goto :goto_0

    .line 20082
    :cond_0
    iget-object v3, v1, Lo/createCheckedTextView;->ICustomTabsCallback$Stub$Proxy:Lo/setPrimaryBackground;

    if-nez v3, :cond_1

    .line 20083
    new-instance v3, Lo/setPrimaryBackground;

    invoke-virtual {v1}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    iget-object v6, v1, Lo/createCheckedTextView;->ICustomTabsService:Lo/createImageButton;

    invoke-direct {v3, v5, v6}, Lo/setPrimaryBackground;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lo/createImageButton;)V

    iput-object v3, v1, Lo/createCheckedTextView;->ICustomTabsCallback$Stub$Proxy:Lo/setPrimaryBackground;

    .line 20086
    :cond_1
    iget-object v1, v1, Lo/createCheckedTextView;->ICustomTabsCallback$Stub$Proxy:Lo/setPrimaryBackground;

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 21056
    iget-object v4, v1, Lo/setPrimaryBackground;->onMessageChannelReady:Lo/jumpDrawablesToCurrentState;

    .line 22019
    iput-object v2, v4, Lo/jumpDrawablesToCurrentState;->ICustomTabsCallback:Ljava/lang/Object;

    .line 22020
    iput-object p2, v4, Lo/jumpDrawablesToCurrentState;->extraCallback:Ljava/lang/Object;

    .line 21057
    iget-object v4, v1, Lo/setPrimaryBackground;->onNavigationEvent:Ljava/util/Map;

    iget-object v5, v1, Lo/setPrimaryBackground;->onMessageChannelReady:Lo/jumpDrawablesToCurrentState;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_2

    goto :goto_4

    .line 22068
    :cond_2
    iget-object v4, v1, Lo/setPrimaryBackground;->extraCallback:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_3

    goto :goto_1

    .line 22086
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fonts/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lo/setPrimaryBackground;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22087
    iget-object v5, v1, Lo/setPrimaryBackground;->onPostMessage:Landroid/content/res/AssetManager;

    invoke-static {v5, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 22090
    iget-object v5, v1, Lo/setPrimaryBackground;->extraCallback:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v2, "Italic"

    .line 22096
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "Bold"

    .line 22097
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    const/4 p2, 0x2

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    .line 22106
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    if-ne v2, p2, :cond_7

    goto :goto_3

    .line 22110
    :cond_7
    invoke-static {v4, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    move-object v4, p2

    .line 21063
    :goto_3
    iget-object p2, v1, Lo/setPrimaryBackground;->onNavigationEvent:Ljava/util/Map;

    iget-object v1, v1, Lo/setPrimaryBackground;->onMessageChannelReady:Lo/jumpDrawablesToCurrentState;

    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    return-void

    .line 242
    :cond_9
    iget-object p2, p1, Lo/setStackedBackground;->ICustomTabsCallback:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lo/isInOverlayMode;->requestPostMessageChannel:Lo/createCheckedTextView;

    .line 22893
    iget-object v1, v1, Lo/createCheckedTextView;->getInterfaceDescriptor:Lo/setPopupCallback;

    if-eqz v1, :cond_b

    .line 23084
    iget-boolean v2, v1, Lo/setPopupCallback;->onMessageChannelReady:Z

    if-eqz v2, :cond_a

    iget-object v2, v1, Lo/setPopupCallback;->extraCallback:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23085
    iget-object v1, v1, Lo/setPopupCallback;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_5

    .line 23088
    :cond_a
    iget-boolean v2, v1, Lo/setPopupCallback;->onMessageChannelReady:Z

    if-eqz v2, :cond_b

    .line 23089
    iget-object v1, v1, Lo/setPopupCallback;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_b
    :goto_5
    iget-object v1, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 249
    iget-object v1, p0, Lo/isInOverlayMode;->notify:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_c

    .line 250
    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_6

    .line 254
    :cond_c
    iget v1, p1, Lo/setStackedBackground;->onPostMessage:F

    .line 256
    :goto_6
    iget-object v2, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v4

    mul-float v1, v1, v4

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    iget-object v1, p0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    iget-object v2, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 258
    iget-object v1, p0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    iget-object v2, p0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    iget v1, p1, Lo/setStackedBackground;->ICustomTabsCallback$Stub:F

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v2

    mul-float v1, v1, v2

    const-string v2, "\r"

    const-string v4, "\r\n"

    .line 24289
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "\n"

    .line 24290
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24291
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 24292
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 265
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    if-ge v3, v2, :cond_d

    .line 268
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 269
    iget-object v5, p0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 272
    iget-object v6, p1, Lo/setStackedBackground;->extraCallback:Lo/setStackedBackground$ICustomTabsCallback;

    invoke-static {v6, p4, v5}, Lo/isInOverlayMode;->onMessageChannelReady(Lo/setStackedBackground$ICustomTabsCallback;Landroid/graphics/Canvas;F)V

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float v6, v6, v1

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    .line 277
    invoke-virtual {p4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    invoke-direct {p0, v4, p1, p4, v0}, Lo/isInOverlayMode;->onMessageChannelReady(Ljava/lang/String;Lo/setStackedBackground;Landroid/graphics/Canvas;F)V

    .line 283
    invoke-virtual {p4, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method private static onPostMessage(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 373
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    iget-object v3, v0, Lo/isInOverlayMode;->requestPostMessageChannel:Lo/createCheckedTextView;

    .line 9897
    iget-object v4, v3, Lo/createCheckedTextView;->getInterfaceDescriptor:Lo/setPopupCallback;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-object v3, v3, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 10169
    iget-object v3, v3, Lo/createCheckBox;->asBinder:Lo/describeContents;

    .line 9897
    invoke-virtual {v3}, Lo/describeContents;->onNavigationEvent()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 119
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 121
    :cond_1
    iget-object v3, v0, Lo/isInOverlayMode;->postMessage:Lo/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setStackedBackground;

    .line 122
    iget-object v4, v0, Lo/isInOverlayMode;->updateVisuals:Lo/createCheckBox;

    .line 10173
    iget-object v4, v4, Lo/createCheckBox;->onNavigationEvent:Ljava/util/Map;

    .line 122
    iget-object v7, v3, Lo/setStackedBackground;->onMessageChannelReady:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/isCurrent$extraCallback;

    if-nez v4, :cond_2

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 129
    :cond_2
    iget-object v7, v0, Lo/isInOverlayMode;->extraCommand:Lo/isOverflowMenuShowPending;

    if-eqz v7, :cond_3

    .line 130
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v7, v0, Lo/isInOverlayMode;->mayLaunchUrl:Lo/isOverflowMenuShowPending;

    if-eqz v7, :cond_4

    .line 132
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 134
    :cond_4
    iget-object v7, v0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    iget v8, v3, Lo/setStackedBackground;->onTransact:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    :goto_1
    iget-object v7, v0, Lo/isInOverlayMode;->ICustomTabsService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz v7, :cond_5

    .line 138
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 139
    :cond_5
    iget-object v7, v0, Lo/isInOverlayMode;->validateRelationship:Lo/isOverflowMenuShowPending;

    if-eqz v7, :cond_6

    .line 140
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 142
    :cond_6
    iget-object v7, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    iget v8, v3, Lo/setStackedBackground;->onRelationshipValidationResult:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    :goto_2
    iget-object v7, v0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    .line 11154
    iget-object v7, v7, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    const/16 v8, 0x64

    if-nez v7, :cond_7

    const/16 v7, 0x64

    goto :goto_3

    .line 144
    :cond_7
    iget-object v7, v0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    .line 12154
    iget-object v7, v7, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    .line 144
    invoke-virtual {v7}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    :goto_3
    mul-int/lit16 v7, v7, 0xff

    .line 145
    div-int/2addr v7, v8

    .line 146
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    iget-object v7, v0, Lo/isInOverlayMode;->IPostMessageService:Lo/isOverflowMenuShowPending;

    if-eqz v7, :cond_8

    .line 150
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    .line 151
    :cond_8
    iget-object v7, v0, Lo/isInOverlayMode;->ICustomTabsService$Stub:Lo/isOverflowMenuShowPending;

    if-eqz v7, :cond_9

    .line 152
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    .line 154
    :cond_9
    invoke-static/range {p2 .. p2}, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent(Landroid/graphics/Matrix;)F

    move-result v7

    .line 155
    iget-object v8, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    iget v9, v3, Lo/setStackedBackground;->asBinder:F

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v10

    mul-float v9, v9, v10

    mul-float v9, v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    :goto_4
    iget-object v7, v0, Lo/isInOverlayMode;->requestPostMessageChannel:Lo/createCheckedTextView;

    .line 12897
    iget-object v8, v7, Lo/createCheckedTextView;->getInterfaceDescriptor:Lo/setPopupCallback;

    if-nez v8, :cond_a

    iget-object v7, v7, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 13169
    iget-object v7, v7, Lo/createCheckBox;->asBinder:Lo/describeContents;

    .line 12897
    invoke-virtual {v7}, Lo/describeContents;->onNavigationEvent()I

    move-result v7

    if-lez v7, :cond_a

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_16

    .line 13170
    iget-object v5, v0, Lo/isInOverlayMode;->notify:Lo/isOverflowMenuShowPending;

    if-eqz v5, :cond_b

    .line 13171
    invoke-virtual {v5}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    goto :goto_6

    .line 13175
    :cond_b
    iget v5, v3, Lo/setStackedBackground;->onPostMessage:F

    :goto_6
    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    .line 13178
    invoke-static/range {p2 .. p2}, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent(Landroid/graphics/Matrix;)F

    move-result v7

    .line 13180
    iget-object v8, v3, Lo/setStackedBackground;->ICustomTabsCallback:Ljava/lang/String;

    .line 13183
    iget v9, v3, Lo/setStackedBackground;->ICustomTabsCallback$Stub:F

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v10

    mul-float v9, v9, v10

    const-string v10, "\r"

    const-string v11, "\r\n"

    .line 13289
    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "\n"

    .line 13290
    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13291
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 13292
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 13187
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_17

    .line 13190
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 13316
    :goto_8
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v14, v6, :cond_d

    .line 13317
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 14023
    iget-object v13, v4, Lo/isCurrent$extraCallback;->extraCallback:Ljava/lang/String;

    move-object/from16 v16, v8

    .line 14031
    iget-object v8, v4, Lo/isCurrent$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    mul-int/lit8 v6, v6, 0x1f

    .line 15017
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v13

    add-int/2addr v6, v13

    mul-int/lit8 v6, v6, 0x1f

    .line 15018
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v6, v8

    .line 13319
    iget-object v8, v0, Lo/isInOverlayMode;->updateVisuals:Lo/createCheckBox;

    .line 15169
    iget-object v8, v8, Lo/createCheckBox;->asBinder:Lo/describeContents;

    .line 13319
    invoke-virtual {v8, v6}, Lo/describeContents;->extraCallback(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/isCurrent$onNavigationEvent;

    if-eqz v6, :cond_c

    move-object v8, v12

    float-to-double v12, v15

    move-object/from16 v18, v8

    move/from16 v17, v9

    .line 16048
    iget-wide v8, v6, Lo/isCurrent$onNavigationEvent;->onPostMessage:D

    move v6, v10

    move/from16 v19, v11

    float-to-double v10, v5

    mul-double v8, v8, v10

    .line 13323
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v10

    float-to-double v10, v10

    mul-double v8, v8, v10

    float-to-double v10, v7

    mul-double v8, v8, v10

    add-double/2addr v12, v8

    double-to-float v15, v12

    goto :goto_9

    :cond_c
    move/from16 v17, v9

    move v6, v10

    move/from16 v19, v11

    move-object/from16 v18, v12

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move v10, v6

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v12, v18

    move/from16 v11, v19

    goto :goto_8

    :cond_d
    move-object/from16 v16, v8

    move/from16 v17, v9

    move v6, v10

    move/from16 v19, v11

    move-object/from16 v18, v12

    .line 13193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 13196
    iget-object v8, v3, Lo/setStackedBackground;->extraCallback:Lo/setStackedBackground$ICustomTabsCallback;

    invoke-static {v8, v1, v15}, Lo/isInOverlayMode;->onMessageChannelReady(Lo/setStackedBackground$ICustomTabsCallback;Landroid/graphics/Canvas;F)V

    add-int/lit8 v10, v6, -0x1

    int-to-float v8, v10

    mul-float v8, v8, v17

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move/from16 v9, v19

    int-to-float v10, v9

    mul-float v10, v10, v17

    sub-float/2addr v10, v8

    const/4 v8, 0x0

    .line 13201
    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v8, 0x0

    .line 16213
    :goto_a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_15

    move-object/from16 v12, v18

    .line 16214
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 17023
    iget-object v11, v4, Lo/isCurrent$extraCallback;->extraCallback:Ljava/lang/String;

    .line 17031
    iget-object v13, v4, Lo/isCurrent$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    mul-int/lit8 v10, v10, 0x1f

    .line 18017
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x1f

    .line 18018
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v11

    add-int/2addr v10, v11

    .line 16216
    iget-object v11, v0, Lo/isInOverlayMode;->updateVisuals:Lo/createCheckBox;

    .line 18169
    iget-object v11, v11, Lo/createCheckBox;->asBinder:Lo/describeContents;

    .line 16216
    invoke-virtual {v11, v10}, Lo/describeContents;->extraCallback(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/isCurrent$onNavigationEvent;

    if-eqz v10, :cond_14

    .line 18397
    iget-object v11, v0, Lo/isInOverlayMode;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 18398
    iget-object v11, v0, Lo/isInOverlayMode;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move/from16 v19, v6

    move-object/from16 v20, v12

    goto :goto_c

    .line 19040
    :cond_e
    iget-object v11, v10, Lo/isCurrent$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    .line 18401
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    .line 18402
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v13, :cond_f

    .line 18404
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Lo/MediaBrowserCompat$MediaItem$Flags;

    move-object/from16 v18, v11

    .line 18405
    new-instance v11, Lo/setCheckable;

    move-object/from16 v20, v12

    iget-object v12, v0, Lo/isInOverlayMode;->requestPostMessageChannel:Lo/createCheckedTextView;

    invoke-direct {v11, v12, v0, v6}, Lo/setCheckable;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/MediaBrowserCompat$MediaItem$Flags;)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v18

    move/from16 v6, v19

    move-object/from16 v12, v20

    goto :goto_b

    :cond_f
    move/from16 v19, v6

    move-object/from16 v20, v12

    .line 18407
    iget-object v6, v0, Lo/isInOverlayMode;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v6, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v14

    :goto_c
    const/4 v6, 0x0

    .line 18349
    :goto_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_11

    .line 18350
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/setCheckable;

    invoke-virtual {v12}, Lo/setCheckable;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v12

    .line 18351
    iget-object v13, v0, Lo/isInOverlayMode;->asBinder:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 18352
    iget-object v13, v0, Lo/isInOverlayMode;->newSession:Landroid/graphics/Matrix;

    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 18353
    iget-object v13, v0, Lo/isInOverlayMode;->newSession:Landroid/graphics/Matrix;

    iget v15, v3, Lo/setStackedBackground;->asInterface:F

    neg-float v15, v15

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v18

    mul-float v15, v15, v18

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 18354
    iget-object v13, v0, Lo/isInOverlayMode;->newSession:Landroid/graphics/Matrix;

    invoke-virtual {v13, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 18355
    iget-object v13, v0, Lo/isInOverlayMode;->newSession:Landroid/graphics/Matrix;

    invoke-virtual {v12, v13}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 18356
    iget-boolean v13, v3, Lo/setStackedBackground;->newSession:Z

    if-eqz v13, :cond_10

    .line 18357
    iget-object v13, v0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-static {v12, v13, v1}, Lo/isInOverlayMode;->onPostMessage(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 18358
    iget-object v13, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-static {v12, v13, v1}, Lo/isInOverlayMode;->onPostMessage(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_e

    .line 18360
    :cond_10
    iget-object v13, v0, Lo/isInOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-static {v12, v13, v1}, Lo/isInOverlayMode;->onPostMessage(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 18361
    iget-object v13, v0, Lo/isInOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-static {v12, v13, v1}, Lo/isInOverlayMode;->onPostMessage(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 19048
    :cond_11
    iget-wide v10, v10, Lo/isCurrent$onNavigationEvent;->onPostMessage:D

    double-to-float v6, v10

    mul-float v6, v6, v5

    .line 16222
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v10

    mul-float v6, v6, v10

    mul-float v6, v6, v7

    .line 16224
    iget v10, v3, Lo/setStackedBackground;->onNavigationEvent:I

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v10, v11

    .line 16225
    iget-object v11, v0, Lo/isInOverlayMode;->IPostMessageService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz v11, :cond_12

    .line 16226
    invoke-virtual {v11}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    :goto_f
    add-float/2addr v10, v11

    goto :goto_10

    .line 16227
    :cond_12
    iget-object v11, v0, Lo/isInOverlayMode;->IPostMessageService$Stub:Lo/isOverflowMenuShowPending;

    if-eqz v11, :cond_13

    .line 16228
    invoke-virtual {v11}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    goto :goto_f

    :cond_13
    :goto_10
    mul-float v10, v10, v7

    add-float/2addr v6, v10

    const/4 v10, 0x0

    .line 16231
    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_11

    :cond_14
    move/from16 v19, v6

    move-object/from16 v20, v12

    const/4 v10, 0x0

    :goto_11
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v19

    move-object/from16 v18, v20

    goto/16 :goto_a

    :cond_15
    move/from16 v19, v6

    .line 13207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v11, v9, 0x1

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v19

    goto/16 :goto_7

    .line 161
    :cond_16
    invoke-direct {v0, v3, v4, v2, v1}, Lo/isInOverlayMode;->onMessageChannelReady(Lo/setStackedBackground;Lo/isCurrent$extraCallback;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 164
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/onMeasureExactFormat<",
            "TT;>;)V"
        }
    .end annotation

    .line 452
    invoke-super {p0, p1, p2}, Lo/setOverlayMode;->extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    .line 453
    sget-object v0, Lo/createRatingBar;->onPostMessage:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 454
    iget-object p1, p0, Lo/isInOverlayMode;->extraCommand:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_0

    .line 26177
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-nez p2, :cond_1

    .line 459
    iput-object v1, p0, Lo/isInOverlayMode;->extraCommand:Lo/isOverflowMenuShowPending;

    return-void

    .line 461
    :cond_1
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/isInOverlayMode;->extraCommand:Lo/isOverflowMenuShowPending;

    .line 27045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object p1, p0, Lo/isInOverlayMode;->extraCommand:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_2

    .line 27173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 465
    :cond_3
    sget-object v0, Lo/createRatingBar;->onNavigationEvent:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    .line 466
    iget-object p1, p0, Lo/isInOverlayMode;->ICustomTabsService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_4

    .line 27177
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-nez p2, :cond_5

    .line 471
    iput-object v1, p0, Lo/isInOverlayMode;->ICustomTabsService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    return-void

    .line 473
    :cond_5
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/isInOverlayMode;->ICustomTabsService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    .line 28045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object p1, p0, Lo/isInOverlayMode;->ICustomTabsService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_6

    .line 28173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    .line 477
    :cond_7
    sget-object v0, Lo/createRatingBar;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 478
    iget-object p1, p0, Lo/isInOverlayMode;->IPostMessageService:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_8

    .line 28177
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    if-nez p2, :cond_9

    .line 483
    iput-object v1, p0, Lo/isInOverlayMode;->IPostMessageService:Lo/isOverflowMenuShowPending;

    return-void

    .line 485
    :cond_9
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/isInOverlayMode;->IPostMessageService:Lo/isOverflowMenuShowPending;

    .line 29045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object p1, p0, Lo/isInOverlayMode;->IPostMessageService:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_a

    .line 29173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void

    .line 489
    :cond_b
    sget-object v0, Lo/createRatingBar;->requestPostMessageChannel:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    .line 490
    iget-object p1, p0, Lo/isInOverlayMode;->IPostMessageService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_c

    .line 29177
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_c
    if-nez p2, :cond_d

    .line 495
    iput-object v1, p0, Lo/isInOverlayMode;->IPostMessageService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    return-void

    .line 497
    :cond_d
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/isInOverlayMode;->IPostMessageService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    .line 30045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object p1, p0, Lo/isInOverlayMode;->IPostMessageService$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_e

    .line 30173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void

    .line 501
    :cond_f
    sget-object v0, Lo/createRatingBar;->INotificationSideChannel:Ljava/lang/Float;

    if-ne p1, v0, :cond_12

    .line 502
    iget-object p1, p0, Lo/isInOverlayMode;->notify:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_10

    .line 30177
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    if-nez p2, :cond_11

    .line 507
    iput-object v1, p0, Lo/isInOverlayMode;->notify:Lo/isOverflowMenuShowPending;

    return-void

    .line 509
    :cond_11
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/isInOverlayMode;->notify:Lo/isOverflowMenuShowPending;

    .line 31045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object p1, p0, Lo/isInOverlayMode;->notify:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_12

    .line 31173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2, p3}, Lo/setOverlayMode;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 112
    iget-object p2, p0, Lo/isInOverlayMode;->updateVisuals:Lo/createCheckBox;

    .line 8137
    iget-object p2, p2, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lo/isInOverlayMode;->updateVisuals:Lo/createCheckBox;

    .line 9137
    iget-object p3, p3, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
