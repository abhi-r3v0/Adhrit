.class public final Lo/getFixedWidthMinor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dispatchFitSystemWindows;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFixedWidthMinor$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field private onMessageChannelReady:J

.field private onNavigationEvent:J

.field private final onPostMessage:Lo/setDecorPadding;

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lo/getFixedWidthMinor;->extraCallback:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 1308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1309
    new-instance v0, Lo/onAttachedFromWindow;

    invoke-direct {v0}, Lo/onAttachedFromWindow;-><init>()V

    goto :goto_0

    .line 1311
    :cond_0
    new-instance v0, Lo/setAllowStacking;

    invoke-direct {v0}, Lo/setAllowStacking;-><init>()V

    .line 1318
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1319
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1

    const/4 v1, 0x0

    .line 1323
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1325
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_2

    .line 1326
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1328
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 55
    invoke-direct {p0, p1, p2, v0, v1}, Lo/getFixedWidthMinor;-><init>(JLo/setDecorPadding;Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(JLo/setDecorPadding;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lo/setDecorPadding;",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lo/getFixedWidthMinor;->onMessageChannelReady:J

    .line 44
    iput-object p3, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    .line 45
    iput-object p4, p0, Lo/getFixedWidthMinor;->ICustomTabsCallback:Ljava/util/Set;

    return-void
.end method

.method private onNavigationEvent()V
    .locals 3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hits="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/getFixedWidthMinor;->ICustomTabsCallback$Stub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getFixedWidthMinor;->asBinder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getFixedWidthMinor;->onRelationshipValidationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getFixedWidthMinor;->onTransact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/getFixedWidthMinor;->onMessageChannelReady:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LruBitmapPool"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized onPostMessage(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    .line 4181
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 4185
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 4186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create a mutable Bitmap with config: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    if-eqz p3, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    sget-object v1, Lo/getFixedWidthMinor;->extraCallback:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-interface {v0, p1, p2, v1}, Lo/setDecorPadding;->ICustomTabsCallback(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v2, "LruBitmapPool"

    const/4 v3, 0x3

    .line 202
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LruBitmapPool"

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing bitmap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v4, p1, p2, p3}, Lo/setDecorPadding;->onNavigationEvent(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_3
    iget v2, p0, Lo/getFixedWidthMinor;->asBinder:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/getFixedWidthMinor;->asBinder:I

    goto :goto_2

    .line 207
    :cond_4
    iget v2, p0, Lo/getFixedWidthMinor;->ICustomTabsCallback$Stub:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/getFixedWidthMinor;->ICustomTabsCallback$Stub:I

    .line 208
    iget-wide v2, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J

    iget-object v4, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v4, v0}, Lo/setDecorPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J

    .line 4223
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 4229
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_5

    .line 4230
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :cond_5
    :goto_2
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 212
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "LruBitmapPool"

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get bitmap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v4, p1, p2, p3}, Lo/setDecorPadding;->onNavigationEvent(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string p1, "LruBitmapPool"

    .line 4282
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4283
    invoke-direct {p0}, Lo/getFixedWidthMinor;->onNavigationEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_7
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPostMessage(J)V
    .locals 5

    monitor-enter p0

    .line 259
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_4

    .line 260
    iget-object v0, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v0}, Lo/setDecorPadding;->ICustomTabsCallback()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "LruBitmapPool"

    const/4 p2, 0x5

    .line 263
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LruBitmapPool"

    const-string p2, "Size mismatch, resetting"

    .line 264
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lo/getFixedWidthMinor;->onNavigationEvent()V

    :cond_0
    const-wide/16 p1, 0x0

    .line 267
    iput-wide p1, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 271
    :cond_1
    :try_start_1
    iget-wide v1, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J

    iget-object v3, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v3, v0}, Lo/setDecorPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J

    .line 272
    iget v1, p0, Lo/getFixedWidthMinor;->onTransact:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/getFixedWidthMinor;->onTransact:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    .line 273
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LruBitmapPool"

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Evicting bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v3, v0}, Lo/setDecorPadding;->onPostMessage(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 6282
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6283
    invoke-direct {p0}, Lo/getFixedWidthMinor;->onNavigationEvent()V

    .line 277
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lo/getFixedWidthMinor;->onPostMessage(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4175
    :cond_0
    sget-object p3, Lo/getFixedWidthMinor;->extraCallback:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final ICustomTabsCallback(I)V
    .locals 5

    const/4 v0, 0x3

    const-string v1, "LruBitmapPool"

    .line 245
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trimMemory, level="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0x28

    if-ge p1, v2, :cond_4

    .line 248
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/16 v4, 0x14

    if-lt v2, v3, :cond_1

    if-lt p1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, v4, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 6093
    :cond_2
    iget-wide v0, p0, Lo/getFixedWidthMinor;->onMessageChannelReady:J

    const-wide/16 v2, 0x2

    .line 254
    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lo/getFixedWidthMinor;->onPostMessage(J)V

    :cond_3
    return-void

    .line 5236
    :cond_4
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "clearMemory"

    .line 5237
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v0, 0x0

    .line 5239
    invoke-direct {p0, v0, v1}, Lo/getFixedWidthMinor;->onPostMessage(J)V

    return-void
.end method

.method public final extraCallback(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lo/getFixedWidthMinor;->onPostMessage(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 155
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 3175
    :cond_1
    sget-object p3, Lo/getFixedWidthMinor;->extraCallback:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final declared-synchronized extraCallback(Landroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_6

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    .line 111
    invoke-interface {v0, p1}, Lo/setDecorPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lo/getFixedWidthMinor;->onMessageChannelReady:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lo/getFixedWidthMinor;->ICustomTabsCallback:Ljava/util/Set;

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v0, p1}, Lo/setDecorPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 129
    iget-object v2, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v2, p1}, Lo/setDecorPadding;->onNavigationEvent(Landroid/graphics/Bitmap;)V

    .line 132
    iget v2, p0, Lo/getFixedWidthMinor;->onRelationshipValidationResult:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/getFixedWidthMinor;->onRelationshipValidationResult:I

    .line 133
    iget-wide v2, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lo/getFixedWidthMinor;->onNavigationEvent:J

    const-string v0, "LruBitmapPool"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LruBitmapPool"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Put bitmap in pool="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    invoke-interface {v3, p1}, Lo/setDecorPadding;->onPostMessage(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "LruBitmapPool"

    .line 2282
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2283
    invoke-direct {p0}, Lo/getFixedWidthMinor;->onNavigationEvent()V

    .line 3144
    :cond_2
    iget-wide v0, p0, Lo/getFixedWidthMinor;->onMessageChannelReady:J

    invoke-direct {p0, v0, v1}, Lo/getFixedWidthMinor;->onPostMessage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    :try_start_1
    const-string v0, "LruBitmapPool"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "LruBitmapPool"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/getFixedWidthMinor;->onPostMessage:Lo/setDecorPadding;

    .line 118
    invoke-interface {v2, p1}, Lo/setDecorPadding;->onPostMessage(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/getFixedWidthMinor;->ICustomTabsCallback:Ljava/util/Set;

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 108
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot pool recycled bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 105
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final onPostMessage()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "clearMemory"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    .line 239
    invoke-direct {p0, v0, v1}, Lo/getFixedWidthMinor;->onPostMessage(J)V

    return-void
.end method
