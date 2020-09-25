.class public final Lo/enableOrDisableHardwareLayer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setFrame;


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Rect;

.field private ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

.field private final asBinder:Z

.field private final extraCallback:Lo/layoutChildLeft$extraCallback;

.field private final onMessageChannelReady:Lo/setSafeMode;

.field private final onNavigationEvent:Lo/setSelectedTextColor;

.field private final onPostMessage:[I

.field private final onTransact:[Lo/getProgress;


# direct methods
.method public constructor <init>(Lo/setSelectedTextColor;Lo/layoutChildLeft$extraCallback;Landroid/graphics/Rect;Z)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 51
    iput-object p1, p0, Lo/enableOrDisableHardwareLayer;->onNavigationEvent:Lo/setSelectedTextColor;

    .line 52
    iput-object p2, p0, Lo/enableOrDisableHardwareLayer;->extraCallback:Lo/layoutChildLeft$extraCallback;

    .line 1065
    iget-object p1, p2, Lo/layoutChildLeft$extraCallback;->onMessageChannelReady:Lo/setSafeMode;

    .line 53
    iput-object p1, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    .line 54
    invoke-interface {p1}, Lo/setSafeMode;->onPostMessage()[I

    move-result-object p1

    iput-object p1, p0, Lo/enableOrDisableHardwareLayer;->onPostMessage:[I

    .line 55
    invoke-static {p1}, Lo/setSelectedTextColor;->onNavigationEvent([I)V

    .line 58
    iget-object p1, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-static {p1, p3}, Lo/enableOrDisableHardwareLayer;->extraCallback(Lo/setSafeMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 59
    iput-boolean p4, p0, Lo/enableOrDisableHardwareLayer;->asBinder:Z

    .line 60
    iget-object p1, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-interface {p1}, Lo/setSafeMode;->onMessageChannelReady()I

    move-result p1

    new-array p1, p1, [Lo/getProgress;

    iput-object p1, p0, Lo/enableOrDisableHardwareLayer;->onTransact:[Lo/getProgress;

    const/4 p1, 0x0

    .line 61
    :goto_0
    iget-object p2, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-interface {p2}, Lo/setSafeMode;->onMessageChannelReady()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 62
    iget-object p2, p0, Lo/enableOrDisableHardwareLayer;->onTransact:[Lo/getProgress;

    iget-object p3, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-interface {p3, p1}, Lo/setSafeMode;->onPostMessage(I)Lo/getProgress;

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static extraCallback(Lo/setSafeMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Landroid/graphics/Rect;

    invoke-interface {p0}, Lo/setSafeMode;->extraCallback()I

    move-result v1

    invoke-interface {p0}, Lo/setSafeMode;->onNavigationEvent()I

    move-result p0

    invoke-direct {p1, v0, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 70
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p0}, Lo/setSafeMode;->extraCallback()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-interface {p0}, Lo/setSafeMode;->onNavigationEvent()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v1, v0, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private declared-synchronized onPostMessage(II)V
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 193
    :cond_0
    invoke-direct {p0}, Lo/enableOrDisableHardwareLayer;->onRelationshipValidationResult()V

    .line 195
    :cond_1
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 196
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    .line 198
    :cond_2
    iget-object p1, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onRelationshipValidationResult()V
    .locals 1

    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 94
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-interface {v0}, Lo/setSafeMode;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(I)I
    .locals 1

    .line 135
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->onPostMessage:[I

    aget p1, v0, p1

    return p1
.end method

.method public final ICustomTabsCallback(ILandroid/graphics/Canvas;)V
    .locals 5

    .line 176
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-interface {v0, p1}, Lo/setSafeMode;->onMessageChannelReady(I)Lo/getPerformanceTracker;

    move-result-object p1

    .line 1226
    :try_start_0
    iget-boolean v0, p0, Lo/enableOrDisableHardwareLayer;->asBinder:Z

    if-eqz v0, :cond_0

    .line 1227
    invoke-interface {p1}, Lo/getPerformanceTracker;->onPostMessage()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1228
    invoke-interface {p1}, Lo/getPerformanceTracker;->onNavigationEvent()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1230
    invoke-interface {p1}, Lo/getPerformanceTracker;->onPostMessage()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 1231
    invoke-interface {p1}, Lo/getPerformanceTracker;->onNavigationEvent()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1232
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1234
    invoke-interface {p1}, Lo/getPerformanceTracker;->onPostMessage()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 1235
    invoke-interface {p1}, Lo/getPerformanceTracker;->onNavigationEvent()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 1236
    invoke-interface {p1}, Lo/getPerformanceTracker;->extraCallback()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 1237
    invoke-interface {p1}, Lo/getPerformanceTracker;->onMessageChannelReady()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v0, v4

    goto :goto_0

    .line 1239
    :cond_0
    invoke-interface {p1}, Lo/getPerformanceTracker;->onPostMessage()I

    move-result v1

    .line 1240
    invoke-interface {p1}, Lo/getPerformanceTracker;->onNavigationEvent()I

    move-result v2

    .line 1241
    invoke-interface {p1}, Lo/getPerformanceTracker;->extraCallback()I

    move-result v3

    .line 1242
    invoke-interface {p1}, Lo/getPerformanceTracker;->onMessageChannelReady()I

    move-result v0

    .line 1245
    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1246
    :try_start_1
    invoke-direct {p0, v1, v2}, Lo/enableOrDisableHardwareLayer;->onPostMessage(II)V

    .line 1247
    iget-object v4, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    invoke-interface {p1, v1, v2, v4}, Lo/getPerformanceTracker;->extraCallback(IILandroid/graphics/Bitmap;)V

    .line 1249
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v3

    int-to-float v0, v0

    .line 1250
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1251
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1252
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 1253
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-interface {p1}, Lo/getPerformanceTracker;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception p2

    .line 1253
    :try_start_2
    monitor-exit p0

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 184
    invoke-interface {p1}, Lo/getPerformanceTracker;->ICustomTabsCallback()V

    throw p2
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 1

    .line 114
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 109
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public final extraCallback(I)Lo/getProgress;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->onTransact:[Lo/getProgress;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 104
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-interface {v0}, Lo/setSafeMode;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 99
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-interface {v0}, Lo/setSafeMode;->extraCallback()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 89
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-interface {v0}, Lo/setSafeMode;->onMessageChannelReady()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(Landroid/graphics/Rect;)Lo/setFrame;
    .locals 4

    .line 145
    iget-object v0, p0, Lo/enableOrDisableHardwareLayer;->onMessageChannelReady:Lo/setSafeMode;

    invoke-static {v0, p1}, Lo/enableOrDisableHardwareLayer;->extraCallback(Lo/setSafeMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lo/enableOrDisableHardwareLayer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 150
    :cond_0
    new-instance v0, Lo/enableOrDisableHardwareLayer;

    iget-object v1, p0, Lo/enableOrDisableHardwareLayer;->onNavigationEvent:Lo/setSelectedTextColor;

    iget-object v2, p0, Lo/enableOrDisableHardwareLayer;->extraCallback:Lo/layoutChildLeft$extraCallback;

    iget-boolean v3, p0, Lo/enableOrDisableHardwareLayer;->asBinder:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lo/enableOrDisableHardwareLayer;-><init>(Lo/setSelectedTextColor;Lo/layoutChildLeft$extraCallback;Landroid/graphics/Rect;Z)V

    return-object v0
.end method
