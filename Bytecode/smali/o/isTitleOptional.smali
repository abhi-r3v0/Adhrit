.class public final Lo/isTitleOptional;
.super Lo/setOverlayMode;
.source ""


# instance fields
.field public final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setOverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

.field private final ICustomTabsService:Landroid/graphics/RectF;

.field public asBinder:Ljava/lang/Boolean;

.field private getInterfaceDescriptor:Ljava/lang/Boolean;

.field private newSession:Landroid/graphics/Paint;

.field private warmup:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;Ljava/util/List;Lo/createCheckBox;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createCheckedTextView;",
            "Lo/setActionBarVisibilityCallback;",
            "Ljava/util/List<",
            "Lo/setActionBarVisibilityCallback;",
            ">;",
            "Lo/createCheckBox;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lo/setOverlayMode;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/isTitleOptional;->ICustomTabsService:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/isTitleOptional;->newSession:Landroid/graphics/Paint;

    .line 1171
    iget-object p2, p2, Lo/setActionBarVisibilityCallback;->updateVisuals:Lo/setTransitioning;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2020
    new-instance v1, Lo/isOverflowMenuShowing;

    iget-object p2, p2, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v1, p2}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 42
    iput-object v1, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_0

    .line 2173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    iget-object p2, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    .line 3045
    iget-object p2, p2, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_1
    iput-object v0, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    .line 50
    :goto_0
    new-instance p2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 3159
    iget-object v1, p4, Lo/createCheckBox;->onTransact:Ljava/util/List;

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>(I)V

    .line 54
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    if-ltz v1, :cond_5

    .line 55
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setActionBarVisibilityCallback;

    .line 4044
    sget-object v6, Lo/setOverlayMode$5;->ICustomTabsCallback:[I

    .line 4131
    iget-object v7, v5, Lo/setActionBarVisibilityCallback;->onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 4044
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 4061
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown layer type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6131
    iget-object v7, v5, Lo/setActionBarVisibilityCallback;->onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 4061
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_2

    .line 4057
    :pswitch_0
    new-instance v6, Lo/isInOverlayMode;

    invoke-direct {v6, p1, v5}, Lo/isInOverlayMode;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    goto :goto_2

    .line 4055
    :pswitch_1
    new-instance v6, Lo/setHasNonEmbeddedTabs;

    invoke-direct {v6, p1, v5}, Lo/setHasNonEmbeddedTabs;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    goto :goto_2

    .line 4053
    :pswitch_2
    new-instance v6, Lo/ActionBarOverlayLayout;

    invoke-direct {v6, p1, v5}, Lo/ActionBarOverlayLayout;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    goto :goto_2

    .line 4051
    :pswitch_3
    new-instance v6, Lo/onWindowSystemUiVisibilityChanged;

    invoke-direct {v6, p1, v5}, Lo/onWindowSystemUiVisibilityChanged;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    goto :goto_2

    .line 4048
    :pswitch_4
    new-instance v6, Lo/isTitleOptional;

    .line 5115
    iget-object v7, v5, Lo/setActionBarVisibilityCallback;->onRelationshipValidationResult:Ljava/lang/String;

    .line 5165
    iget-object v8, p4, Lo/createCheckBox;->extraCallback:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4049
    invoke-direct {v6, p1, v5, v7, p4}, Lo/isTitleOptional;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;Ljava/util/List;Lo/createCheckBox;)V

    goto :goto_2

    .line 4046
    :pswitch_5
    new-instance v6, Lo/onWindowVisibilityChanged;

    invoke-direct {v6, p1, v5}, Lo/onWindowVisibilityChanged;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    :goto_2
    if-eqz v6, :cond_4

    .line 6133
    iget-object v7, v6, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 7107
    iget-wide v7, v7, Lo/setActionBarVisibilityCallback;->onNavigationEvent:J

    .line 60
    invoke-virtual {p2, v7, v8, v6}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 7137
    iput-object v6, v3, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    move-object v3, v0

    goto :goto_3

    .line 65
    :cond_2
    iget-object v7, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    sget-object v4, Lo/isTitleOptional$1;->extraCallback:[I

    .line 8135
    iget-object v5, v5, Lo/setActionBarVisibilityCallback;->validateRelationship:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    .line 66
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v6

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 75
    :cond_5
    :goto_4
    invoke-virtual {p2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage()I

    move-result p1

    if-ge v4, p1, :cond_7

    .line 76
    invoke-virtual {p2, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage(I)J

    move-result-wide p3

    .line 9109
    invoke-virtual {p2, p3, p4, v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 77
    check-cast p1, Lo/setOverlayMode;

    if-eqz p1, :cond_6

    .line 9133
    iget-object p3, p1, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 9139
    iget-wide p3, p3, Lo/setActionBarVisibilityCallback;->onTransact:J

    .line 10109
    invoke-virtual {p2, p3, p4, v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 84
    check-cast p3, Lo/setOverlayMode;

    if-eqz p3, :cond_6

    .line 86
    invoke-virtual {p1, p3}, Lo/setOverlayMode;->onPostMessage(Lo/setOverlayMode;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ICustomTabsCallback(F)V
    .locals 3

    .line 130
    invoke-super {p0, p1}, Lo/setOverlayMode;->ICustomTabsCallback(F)V

    .line 131
    iget-object v0, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_0

    .line 135
    iget-object p1, p0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    .line 10905
    iget-object p1, p1, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 11201
    iget v0, p1, Lo/createCheckBox;->getInterfaceDescriptor:F

    iget p1, p1, Lo/createCheckBox;->newSession:F

    sub-float/2addr v0, p1

    const p1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, p1

    .line 136
    iget-object p1, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 12091
    iget-object p1, p1, Lo/setActionBarVisibilityCallback;->onMessageChannelReady:Lo/createCheckBox;

    .line 12146
    iget p1, p1, Lo/createCheckBox;->newSession:F

    .line 137
    iget-object v1, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 13091
    iget-object v2, v2, Lo/setActionBarVisibilityCallback;->onMessageChannelReady:Lo/createCheckBox;

    .line 13155
    iget v2, v2, Lo/createCheckBox;->ICustomTabsService:F

    mul-float v1, v1, v2

    sub-float/2addr v1, p1

    div-float p1, v1, v0

    .line 140
    :cond_0
    iget-object v0, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 14099
    iget v1, v0, Lo/setActionBarVisibilityCallback;->newSession:F

    iget-object v0, v0, Lo/setActionBarVisibilityCallback;->onMessageChannelReady:Lo/createCheckBox;

    .line 14201
    iget v2, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    iget v0, v0, Lo/createCheckBox;->newSession:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 143
    :cond_1
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 15095
    iget v0, v0, Lo/setActionBarVisibilityCallback;->warmup:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 16095
    iget v0, v0, Lo/setActionBarVisibilityCallback;->warmup:F

    div-float/2addr p1, v0

    .line 146
    :cond_2
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 147
    iget-object v1, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOverlayMode;

    invoke-virtual {v1, p1}, Lo/setOverlayMode;->ICustomTabsCallback(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method final ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 92
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 93
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsService:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 10119
    iget v1, v1, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback$Stub$Proxy:I

    int-to-float v1, v1

    .line 93
    iget-object v2, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 10123
    iget v2, v2, Lo/setActionBarVisibilityCallback;->mayLaunchUrl:I

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsService:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 97
    iget-object v0, p0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    .line 10293
    iget-boolean v0, v0, Lo/createCheckedTextView;->requestPostMessageChannel:Z

    const/16 v1, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    if-eq p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 99
    iget-object v3, p0, Lo/isTitleOptional;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v3, p0, Lo/isTitleOptional;->ICustomTabsService:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/isTitleOptional;->newSession:Landroid/graphics/Paint;

    invoke-static {p1, v3, v4}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v0, :cond_2

    const/16 p3, 0xff

    .line 106
    :cond_2
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2
    if-ltz v0, :cond_5

    .line 108
    iget-object v1, p0, Lo/isTitleOptional;->ICustomTabsService:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    iget-object v1, p0, Lo/isTitleOptional;->ICustomTabsService:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOverlayMode;

    .line 113
    invoke-virtual {v1, p1, p2, p3}, Lo/setOverlayMode;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 116
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

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

    .line 199
    invoke-super {p0, p1, p2}, Lo/setOverlayMode;->extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    .line 201
    sget-object v0, Lo/createRatingBar;->IPostMessageService$Stub$Proxy:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 203
    iget-object p1, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 204
    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 207
    :cond_0
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    .line 17045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object p1, p0, Lo/isTitleOptional;->warmup:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 17173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 121
    invoke-super {p0, p1, p2, p3}, Lo/setOverlayMode;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 122
    iget-object p2, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 123
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setOverlayMode;

    iget-object v1, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/setOverlayMode;->onNavigationEvent:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lo/setOverlayMode;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 125
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final onNavigationEvent(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 191
    :goto_0
    iget-object v1, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOverlayMode;

    invoke-virtual {v1, p1, p2, p3, p4}, Lo/setOverlayMode;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage()Z
    .locals 4

    .line 152
    iget-object v0, p0, Lo/isTitleOptional;->getInterfaceDescriptor:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 154
    iget-object v2, p0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setOverlayMode;

    .line 155
    instance-of v3, v2, Lo/onWindowVisibilityChanged;

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {v2}, Lo/setOverlayMode;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/isTitleOptional;->getInterfaceDescriptor:Ljava/lang/Boolean;

    return v1

    .line 160
    :cond_0
    instance-of v3, v2, Lo/isTitleOptional;

    if-eqz v3, :cond_1

    check-cast v2, Lo/isTitleOptional;

    invoke-virtual {v2}, Lo/isTitleOptional;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/isTitleOptional;->getInterfaceDescriptor:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 165
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/isTitleOptional;->getInterfaceDescriptor:Ljava/lang/Boolean;

    .line 167
    :cond_3
    iget-object v0, p0, Lo/isTitleOptional;->getInterfaceDescriptor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
