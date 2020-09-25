.class public final Lo/onTouchEvent;
.super Lo/setItemInvoker;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Lo/writeToParcel;",
            "Lo/writeToParcel;",
            ">;"
        }
    .end annotation
.end field

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

.field private final asBinder:Lo/closeMode;

.field private final asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/String;

.field private getInterfaceDescriptor:Lo/onAnimationEnd;

.field private final newSession:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Z

.field private final onRelationshipValidationResult:Landroid/graphics/RectF;

.field private final onTransact:I


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/killMode;)V
    .locals 11

    .line 1083
    iget-object v0, p3, Lo/killMode;->asInterface:Lo/generateLayoutParams$extraCallback;

    .line 44
    invoke-virtual {v0}, Lo/generateLayoutParams$extraCallback;->onNavigationEvent()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 1087
    iget-object v0, p3, Lo/killMode;->asBinder:Lo/generateLayoutParams$onMessageChannelReady;

    .line 45
    invoke-virtual {v0}, Lo/generateLayoutParams$onMessageChannelReady;->onMessageChannelReady()Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 1099
    iget v6, p3, Lo/killMode;->ICustomTabsCallback$Stub:F

    .line 2067
    iget-object v7, p3, Lo/killMode;->extraCallback:Lo/getTabContainer;

    .line 2079
    iget-object v8, p3, Lo/killMode;->onTransact:Lo/setTransitioning;

    .line 2091
    iget-object v9, p3, Lo/killMode;->newSession:Ljava/util/List;

    .line 2095
    iget-object v10, p3, Lo/killMode;->warmup:Lo/setTransitioning;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 44
    invoke-direct/range {v1 .. v10}, Lo/setItemInvoker;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLo/getTabContainer;Lo/setTransitioning;Ljava/util/List;Lo/setTransitioning;)V

    .line 31
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/onTouchEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 32
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/onTouchEvent;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/onTouchEvent;->onRelationshipValidationResult:Landroid/graphics/RectF;

    .line 3055
    iget-object v0, p3, Lo/killMode;->ICustomTabsCallback:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lo/onTouchEvent;->extraCallback:Ljava/lang/String;

    .line 3059
    iget-object v0, p3, Lo/killMode;->onNavigationEvent:Lo/closeMode;

    .line 49
    iput-object v0, p0, Lo/onTouchEvent;->asBinder:Lo/closeMode;

    .line 3103
    iget-boolean v0, p3, Lo/killMode;->ICustomTabsService:Z

    .line 50
    iput-boolean v0, p0, Lo/onTouchEvent;->onNavigationEvent:Z

    .line 3905
    iget-object p1, p1, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 4201
    iget v0, p1, Lo/createCheckBox;->getInterfaceDescriptor:F

    iget v1, p1, Lo/createCheckBox;->newSession:F

    sub-float/2addr v0, v1

    .line 4141
    iget p1, p1, Lo/createCheckBox;->ICustomTabsService:F

    div-float/2addr v0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    float-to-long v0, v0

    long-to-float p1, v0

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 51
    iput p1, p0, Lo/onTouchEvent;->onTransact:I

    .line 5063
    iget-object p1, p3, Lo/killMode;->onMessageChannelReady:Lo/onInterceptTouchEvent;

    .line 6018
    new-instance v0, Lo/hideOverflowMenu;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/hideOverflowMenu;-><init>(Ljava/util/List;)V

    .line 53
    iput-object v0, p0, Lo/onTouchEvent;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    .line 6045
    iget-object p1, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lo/onTouchEvent;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_0

    .line 6173
    iget-object v0, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7071
    :cond_0
    iget-object p1, p3, Lo/killMode;->onPostMessage:Lo/startActionModeForChild;

    .line 8017
    new-instance v0, Lo/isOverflowReserved;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowReserved;-><init>(Ljava/util/List;)V

    .line 57
    iput-object v0, p0, Lo/onTouchEvent;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    .line 8045
    iget-object p1, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lo/onTouchEvent;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 8173
    iget-object v0, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9075
    :cond_1
    iget-object p1, p3, Lo/killMode;->onRelationshipValidationResult:Lo/startActionModeForChild;

    .line 10017
    new-instance p3, Lo/isOverflowReserved;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p3, p1}, Lo/isOverflowReserved;-><init>(Ljava/util/List;)V

    .line 61
    iput-object p3, p0, Lo/onTouchEvent;->newSession:Lo/isOverflowMenuShowPending;

    .line 10045
    iget-object p1, p3, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lo/onTouchEvent;->newSession:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_2

    .line 10173
    iget-object p2, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private onMessageChannelReady()I
    .locals 4

    .line 130
    iget-object v0, p0, Lo/onTouchEvent;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    move-result v0

    iget v1, p0, Lo/onTouchEvent;->onTransact:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 131
    iget-object v1, p0, Lo/onTouchEvent;->newSession:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    move-result v1

    iget v2, p0, Lo/onTouchEvent;->onTransact:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 132
    iget-object v2, p0, Lo/onTouchEvent;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    move-result v2

    iget v3, p0, Lo/onTouchEvent;->onTransact:I

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

.method private onNavigationEvent([I)[I
    .locals 4

    .line 147
    iget-object v0, p0, Lo/onTouchEvent;->getInterfaceDescriptor:Lo/onAnimationEnd;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 149
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 150
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 151
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 155
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 156
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method


# virtual methods
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

    .line 165
    invoke-super {p0, p1, p2}, Lo/setItemInvoker;->extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    .line 166
    sget-object v0, Lo/createRatingBar;->notify:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    .line 167
    iget-object p1, p0, Lo/onTouchEvent;->getInterfaceDescriptor:Lo/onAnimationEnd;

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lo/setItemInvoker;->onPostMessage:Lo/setOverlayMode;

    iget-object v0, p0, Lo/onTouchEvent;->getInterfaceDescriptor:Lo/onAnimationEnd;

    .line 16177
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lo/onTouchEvent;->getInterfaceDescriptor:Lo/onAnimationEnd;

    return-void

    .line 174
    :cond_1
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/onTouchEvent;->getInterfaceDescriptor:Lo/onAnimationEnd;

    .line 17045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object p1, p0, Lo/setItemInvoker;->onPostMessage:Lo/setOverlayMode;

    iget-object p2, p0, Lo/onTouchEvent;->getInterfaceDescriptor:Lo/onAnimationEnd;

    if-eqz p2, :cond_2

    .line 17173
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/onTouchEvent;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 67
    iget-boolean v2, v0, Lo/onTouchEvent;->onNavigationEvent:Z

    if-eqz v2, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v2, v0, Lo/onTouchEvent;->onRelationshipValidationResult:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lo/setItemInvoker;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 73
    iget-object v2, v0, Lo/onTouchEvent;->asBinder:Lo/closeMode;

    sget-object v3, Lo/closeMode;->extraCallback:Lo/closeMode;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 11089
    invoke-direct/range {p0 .. p0}, Lo/onTouchEvent;->onMessageChannelReady()I

    move-result v2

    .line 11090
    iget-object v3, v0, Lo/onTouchEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    int-to-long v5, v2

    .line 11109
    invoke-virtual {v3, v5, v6, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 11090
    check-cast v2, Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 11094
    :cond_1
    iget-object v2, v0, Lo/onTouchEvent;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 11095
    iget-object v3, v0, Lo/onTouchEvent;->newSession:Lo/isOverflowMenuShowPending;

    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 11096
    iget-object v4, v0, Lo/onTouchEvent;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/writeToParcel;

    .line 12021
    iget-object v7, v4, Lo/writeToParcel;->onPostMessage:[I

    .line 11097
    invoke-direct {v0, v7}, Lo/onTouchEvent;->onNavigationEvent([I)[I

    move-result-object v13

    .line 13017
    iget-object v14, v4, Lo/writeToParcel;->ICustomTabsCallback:[F

    .line 11099
    iget v9, v2, Landroid/graphics/PointF;->x:F

    .line 11100
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 11101
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 11102
    iget v12, v3, Landroid/graphics/PointF;->y:F

    .line 11103
    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 11104
    iget-object v3, v0, Lo/onTouchEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3, v5, v6, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    goto :goto_0

    .line 13109
    :cond_2
    invoke-direct/range {p0 .. p0}, Lo/onTouchEvent;->onMessageChannelReady()I

    move-result v2

    .line 13110
    iget-object v3, v0, Lo/onTouchEvent;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    int-to-long v5, v2

    .line 14109
    invoke-virtual {v3, v5, v6, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 13110
    check-cast v2, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 13114
    :cond_3
    iget-object v2, v0, Lo/onTouchEvent;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 13115
    iget-object v3, v0, Lo/onTouchEvent;->newSession:Lo/isOverflowMenuShowPending;

    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 13116
    iget-object v4, v0, Lo/onTouchEvent;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/writeToParcel;

    .line 15021
    iget-object v7, v4, Lo/writeToParcel;->onPostMessage:[I

    .line 13117
    invoke-direct {v0, v7}, Lo/onTouchEvent;->onNavigationEvent([I)[I

    move-result-object v12

    .line 16017
    iget-object v13, v4, Lo/writeToParcel;->ICustomTabsCallback:[F

    .line 13119
    iget v9, v2, Landroid/graphics/PointF;->x:F

    .line 13120
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 13121
    iget v2, v3, Landroid/graphics/PointF;->x:F

    .line 13122
    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v9

    float-to-double v7, v2

    sub-float/2addr v3, v10

    float-to-double v2, v3

    .line 13123
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v11, v2

    .line 13124
    new-instance v2, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 13125
    iget-object v3, v0, Lo/onTouchEvent;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3, v5, v6, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    .line 78
    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 79
    iget-object v3, v0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 81
    invoke-super/range {p0 .. p3}, Lo/setItemInvoker;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
