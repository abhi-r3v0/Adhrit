.class public final Lo/invalidateDrawable;
.super Lo/Rule;
.source ""


# instance fields
.field private final ICustomTabsCallback$Stub:[Landroid/graphics/drawable/Drawable;

.field private ICustomTabsCallback$Stub$Proxy:[I

.field private ICustomTabsService:J

.field public asBinder:I

.field private final asInterface:Z

.field public extraCallback:I

.field private newSession:[I

.field public onMessageChannelReady:[Z

.field public onNavigationEvent:I

.field private final onRelationshipValidationResult:I

.field public onTransact:Z

.field private warmup:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lo/invalidateDrawable;-><init>([Landroid/graphics/drawable/Drawable;B)V

    return-void
.end method

.method private constructor <init>([Landroid/graphics/drawable/Drawable;B)V
    .locals 3

    .line 87
    invoke-direct {p0, p1}, Lo/Rule;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 88
    array-length p2, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 89
    iput-object p1, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub:[Landroid/graphics/drawable/Drawable;

    .line 90
    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub$Proxy:[I

    .line 91
    array-length v2, p1

    new-array v2, v2, [I

    iput-object v2, p0, Lo/invalidateDrawable;->newSession:[I

    const/16 v2, 0xff

    .line 92
    iput v2, p0, Lo/invalidateDrawable;->warmup:I

    .line 93
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    .line 94
    iput v1, p0, Lo/invalidateDrawable;->asBinder:I

    .line 95
    iput-boolean v1, p0, Lo/invalidateDrawable;->asInterface:Z

    .line 96
    iput v1, p0, Lo/invalidateDrawable;->onRelationshipValidationResult:I

    const/4 p1, 0x2

    .line 2138
    iput p1, p0, Lo/invalidateDrawable;->extraCallback:I

    .line 2139
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2140
    iget-object p1, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub$Proxy:[I

    aput v2, p1, v1

    .line 2141
    iget-object p1, p0, Lo/invalidateDrawable;->newSession:[I

    iget p2, p0, Lo/invalidateDrawable;->onRelationshipValidationResult:I

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 2142
    iget-object p1, p0, Lo/invalidateDrawable;->newSession:[I

    aput v2, p1, v1

    .line 2143
    iget-object p1, p0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2144
    iget-object p1, p0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aput-boolean v0, p1, v1

    return-void

    .line 1177
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "At least one layer required!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(F)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 255
    :goto_0
    iget-object v4, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 256
    iget-object v4, p0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    .line 258
    :goto_1
    iget-object v5, p0, Lo/invalidateDrawable;->newSession:[I

    iget-object v6, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub$Proxy:[I

    aget v6, v6, v2

    int-to-float v6, v6

    const/16 v7, 0xff

    mul-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float v4, v4, p1

    add-float/2addr v6, v4

    float-to-int v4, v6

    aput v4, v5, v2

    .line 259
    aget v4, v5, v2

    if-gez v4, :cond_1

    .line 260
    aput v1, v5, v2

    .line 262
    :cond_1
    iget-object v4, p0, Lo/invalidateDrawable;->newSession:[I

    aget v5, v4, v2

    if-le v5, v7, :cond_2

    .line 263
    aput v7, v4, v2

    .line 266
    :cond_2
    iget-object v4, p0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, Lo/invalidateDrawable;->newSession:[I

    aget v4, v4, v2

    if-ge v4, v7, :cond_3

    const/4 v3, 0x0

    .line 269
    :cond_3
    iget-object v4, p0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_4

    iget-object v4, p0, Lo/invalidateDrawable;->newSession:[I

    aget v4, v4, v2

    if-lez v4, :cond_4

    const/4 v3, 0x0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    const/4 v0, 0x2

    .line 240
    iput v0, p0, Lo/invalidateDrawable;->extraCallback:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 241
    :goto_0
    iget-object v2, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 242
    iget-object v2, p0, Lo/invalidateDrawable;->newSession:[I

    iget-object v3, p0, Lo/invalidateDrawable;->onMessageChannelReady:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0xff

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 281
    iget v0, p0, Lo/invalidateDrawable;->extraCallback:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_4

    .line 298
    :cond_0
    iget v0, p0, Lo/invalidateDrawable;->onNavigationEvent:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 4362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 300
    iget-wide v6, p0, Lo/invalidateDrawable;->ICustomTabsService:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    iget v4, p0, Lo/invalidateDrawable;->onNavigationEvent:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 302
    invoke-direct {p0, v0}, Lo/invalidateDrawable;->onNavigationEvent(F)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 303
    :goto_1
    iput v1, p0, Lo/invalidateDrawable;->extraCallback:I

    goto :goto_4

    .line 4162
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 284
    :cond_4
    iget-object v0, p0, Lo/invalidateDrawable;->newSession:[I

    iget-object v4, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub$Proxy:[I

    iget-object v5, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 285
    iput-wide v4, p0, Lo/invalidateDrawable;->ICustomTabsService:J

    .line 287
    iget v0, p0, Lo/invalidateDrawable;->onNavigationEvent:I

    if-nez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 289
    :goto_2
    invoke-direct {p0, v0}, Lo/invalidateDrawable;->onNavigationEvent(F)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    .line 290
    :goto_3
    iput v1, p0, Lo/invalidateDrawable;->extraCallback:I

    .line 318
    :goto_4
    iget-object v1, p0, Lo/invalidateDrawable;->ICustomTabsCallback$Stub:[Landroid/graphics/drawable/Drawable;

    array-length v4, v1

    if-ge v2, v4, :cond_8

    .line 319
    aget-object v1, v1, v2

    iget-object v4, p0, Lo/invalidateDrawable;->newSession:[I

    aget v4, v4, v2

    iget v5, p0, Lo/invalidateDrawable;->warmup:I

    mul-int v4, v4, v5

    div-int/lit16 v4, v4, 0xff

    if-eqz v1, :cond_7

    if-lez v4, :cond_7

    .line 6336
    iget v5, p0, Lo/invalidateDrawable;->asBinder:I

    add-int/2addr v5, v3

    iput v5, p0, Lo/invalidateDrawable;->asBinder:I

    .line 6337
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6338
    iget v4, p0, Lo/invalidateDrawable;->asBinder:I

    sub-int/2addr v4, v3

    iput v4, p0, Lo/invalidateDrawable;->asBinder:I

    .line 6339
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    .line 323
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 352
    iget v0, p0, Lo/invalidateDrawable;->warmup:I

    return v0
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 102
    iget v0, p0, Lo/invalidateDrawable;->asBinder:I

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0}, Lo/Rule;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 345
    iget v0, p0, Lo/invalidateDrawable;->warmup:I

    if-eq v0, p1, :cond_0

    .line 346
    iput p1, p0, Lo/invalidateDrawable;->warmup:I

    .line 347
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
