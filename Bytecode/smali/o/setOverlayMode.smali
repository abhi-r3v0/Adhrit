.class public abstract Lo/setOverlayMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChecked;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;


# instance fields
.field ICustomTabsCallback:Lo/isOverflowMenuShowing;

.field private final ICustomTabsCallback$Stub:Landroid/graphics/Path;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

.field private final ICustomTabsService:Landroid/graphics/Paint;

.field private ICustomTabsService$Stub:Lo/setOverlayMode;

.field private ICustomTabsService$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setOverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

.field private final asBinder:Landroid/graphics/Matrix;

.field public final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isOverflowMenuShowPending<",
            "**>;>;"
        }
    .end annotation
.end field

.field public extraCallback:Lo/setOverlayMode;

.field private final extraCommand:Landroid/graphics/RectF;

.field private final getInterfaceDescriptor:Landroid/graphics/Paint;

.field private final mayLaunchUrl:Landroid/graphics/RectF;

.field private final newSession:Landroid/graphics/Paint;

.field final onMessageChannelReady:Lo/createCheckedTextView;

.field final onNavigationEvent:Landroid/graphics/Matrix;

.field final onPostMessage:Lo/setActionBarVisibilityCallback;

.field final onRelationshipValidationResult:Lo/withFinalVisibility;

.field onTransact:Z

.field private final postMessage:Ljava/lang/String;

.field private final requestPostMessageChannel:Landroid/graphics/RectF;

.field private final updateVisuals:Landroid/graphics/RectF;

.field private final warmup:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V
    .locals 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    .line 68
    new-instance v0, Lo/createViewByPrefix;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/createViewByPrefix;-><init>(I)V

    iput-object v0, p0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Lo/createViewByPrefix;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lo/createViewByPrefix;-><init>(Landroid/graphics/PorterDuff$Mode;B)V

    iput-object v0, p0, Lo/setOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Lo/createViewByPrefix;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Lo/createViewByPrefix;-><init>(Landroid/graphics/PorterDuff$Mode;B)V

    iput-object v0, p0, Lo/setOverlayMode;->warmup:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Lo/createViewByPrefix;

    invoke-direct {v0, v1}, Lo/createViewByPrefix;-><init>(I)V

    iput-object v0, p0, Lo/setOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Lo/createViewByPrefix;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Lo/createViewByPrefix;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lo/setOverlayMode;->getInterfaceDescriptor:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->extraCommand:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->updateVisuals:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->onNavigationEvent:Landroid/graphics/Matrix;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    .line 97
    iput-boolean v1, p0, Lo/setOverlayMode;->onTransact:Z

    .line 100
    iput-object p1, p0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    .line 101
    iput-object p2, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    iget-object v0, p2, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/setOverlayMode;->postMessage:Ljava/lang/String;

    .line 1135
    iget-object p1, p2, Lo/setActionBarVisibilityCallback;->validateRelationship:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    .line 103
    sget-object v0, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onPostMessage:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    if-ne p1, v0, :cond_0

    .line 104
    iget-object p1, p0, Lo/setOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lo/setOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1147
    :goto_0
    iget-object p1, p2, Lo/setActionBarVisibilityCallback;->asBinder:Lo/onMeasure;

    .line 2100
    new-instance v0, Lo/withFinalVisibility;

    invoke-direct {v0, p1}, Lo/withFinalVisibility;-><init>(Lo/onMeasure;)V

    .line 109
    iput-object v0, p0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    .line 110
    invoke-virtual {v0, p0}, Lo/withFinalVisibility;->onMessageChannelReady(Lo/isOverflowMenuShowPending$onMessageChannelReady;)V

    .line 2127
    iget-object p1, p2, Lo/setActionBarVisibilityCallback;->asInterface:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 3127
    iget-object p1, p2, Lo/setActionBarVisibilityCallback;->asInterface:Ljava/util/List;

    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 113
    new-instance p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 4127
    iget-object p2, p2, Lo/setActionBarVisibilityCallback;->asInterface:Ljava/util/List;

    .line 113
    invoke-direct {p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 5033
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/isOverflowMenuShowPending;

    .line 5045
    iget-object p2, p2, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_1
    iget-object p1, p0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 6037
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onPostMessage:Ljava/util/List;

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_2

    .line 6173
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7045
    :cond_2
    iget-object p2, p2, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7149
    :cond_3
    iget-object p1, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 8103
    iget-object p1, p1, Lo/setActionBarVisibilityCallback;->requestPostMessageChannel:Ljava/util/List;

    .line 7149
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 7150
    new-instance p1, Lo/isOverflowMenuShowing;

    iget-object p2, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 9103
    iget-object p2, p2, Lo/setActionBarVisibilityCallback;->requestPostMessageChannel:Ljava/util/List;

    .line 7150
    invoke-direct {p1, p2}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lo/setOverlayMode;->ICustomTabsCallback:Lo/isOverflowMenuShowing;

    .line 10041
    iput-boolean v1, p1, Lo/isOverflowMenuShowPending;->extraCallback:Z

    .line 7152
    iget-object p1, p0, Lo/setOverlayMode;->ICustomTabsCallback:Lo/isOverflowMenuShowing;

    new-instance p2, Lo/setOverlayMode$4;

    invoke-direct {p2, p0}, Lo/setOverlayMode$4;-><init>(Lo/setOverlayMode;)V

    .line 10045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7158
    iget-object p1, p0, Lo/setOverlayMode;->ICustomTabsCallback:Lo/isOverflowMenuShowing;

    invoke-virtual {p1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 10511
    :goto_3
    iget-boolean p1, p0, Lo/setOverlayMode;->onTransact:Z

    if-eq v1, p1, :cond_5

    .line 10512
    iput-boolean v1, p0, Lo/setOverlayMode;->onTransact:Z

    .line 11166
    iget-object p1, p0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7159
    :cond_5
    iget-object p1, p0, Lo/setOverlayMode;->ICustomTabsCallback:Lo/isOverflowMenuShowing;

    if-eqz p1, :cond_6

    .line 11173
    iget-object p2, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    .line 11511
    :cond_7
    iget-boolean p1, p0, Lo/setOverlayMode;->onTransact:Z

    if-eq v1, p1, :cond_8

    .line 11512
    iput-boolean v1, p0, Lo/setOverlayMode;->onTransact:Z

    .line 12166
    iget-object p1, p0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_8
    return-void
.end method

.method private extraCallback(Landroid/graphics/Canvas;)V
    .locals 8

    .line 294
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 296
    iget-object v0, p0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v0, v1

    iget-object v0, p0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v1

    iget-object v0, p0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v5, v0, v1

    iget-object v0, p0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v6, v0, v1

    iget-object v7, p0, Lo/setOverlayMode;->getInterfaceDescriptor:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 297
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method private onPostMessage()V
    .locals 2

    .line 543
    iget-object v0, p0, Lo/setOverlayMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lo/setOverlayMode;->ICustomTabsService$Stub:Lo/setOverlayMode;

    if-nez v0, :cond_1

    .line 547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/setOverlayMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    return-void

    .line 551
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setOverlayMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 552
    iget-object v0, p0, Lo/setOverlayMode;->ICustomTabsService$Stub:Lo/setOverlayMode;

    :goto_0
    if-eqz v0, :cond_2

    .line 554
    iget-object v1, p0, Lo/setOverlayMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v0, v0, Lo/setOverlayMode;->ICustomTabsService$Stub:Lo/setOverlayMode;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 13166
    iget-object v0, p0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method ICustomTabsCallback(F)V
    .locals 3

    .line 519
    iget-object v0, p0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    .line 42123
    iget-object v1, v0, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_0

    .line 42124
    iget-object v1, v0, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 42126
    :cond_0
    iget-object v1, v0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_1

    .line 42127
    iget-object v1, v0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 42129
    :cond_1
    iget-object v1, v0, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_2

    .line 42130
    iget-object v1, v0, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 42133
    :cond_2
    iget-object v1, v0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_3

    .line 42134
    iget-object v1, v0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 42136
    :cond_3
    iget-object v1, v0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_4

    .line 42137
    iget-object v1, v0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 42139
    :cond_4
    iget-object v1, v0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_5

    .line 42140
    iget-object v1, v0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 42142
    :cond_5
    iget-object v1, v0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    if-eqz v1, :cond_6

    .line 42143
    iget-object v1, v0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 42145
    :cond_6
    iget-object v1, v0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    if-eqz v1, :cond_7

    .line 42146
    iget-object v1, v0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    invoke-virtual {v1, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 42148
    :cond_7
    iget-object v1, v0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    if-eqz v1, :cond_8

    .line 42149
    iget-object v0, v0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    invoke-virtual {v0, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 520
    :cond_8
    iget-object v0, p0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 521
    :goto_0
    iget-object v2, p0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 43033
    iget-object v2, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 521
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 522
    iget-object v2, p0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 44033
    iget-object v2, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 522
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isOverflowMenuShowPending;

    invoke-virtual {v2, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_9
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 44095
    iget v0, v0, Lo/setActionBarVisibilityCallback;->warmup:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_a

    .line 526
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 45095
    iget v0, v0, Lo/setActionBarVisibilityCallback;->warmup:F

    div-float/2addr p1, v0

    .line 528
    :cond_a
    iget-object v0, p0, Lo/setOverlayMode;->ICustomTabsCallback:Lo/isOverflowMenuShowing;

    if-eqz v0, :cond_b

    .line 530
    iget-object v2, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 46095
    iget v2, v2, Lo/setActionBarVisibilityCallback;->warmup:F

    div-float v2, p1, v2

    .line 530
    invoke-virtual {v0, v2}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    .line 532
    :cond_b
    iget-object v0, p0, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    if-eqz v0, :cond_c

    .line 534
    iget-object v0, v0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 47095
    iget v0, v0, Lo/setActionBarVisibilityCallback;->warmup:F

    .line 535
    iget-object v2, p0, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    mul-float v0, v0, p1

    invoke-virtual {v2, v0}, Lo/setOverlayMode;->ICustomTabsCallback(F)V

    .line 537
    :cond_c
    :goto_1
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 538
    iget-object v0, p0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isOverflowMenuShowPending;

    invoke-virtual {v0, p1}, Lo/isOverflowMenuShowPending;->onMessageChannelReady(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method abstract ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
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

    .line 597
    iget-object v0, p0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    invoke-virtual {v0, p1, p2}, Lo/withFinalVisibility;->onNavigationEvent(Ljava/lang/Object;Lo/onMeasureExactFormat;)Z

    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method final extraCallback()Z
    .locals 1

    .line 507
    iget-object v0, p0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    if-eqz v0, :cond_0

    .line 42033
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 507
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 184
    iget-object p1, p0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    invoke-direct {p0}, Lo/setOverlayMode;->onPostMessage()V

    .line 186
    iget-object p1, p0, Lo/setOverlayMode;->onNavigationEvent:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 189
    iget-object p1, p0, Lo/setOverlayMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 191
    iget-object p2, p0, Lo/setOverlayMode;->onNavigationEvent:Landroid/graphics/Matrix;

    iget-object p3, p0, Lo/setOverlayMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/setOverlayMode;

    iget-object p3, p3, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    invoke-virtual {p3}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lo/setOverlayMode;->ICustomTabsService$Stub:Lo/setOverlayMode;

    if-eqz p1, :cond_1

    .line 194
    iget-object p2, p0, Lo/setOverlayMode;->onNavigationEvent:Landroid/graphics/Matrix;

    iget-object p1, p1, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    invoke-virtual {p1}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 198
    :cond_1
    iget-object p1, p0, Lo/setOverlayMode;->onNavigationEvent:Landroid/graphics/Matrix;

    iget-object p2, p0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    invoke-virtual {p2}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 47111
    iget-object v0, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method onNavigationEvent(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V
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

    return-void
.end method

.method public final onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 203
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 204
    iget-boolean v3, v0, Lo/setOverlayMode;->onTransact:Z

    if-eqz v3, :cond_21

    iget-object v3, v0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 13179
    iget-boolean v3, v3, Lo/setActionBarVisibilityCallback;->ICustomTabsService$Stub:Z

    if-eqz v3, :cond_0

    goto/16 :goto_11

    .line 208
    :cond_0
    invoke-direct/range {p0 .. p0}, Lo/setOverlayMode;->onPostMessage()V

    .line 209
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 210
    iget-object v3, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 211
    iget-object v3, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 212
    iget-object v3, v0, Lo/setOverlayMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 213
    iget-object v5, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    iget-object v6, v0, Lo/setOverlayMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setOverlayMode;

    iget-object v6, v6, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    invoke-virtual {v6}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 216
    iget-object v3, v0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    .line 14154
    iget-object v3, v3, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    if-nez v3, :cond_2

    const/16 v3, 0x64

    goto :goto_1

    .line 216
    :cond_2
    iget-object v3, v0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    .line 15154
    iget-object v3, v3, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    .line 216
    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    :goto_1
    move/from16 v5, p3

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    int-to-float v3, v3

    mul-float v5, v5, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v5, v3

    mul-float v5, v5, v6

    float-to-int v3, v5

    .line 16141
    iget-object v5, v0, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x0

    if-nez v5, :cond_5

    .line 16507
    iget-object v5, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    if-eqz v5, :cond_4

    .line 17033
    iget-object v5, v5, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 16507
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_5

    .line 220
    iget-object v2, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    iget-object v4, v0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    invoke-virtual {v4}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 221
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 222
    iget-object v2, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, v3}, Lo/setOverlayMode;->ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 223
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 224
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 17288
    iget-object v1, v0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    .line 17905
    iget-object v1, v1, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 18128
    iget-object v1, v1, Lo/createCheckBox;->ICustomTabsCallback:Lo/checkOnClickListener;

    .line 17289
    iget-object v2, v0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 19111
    iget-object v2, v2, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 17289
    invoke-virtual {v1, v2, v7}, Lo/checkOnClickListener;->onPostMessage(Ljava/lang/String;F)V

    return-void

    .line 228
    :cond_5
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 229
    iget-object v5, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v8, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5, v8, v6}, Lo/setOverlayMode;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 238
    iget-object v5, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    .line 20141
    iget-object v8, v0, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_7

    .line 19356
    iget-object v8, v0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 21135
    iget-object v8, v8, Lo/setActionBarVisibilityCallback;->validateRelationship:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    .line 19356
    sget-object v9, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onPostMessage:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    if-eq v8, v9, :cond_7

    .line 19362
    iget-object v8, v0, Lo/setOverlayMode;->extraCommand:Landroid/graphics/RectF;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19363
    iget-object v8, v0, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    iget-object v9, v0, Lo/setOverlayMode;->extraCommand:Landroid/graphics/RectF;

    invoke-virtual {v8, v9, v2, v4}, Lo/setOverlayMode;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 19364
    iget-object v8, v0, Lo/setOverlayMode;->extraCommand:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 19366
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 240
    :cond_7
    iget-object v5, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    iget-object v8, v0, Lo/setOverlayMode;->onRelationshipValidationResult:Lo/withFinalVisibility;

    invoke-virtual {v8}, Lo/withFinalVisibility;->onNavigationEvent()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 241
    iget-object v5, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v8, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    .line 21301
    iget-object v9, v0, Lo/setOverlayMode;->requestPostMessageChannel:Landroid/graphics/RectF;

    invoke-virtual {v9, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21507
    iget-object v9, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    if-eqz v9, :cond_8

    .line 22033
    iget-object v9, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 21507
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v9, :cond_c

    .line 21306
    iget-object v9, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 23029
    iget-object v9, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 21306
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v9, :cond_b

    .line 21308
    iget-object v14, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 24029
    iget-object v14, v14, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 21308
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/generateDefaultLayoutParams;

    .line 21309
    iget-object v15, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 24033
    iget-object v15, v15, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 21309
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/isOverflowMenuShowPending;

    .line 21310
    invoke-virtual {v15}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Path;

    .line 21311
    iget-object v7, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v7, v15}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 21312
    iget-object v7, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 21314
    sget-object v7, Lo/setOverlayMode$5;->onPostMessage:[I

    .line 25027
    iget-object v15, v14, Lo/generateDefaultLayoutParams;->onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;

    .line 21314
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v7, v7, v15

    if-eq v7, v4, :cond_c

    if-eq v7, v12, :cond_c

    if-eq v7, v11, :cond_9

    if-eq v7, v10, :cond_9

    goto :goto_7

    .line 25039
    :cond_9
    iget-boolean v7, v14, Lo/generateDefaultLayoutParams;->ICustomTabsCallback:Z

    if-nez v7, :cond_c

    .line 21328
    :goto_7
    iget-object v7, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    iget-object v14, v0, Lo/setOverlayMode;->updateVisuals:Landroid/graphics/RectF;

    invoke-virtual {v7, v14, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v13, :cond_a

    .line 21333
    iget-object v7, v0, Lo/setOverlayMode;->requestPostMessageChannel:Landroid/graphics/RectF;

    iget-object v14, v0, Lo/setOverlayMode;->updateVisuals:Landroid/graphics/RectF;

    invoke-virtual {v7, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_8

    .line 21335
    :cond_a
    iget-object v7, v0, Lo/setOverlayMode;->requestPostMessageChannel:Landroid/graphics/RectF;

    iget v14, v7, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lo/setOverlayMode;->updateVisuals:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    .line 21336
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget-object v15, v0, Lo/setOverlayMode;->requestPostMessageChannel:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lo/setOverlayMode;->updateVisuals:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 21337
    invoke-static {v15, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v15, v0, Lo/setOverlayMode;->requestPostMessageChannel:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v10, v0, Lo/setOverlayMode;->updateVisuals:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    .line 21338
    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v15, v0, Lo/setOverlayMode;->requestPostMessageChannel:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget-object v11, v0, Lo/setOverlayMode;->updateVisuals:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    .line 21339
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 21335
    invoke-virtual {v7, v14, v6, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_8
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x3

    goto/16 :goto_6

    .line 21345
    :cond_b
    iget-object v6, v0, Lo/setOverlayMode;->requestPostMessageChannel:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x0

    .line 21347
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    .line 243
    :goto_9
    iget-object v5, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v6, v6, v7, v8}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    if-nez v5, :cond_d

    .line 244
    iget-object v5, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 247
    :cond_d
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 249
    iget-object v5, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    .line 250
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 251
    iget-object v5, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    iget-object v5, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v7, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-static {v1, v5, v7}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 253
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 256
    invoke-direct/range {p0 .. p1}, Lo/setOverlayMode;->extraCallback(Landroid/graphics/Canvas;)V

    .line 257
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 258
    iget-object v5, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v5, v3}, Lo/setOverlayMode;->ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 259
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 25507
    iget-object v5, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    if-eqz v5, :cond_e

    .line 26033
    iget-object v5, v5, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 25507
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x1

    goto :goto_a

    :cond_e
    const/4 v5, 0x0

    :goto_a
    const/16 v7, 0x13

    if-eqz v5, :cond_1d

    .line 262
    iget-object v5, v0, Lo/setOverlayMode;->asBinder:Landroid/graphics/Matrix;

    .line 26373
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 26374
    iget-object v8, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-static {v1, v8, v9, v7}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 26375
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-ge v8, v9, :cond_f

    .line 26378
    invoke-direct/range {p0 .. p1}, Lo/setOverlayMode;->extraCallback(Landroid/graphics/Canvas;)V

    .line 26380
    :cond_f
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    const/4 v8, 0x0

    .line 26381
    :goto_b
    iget-object v9, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 27029
    iget-object v9, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 26381
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1c

    .line 26382
    iget-object v9, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 28029
    iget-object v9, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 26382
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/generateDefaultLayoutParams;

    .line 26383
    iget-object v10, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 28033
    iget-object v10, v10, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 26383
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/isOverflowMenuShowPending;

    .line 26384
    iget-object v11, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 28037
    iget-object v11, v11, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onPostMessage:Ljava/util/List;

    .line 26384
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/isOverflowMenuShowPending;

    .line 26385
    sget-object v13, Lo/setOverlayMode$5;->onPostMessage:[I

    .line 29027
    iget-object v14, v9, Lo/generateDefaultLayoutParams;->onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;

    .line 26385
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v4, :cond_17

    const v14, 0x40233333    # 2.55f

    if-eq v13, v12, :cond_14

    const/4 v15, 0x3

    if-eq v13, v15, :cond_12

    const/4 v4, 0x4

    if-eq v13, v4, :cond_10

    goto/16 :goto_f

    .line 33039
    :cond_10
    iget-boolean v9, v9, Lo/generateDefaultLayoutParams;->ICustomTabsCallback:Z

    if-eqz v9, :cond_11

    .line 33453
    iget-object v9, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v13, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-static {v1, v9, v13}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 33454
    iget-object v9, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v13, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 33455
    invoke-virtual {v10}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    .line 33456
    iget-object v10, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 33457
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v9, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 33458
    iget-object v9, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v14

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33459
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    iget-object v10, v0, Lo/setOverlayMode;->warmup:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33460
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_f

    .line 34444
    :cond_11
    invoke-virtual {v10}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    .line 34445
    iget-object v10, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 34446
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v9, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 34447
    iget-object v9, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v14

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 34448
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    iget-object v10, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_12
    const/4 v4, 0x4

    .line 37039
    iget-boolean v9, v9, Lo/generateDefaultLayoutParams;->ICustomTabsCallback:Z

    if-eqz v9, :cond_13

    .line 37496
    iget-object v9, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v13, v0, Lo/setOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-static {v1, v9, v13}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 37497
    iget-object v9, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v13, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 37498
    iget-object v9, v0, Lo/setOverlayMode;->warmup:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v14

    float-to-int v11, v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37499
    invoke-virtual {v10}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    .line 37500
    iget-object v10, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 37501
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v9, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 37502
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    iget-object v10, v0, Lo/setOverlayMode;->warmup:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 37503
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_f

    .line 38485
    :cond_13
    iget-object v9, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v13, v0, Lo/setOverlayMode;->ICustomTabsService:Landroid/graphics/Paint;

    invoke-static {v1, v9, v13}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 38486
    invoke-virtual {v10}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    .line 38487
    iget-object v10, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 38488
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v9, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 38489
    iget-object v9, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v14

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38490
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    iget-object v10, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 38491
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_f

    :cond_14
    const/4 v4, 0x4

    const/4 v15, 0x3

    if-nez v8, :cond_15

    .line 26405
    iget-object v13, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 26406
    iget-object v4, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26407
    iget-object v4, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v13, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35039
    :cond_15
    iget-boolean v4, v9, Lo/generateDefaultLayoutParams;->ICustomTabsCallback:Z

    if-eqz v4, :cond_16

    .line 35473
    iget-object v4, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v9, v0, Lo/setOverlayMode;->warmup:Landroid/graphics/Paint;

    invoke-static {v1, v4, v9}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35474
    iget-object v4, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v9, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35475
    iget-object v4, v0, Lo/setOverlayMode;->warmup:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v14

    float-to-int v9, v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35476
    invoke-virtual {v10}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 35477
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v9, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 35478
    iget-object v4, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 35479
    iget-object v4, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    iget-object v9, v0, Lo/setOverlayMode;->warmup:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35480
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    .line 36465
    :cond_16
    invoke-virtual {v10}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 36466
    iget-object v9, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v9, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 36467
    iget-object v4, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 36468
    iget-object v4, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub:Landroid/graphics/Path;

    iget-object v9, v0, Lo/setOverlayMode;->warmup:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_f

    :cond_17
    const/4 v15, 0x3

    .line 29430
    iget-object v4, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 30033
    iget-object v4, v4, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 29430
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_c
    const/4 v4, 0x0

    goto :goto_e

    :cond_18
    const/4 v4, 0x0

    .line 29434
    :goto_d
    iget-object v9, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 31029
    iget-object v9, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 29434
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1a

    .line 29435
    iget-object v9, v0, Lo/setOverlayMode;->IPostMessageService$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;

    .line 32029
    iget-object v9, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 29435
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/generateDefaultLayoutParams;

    .line 33027
    iget-object v9, v9, Lo/generateDefaultLayoutParams;->onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;

    .line 29435
    sget-object v10, Lo/generateDefaultLayoutParams$onPostMessage;->extraCallback:Lo/generateDefaultLayoutParams$onPostMessage;

    if-eq v9, v10, :cond_19

    goto :goto_c

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1a
    const/4 v4, 0x1

    :goto_e
    if-eqz v4, :cond_1b

    .line 26392
    iget-object v4, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26393
    iget-object v4, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v9, v0, Lo/setOverlayMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1b
    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto/16 :goto_b

    .line 26424
    :cond_1c
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 26425
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 26426
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 39141
    :cond_1d
    iget-object v4, v0, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_10

    :cond_1e
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_1f

    .line 266
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 267
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 268
    iget-object v4, v0, Lo/setOverlayMode;->mayLaunchUrl:Landroid/graphics/RectF;

    iget-object v5, v0, Lo/setOverlayMode;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-static {v1, v4, v5, v7}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 269
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 270
    invoke-direct/range {p0 .. p1}, Lo/setOverlayMode;->extraCallback(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v4, v0, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    invoke-virtual {v4, v1, v2, v3}, Lo/setOverlayMode;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 273
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 275
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 276
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 279
    :cond_1f
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 281
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 284
    :cond_20
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    .line 39288
    iget-object v1, v0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    .line 39905
    iget-object v1, v1, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 40128
    iget-object v1, v1, Lo/createCheckBox;->ICustomTabsCallback:Lo/checkOnClickListener;

    .line 39289
    iget-object v2, v0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 41111
    iget-object v2, v2, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    .line 39289
    invoke-virtual {v1, v2, v3}, Lo/checkOnClickListener;->onPostMessage(Ljava/lang/String;F)V

    return-void

    .line 205
    :cond_21
    :goto_11
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method public final onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V
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

    .line 47561
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 48111
    iget-object v0, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 572
    invoke-virtual {p1, v0, p2}, Lo/ActionBarContainer;->onPostMessage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48561
    :cond_0
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 49111
    iget-object v0, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "__container"

    .line 576
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49561
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 50111
    iget-object v0, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 50112
    new-instance v1, Lo/ActionBarContainer;

    invoke-direct {v1, p4}, Lo/ActionBarContainer;-><init>(Lo/ActionBarContainer;)V

    .line 50113
    iget-object p4, v1, Lo/ActionBarContainer;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50115
    iget-object p4, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 50116
    iget-object p4, p4, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 579
    invoke-virtual {p1, p4, p2}, Lo/ActionBarContainer;->onNavigationEvent(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 50117
    new-instance p4, Lo/ActionBarContainer;

    invoke-direct {p4, v1}, Lo/ActionBarContainer;-><init>(Lo/ActionBarContainer;)V

    .line 50118
    iput-object p0, p4, Lo/ActionBarContainer;->onPostMessage:Lo/onAnimationCancel;

    .line 580
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object p4, v1

    .line 50120
    :cond_2
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 50121
    iget-object v0, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 584
    invoke-virtual {p1, v0, p2}, Lo/ActionBarContainer;->onMessageChannelReady(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50122
    iget-object v0, p0, Lo/setOverlayMode;->onPostMessage:Lo/setActionBarVisibilityCallback;

    .line 50123
    iget-object v0, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 585
    invoke-virtual {p1, v0, p2}, Lo/ActionBarContainer;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 586
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/setOverlayMode;->onNavigationEvent(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V

    :cond_3
    return-void
.end method

.method final onPostMessage(Lo/setOverlayMode;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/setOverlayMode;->ICustomTabsService$Stub:Lo/setOverlayMode;

    return-void
.end method
