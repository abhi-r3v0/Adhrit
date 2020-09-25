.class public final Lo/setExpandedFormat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChecked;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;


# instance fields
.field private final ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Landroid/graphics/Paint;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Lo/writeToParcel;",
            "Lo/writeToParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/closeMode;

.field private final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setForceShowIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final mayLaunchUrl:Lo/createCheckedTextView;

.field private newSession:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Z

.field private final onPostMessage:Lo/setOverlayMode;

.field private final onRelationshipValidationResult:Landroid/graphics/Path;

.field private final onTransact:Landroid/graphics/RectF;

.field private final requestPostMessageChannel:I

.field private updateVisuals:Lo/onAnimationEnd;

.field private final warmup:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/initForMode;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/setExpandedFormat;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 46
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/setExpandedFormat;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 47
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    .line 48
    new-instance v0, Lo/createViewByPrefix;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/createViewByPrefix;-><init>(I)V

    iput-object v0, p0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setExpandedFormat;->onTransact:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setExpandedFormat;->asInterface:Ljava/util/List;

    .line 62
    iput-object p2, p0, Lo/setExpandedFormat;->onPostMessage:Lo/setOverlayMode;

    .line 1046
    iget-object v0, p3, Lo/initForMode;->onRelationshipValidationResult:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lo/setExpandedFormat;->onMessageChannelReady:Ljava/lang/String;

    .line 1082
    iget-boolean v0, p3, Lo/initForMode;->asInterface:Z

    .line 64
    iput-boolean v0, p0, Lo/setExpandedFormat;->onNavigationEvent:Z

    .line 65
    iput-object p1, p0, Lo/setExpandedFormat;->mayLaunchUrl:Lo/createCheckedTextView;

    .line 2050
    iget-object v0, p3, Lo/initForMode;->onPostMessage:Lo/closeMode;

    .line 66
    iput-object v0, p0, Lo/setExpandedFormat;->asBinder:Lo/closeMode;

    .line 67
    iget-object v0, p0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    .line 2054
    iget-object v1, p3, Lo/initForMode;->onNavigationEvent:Landroid/graphics/Path$FillType;

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2905
    iget-object p1, p1, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 3201
    iget v0, p1, Lo/createCheckBox;->getInterfaceDescriptor:F

    iget v1, p1, Lo/createCheckBox;->newSession:F

    sub-float/2addr v0, v1

    .line 3141
    iget p1, p1, Lo/createCheckBox;->ICustomTabsService:F

    div-float/2addr v0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    float-to-long v0, v0

    long-to-float p1, v0

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 68
    iput p1, p0, Lo/setExpandedFormat;->requestPostMessageChannel:I

    .line 4058
    iget-object p1, p3, Lo/initForMode;->ICustomTabsCallback:Lo/onInterceptTouchEvent;

    .line 5018
    new-instance v0, Lo/hideOverflowMenu;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/hideOverflowMenu;-><init>(Ljava/util/List;)V

    .line 70
    iput-object v0, p0, Lo/setExpandedFormat;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    .line 5045
    iget-object p1, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lo/setExpandedFormat;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_0

    .line 5173
    iget-object v0, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6062
    :cond_0
    iget-object p1, p3, Lo/initForMode;->onMessageChannelReady:Lo/getTabContainer;

    .line 7020
    new-instance v0, Lo/showOverflowMenu;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/showOverflowMenu;-><init>(Ljava/util/List;)V

    .line 74
    iput-object v0, p0, Lo/setExpandedFormat;->warmup:Lo/isOverflowMenuShowPending;

    .line 7045
    iget-object p1, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lo/setExpandedFormat;->warmup:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 7173
    iget-object v0, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8066
    :cond_1
    iget-object p1, p3, Lo/initForMode;->extraCallback:Lo/startActionModeForChild;

    .line 9017
    new-instance v0, Lo/isOverflowReserved;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowReserved;-><init>(Ljava/util/List;)V

    .line 78
    iput-object v0, p0, Lo/setExpandedFormat;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    .line 9045
    iget-object p1, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lo/setExpandedFormat;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_2

    .line 9173
    iget-object v0, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10070
    :cond_2
    iget-object p1, p3, Lo/initForMode;->ICustomTabsCallback$Stub:Lo/startActionModeForChild;

    .line 11017
    new-instance p3, Lo/isOverflowReserved;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p3, p1}, Lo/isOverflowReserved;-><init>(Ljava/util/List;)V

    .line 82
    iput-object p3, p0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    .line 11045
    iget-object p1, p3, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_3

    .line 11173
    iget-object p2, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private extraCallback([I)[I
    .locals 4

    .line 211
    iget-object v0, p0, Lo/setExpandedFormat;->updateVisuals:Lo/onAnimationEnd;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 213
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 214
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 215
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 219
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 220
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private onMessageChannelReady()I
    .locals 4

    .line 194
    iget-object v0, p0, Lo/setExpandedFormat;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    move-result v0

    iget v1, p0, Lo/setExpandedFormat;->requestPostMessageChannel:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 195
    iget-object v1, p0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    move-result v1

    iget v2, p0, Lo/setExpandedFormat;->requestPostMessageChannel:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 196
    iget-object v2, p0, Lo/setExpandedFormat;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    move-result v2

    iget v3, p0, Lo/setExpandedFormat;->requestPostMessageChannel:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    mul-int/lit16 v0, v0, 0x20f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    mul-int v0, v0, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    mul-int v0, v0, v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/setExpandedFormat;->mayLaunchUrl:Lo/createCheckedTextView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

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

    .line 235
    sget-object v0, Lo/createRatingBar;->extraCallback:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p1, p0, Lo/setExpandedFormat;->warmup:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 237
    :cond_0
    sget-object v0, Lo/createRatingBar;->cancel:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 238
    iget-object p1, p0, Lo/setExpandedFormat;->newSession:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 239
    iget-object v0, p0, Lo/setExpandedFormat;->onPostMessage:Lo/setOverlayMode;

    .line 18177
    iget-object v0, v0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-nez p2, :cond_2

    .line 243
    iput-object v1, p0, Lo/setExpandedFormat;->newSession:Lo/isOverflowMenuShowPending;

    return-void

    .line 245
    :cond_2
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/setExpandedFormat;->newSession:Lo/isOverflowMenuShowPending;

    .line 19045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object p1, p0, Lo/setExpandedFormat;->onPostMessage:Lo/setOverlayMode;

    iget-object p2, p0, Lo/setExpandedFormat;->newSession:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_3

    .line 19173
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    .line 250
    :cond_4
    sget-object v0, Lo/createRatingBar;->notify:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    .line 251
    iget-object p1, p0, Lo/setExpandedFormat;->updateVisuals:Lo/onAnimationEnd;

    if-eqz p1, :cond_5

    .line 252
    iget-object v0, p0, Lo/setExpandedFormat;->onPostMessage:Lo/setOverlayMode;

    .line 19177
    iget-object v0, v0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    if-nez p2, :cond_6

    .line 256
    iput-object v1, p0, Lo/setExpandedFormat;->updateVisuals:Lo/onAnimationEnd;

    return-void

    .line 259
    :cond_6
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/setExpandedFormat;->updateVisuals:Lo/onAnimationEnd;

    .line 20045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object p1, p0, Lo/setExpandedFormat;->onPostMessage:Lo/setOverlayMode;

    iget-object p2, p0, Lo/setExpandedFormat;->updateVisuals:Lo/onAnimationEnd;

    if-eqz p2, :cond_7

    .line 20173
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 92
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 93
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 94
    instance-of v1, v0, Lo/setForceShowIcon;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lo/setExpandedFormat;->asInterface:Ljava/util/List;

    check-cast v0, Lo/setForceShowIcon;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 133
    iget-object p3, p0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v1, p0, Lo/setExpandedFormat;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    iget-object v2, p0, Lo/setExpandedFormat;->asInterface:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setForceShowIcon;

    invoke-interface {v2}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object p2, p0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 140
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

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lo/setExpandedFormat;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 101
    iget-boolean v2, v0, Lo/setExpandedFormat;->onNavigationEvent:Z

    if-eqz v2, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 105
    iget-object v2, v0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 106
    :goto_0
    iget-object v4, v0, Lo/setExpandedFormat;->asInterface:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 107
    iget-object v4, v0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    iget-object v5, v0, Lo/setExpandedFormat;->asInterface:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setForceShowIcon;

    invoke-interface {v5}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v3, v0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    iget-object v4, v0, Lo/setExpandedFormat;->onTransact:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 113
    iget-object v2, v0, Lo/setExpandedFormat;->asBinder:Lo/closeMode;

    sget-object v3, Lo/closeMode;->extraCallback:Lo/closeMode;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    .line 12153
    invoke-direct/range {p0 .. p0}, Lo/setExpandedFormat;->onMessageChannelReady()I

    move-result v2

    .line 12154
    iget-object v3, v0, Lo/setExpandedFormat;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    int-to-long v5, v2

    .line 13109
    invoke-virtual {v3, v5, v6, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 12154
    check-cast v2, Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 12158
    :cond_2
    iget-object v2, v0, Lo/setExpandedFormat;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 12159
    iget-object v3, v0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 12160
    iget-object v4, v0, Lo/setExpandedFormat;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/writeToParcel;

    .line 14021
    iget-object v7, v4, Lo/writeToParcel;->onPostMessage:[I

    .line 12161
    invoke-direct {v0, v7}, Lo/setExpandedFormat;->extraCallback([I)[I

    move-result-object v13

    .line 15017
    iget-object v14, v4, Lo/writeToParcel;->ICustomTabsCallback:[F

    .line 12163
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v4

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 12165
    iget-object v2, v0, Lo/setExpandedFormat;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v2, v5, v6, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    move-object v2, v4

    goto :goto_2

    .line 15170
    :cond_3
    invoke-direct/range {p0 .. p0}, Lo/setExpandedFormat;->onMessageChannelReady()I

    move-result v2

    .line 15171
    iget-object v3, v0, Lo/setExpandedFormat;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    int-to-long v5, v2

    .line 16109
    invoke-virtual {v3, v5, v6, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 15171
    check-cast v2, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_4

    goto :goto_2

    .line 15175
    :cond_4
    iget-object v2, v0, Lo/setExpandedFormat;->getInterfaceDescriptor:Lo/isOverflowMenuShowPending;

    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 15176
    iget-object v3, v0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 15177
    iget-object v4, v0, Lo/setExpandedFormat;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/writeToParcel;

    .line 17021
    iget-object v7, v4, Lo/writeToParcel;->onPostMessage:[I

    .line 15178
    invoke-direct {v0, v7}, Lo/setExpandedFormat;->extraCallback([I)[I

    move-result-object v12

    .line 18017
    iget-object v13, v4, Lo/writeToParcel;->ICustomTabsCallback:[F

    .line 15180
    iget v9, v2, Landroid/graphics/PointF;->x:F

    .line 15181
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 15182
    iget v2, v3, Landroid/graphics/PointF;->x:F

    .line 15183
    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v9

    float-to-double v7, v2

    sub-float/2addr v3, v10

    float-to-double v2, v3

    .line 15184
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_5

    const v2, 0x3a83126f    # 0.001f

    const v11, 0x3a83126f    # 0.001f

    goto :goto_1

    :cond_5
    move v11, v2

    .line 15188
    :goto_1
    new-instance v2, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 15189
    iget-object v3, v0, Lo/setExpandedFormat;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3, v5, v6, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    .line 118
    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 119
    iget-object v1, v0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    iget-object v1, v0, Lo/setExpandedFormat;->newSession:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_6

    .line 122
    iget-object v2, v0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_6
    move/from16 v1, p3

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 125
    iget-object v3, v0, Lo/setExpandedFormat;->warmup:Lo/isOverflowMenuShowPending;

    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 126
    iget-object v2, v0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    invoke-static {v1}, Lo/onContentScrollStopped;->ICustomTabsCallback(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v1, v0, Lo/setExpandedFormat;->onRelationshipValidationResult:Landroid/graphics/Path;

    iget-object v2, v0, Lo/setExpandedFormat;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
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

    .line 229
    invoke-static {p1, p2, p3, p4, p0}, Lo/onContentScrollStopped;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;Lo/onAnimationCancel;)V

    return-void
.end method
