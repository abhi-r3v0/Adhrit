.class public Lo/setTextDelegate;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lo/DiagnosticsWorker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setTextDelegate$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field private static final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub:J

.field private volatile ICustomTabsCallback$Stub$Proxy:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field private volatile ICustomTabsService:Lo/setTextDelegate$onMessageChannelReady;

.field private asBinder:J

.field private asInterface:J

.field private volatile extraCallback:Z

.field private final getInterfaceDescriptor:Ljava/lang/Runnable;

.field private newSession:I

.field private onNavigationEvent:Lo/reverseAnimationSpeed;

.field private onPostMessage:Lo/updateBitmap;

.field private onRelationshipValidationResult:J

.field private onTransact:I

.field private warmup:Lo/updateRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lo/setTextDelegate;

    sput-object v0, Lo/setTextDelegate;->onMessageChannelReady:Ljava/lang/Class;

    .line 53
    new-instance v0, Lo/endChangeAnimationIfNecessary$onMessageChannelReady;

    invoke-direct {v0}, Lo/endChangeAnimationIfNecessary$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/setTextDelegate;->ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lo/setTextDelegate;-><init>(Lo/reverseAnimationSpeed;)V

    return-void
.end method

.method public constructor <init>(Lo/reverseAnimationSpeed;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x8

    .line 70
    iput-wide v0, p0, Lo/setTextDelegate;->asInterface:J

    .line 77
    sget-object v0, Lo/setTextDelegate;->ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

    iput-object v0, p0, Lo/setTextDelegate;->ICustomTabsCallback$Stub$Proxy:Lo/MediaSessionCompat$1$onMessageChannelReady;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lo/setTextDelegate;->ICustomTabsService:Lo/setTextDelegate$onMessageChannelReady;

    .line 90
    new-instance v1, Lo/setTextDelegate$5;

    invoke-direct {v1, p0}, Lo/setTextDelegate$5;-><init>(Lo/setTextDelegate;)V

    iput-object v1, p0, Lo/setTextDelegate;->getInterfaceDescriptor:Ljava/lang/Runnable;

    .line 107
    iput-object p1, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1453
    :cond_0
    new-instance v0, Lo/measureChildCollapseMargins$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/measureChildCollapseMargins$onMessageChannelReady;-><init>(Lo/removeAllAnimatorListeners;)V

    .line 108
    :goto_0
    iput-object v0, p0, Lo/setTextDelegate;->onPostMessage:Lo/updateBitmap;

    return-void
.end method

.method static synthetic extraCallback(Lo/setTextDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/setTextDelegate;->getInterfaceDescriptor:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 181
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/setTextDelegate;->onPostMessage:Lo/updateBitmap;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3444
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 185
    iget-boolean v2, p0, Lo/setTextDelegate;->extraCallback:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lo/setTextDelegate;->asBinder:J

    sub-long v2, v0, v2

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lo/setTextDelegate;->onRelationshipValidationResult:J

    const-wide/16 v4, 0x0

    .line 187
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 190
    :goto_0
    iget-object v4, p0, Lo/setTextDelegate;->onPostMessage:Lo/updateBitmap;

    invoke-interface {v4, v2, v3}, Lo/updateBitmap;->onMessageChannelReady(J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 196
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    invoke-interface {v0}, Lo/reverseAnimationSpeed;->extraCallback()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lo/setTextDelegate;->extraCallback:Z

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 200
    iget v6, p0, Lo/setTextDelegate;->onTransact:I

    if-eq v6, v5, :cond_3

    iget-wide v5, p0, Lo/setTextDelegate;->ICustomTabsCallback$Stub:J

    cmp-long v7, v0, v5

    .line 206
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    invoke-interface {v0, p0, p1, v4}, Lo/reverseAnimationSpeed;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 211
    iput v4, p0, Lo/setTextDelegate;->onTransact:I

    :cond_4
    if-nez p1, :cond_5

    .line 4431
    iget p1, p0, Lo/setTextDelegate;->newSession:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/setTextDelegate;->newSession:I

    const/4 p1, 0x2

    .line 4433
    invoke-static {p1}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4434
    sget-object p1, Lo/setTextDelegate;->onMessageChannelReady:Ljava/lang/Class;

    iget v0, p0, Lo/setTextDelegate;->newSession:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Dropped a frame. Count: %s"

    invoke-static {p1, v1, v0}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4444
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 222
    iget-boolean p1, p0, Lo/setTextDelegate;->extraCallback:Z

    if-eqz p1, :cond_6

    .line 224
    iget-object p1, p0, Lo/setTextDelegate;->onPostMessage:Lo/updateBitmap;

    iget-wide v4, p0, Lo/setTextDelegate;->asBinder:J

    sub-long/2addr v0, v4

    .line 225
    invoke-interface {p1, v0, v1}, Lo/updateBitmap;->extraCallback(J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long p1, v0, v4

    if-eqz p1, :cond_6

    .line 227
    iget-wide v4, p0, Lo/setTextDelegate;->asInterface:J

    add-long/2addr v0, v4

    .line 5426
    iget-wide v4, p0, Lo/setTextDelegate;->asBinder:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lo/setTextDelegate;->ICustomTabsCallback$Stub:J

    .line 5427
    iget-object p1, p0, Lo/setTextDelegate;->getInterfaceDescriptor:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v4, v5}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 249
    :cond_6
    iput-wide v2, p0, Lo/setTextDelegate;->onRelationshipValidationResult:J

    :cond_7
    :goto_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 121
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-nez v0, :cond_0

    .line 122
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 124
    :cond_0
    invoke-interface {v0}, Lo/reverseAnimationSpeed;->onPostMessage()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 113
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 116
    :cond_0
    invoke-interface {v0}, Lo/reverseAnimationSpeed;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lo/setTextDelegate;->extraCallback:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p1}, Lo/reverseAnimationSpeed;->ICustomTabsCallback(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 6

    .line 469
    iget-boolean v0, p0, Lo/setTextDelegate;->extraCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 474
    :cond_0
    iget-wide v2, p0, Lo/setTextDelegate;->onRelationshipValidationResult:J

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    .line 475
    iput-wide v4, p0, Lo/setTextDelegate;->onRelationshipValidationResult:J

    .line 476
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 484
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0}, Lo/reverseAnimationSpeed;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lo/setTextDelegate;->warmup:Lo/updateRange;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lo/updateRange;

    invoke-direct {v0}, Lo/updateRange;-><init>()V

    iput-object v0, p0, Lo/setTextDelegate;->warmup:Lo/updateRange;

    .line 257
    :cond_0
    iget-object v0, p0, Lo/setTextDelegate;->warmup:Lo/updateRange;

    .line 6029
    iput p1, v0, Lo/updateRange;->ICustomTabsCallback:I

    .line 258
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0, p1}, Lo/reverseAnimationSpeed;->onMessageChannelReady(I)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lo/setTextDelegate;->warmup:Lo/updateRange;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lo/updateRange;

    invoke-direct {v0}, Lo/updateRange;-><init>()V

    iput-object v0, p0, Lo/setTextDelegate;->warmup:Lo/updateRange;

    .line 268
    :cond_0
    iget-object v0, p0, Lo/setTextDelegate;->warmup:Lo/updateRange;

    .line 6033
    iput-object p1, v0, Lo/updateRange;->onMessageChannelReady:Landroid/graphics/ColorFilter;

    const/4 v1, 0x1

    .line 6034
    iput-boolean v1, v0, Lo/updateRange;->onNavigationEvent:Z

    .line 269
    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0, p1}, Lo/reverseAnimationSpeed;->extraCallback(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lo/setTextDelegate;->extraCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/setTextDelegate;->onNavigationEvent:Lo/reverseAnimationSpeed;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/reverseAnimationSpeed;->extraCallback()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iput-boolean v1, p0, Lo/setTextDelegate;->extraCallback:Z

    .line 2444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 136
    iput-wide v0, p0, Lo/setTextDelegate;->asBinder:J

    .line 137
    iput-wide v0, p0, Lo/setTextDelegate;->ICustomTabsCallback$Stub:J

    const-wide/16 v0, -0x1

    .line 138
    iput-wide v0, p0, Lo/setTextDelegate;->onRelationshipValidationResult:J

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lo/setTextDelegate;->onTransact:I

    .line 140
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lo/setTextDelegate;->extraCallback:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lo/setTextDelegate;->extraCallback:Z

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lo/setTextDelegate;->asBinder:J

    .line 154
    iput-wide v0, p0, Lo/setTextDelegate;->ICustomTabsCallback$Stub:J

    const-wide/16 v0, -0x1

    .line 155
    iput-wide v0, p0, Lo/setTextDelegate;->onRelationshipValidationResult:J

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lo/setTextDelegate;->onTransact:I

    .line 157
    iget-object v0, p0, Lo/setTextDelegate;->getInterfaceDescriptor:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
