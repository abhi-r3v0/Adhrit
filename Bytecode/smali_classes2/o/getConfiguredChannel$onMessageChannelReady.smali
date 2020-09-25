.class public abstract Lo/getConfiguredChannel$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getConfiguredChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/getConfiguredChannel$onMessageChannelReady<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final onNavigationEvent:Lo/getConfiguredChannel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lo/getConfiguredChannel;

    invoke-direct {v0}, Lo/getConfiguredChannel;-><init>()V

    iput-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    return-void
.end method


# virtual methods
.method protected abstract onNavigationEvent()Lo/getConfiguredChannel$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method onNavigationEvent(Landroid/content/res/TypedArray;)Lo/getConfiguredChannel$onMessageChannelReady;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")TT;"
        }
    .end annotation

    .line 148
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_clip_to_children:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_clip_to_children:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget-boolean v1, v1, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub$Proxy:Z

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1342
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput-boolean v0, v1, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub$Proxy:Z

    .line 153
    :cond_0
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_auto_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_auto_start:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget-boolean v1, v1, Lo/getConfiguredChannel;->newSession:Z

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1348
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput-boolean v0, v1, Lo/getConfiguredChannel;->newSession:Z

    .line 157
    :cond_1
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_base_alpha:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const v1, 0xffffff

    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 158
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_base_alpha:I

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 2395
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 2326
    iget-object v5, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    shl-int/lit8 v0, v0, 0x18

    iget v6, v5, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    and-int/2addr v6, v1

    or-int/2addr v0, v6

    iput v0, v5, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    .line 160
    :cond_2
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_highlight_alpha:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_highlight_alpha:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 3395
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 3333
    iget-object v2, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    shl-int/lit8 v0, v0, 0x18

    iget v3, v2, Lo/getConfiguredChannel;->onMessageChannelReady:I

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    iput v0, v2, Lo/getConfiguredChannel;->onMessageChannelReady:I

    .line 163
    :cond_3
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_duration:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 164
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_duration:I

    iget-object v3, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget-wide v5, v3, Lo/getConfiguredChannel;->requestPostMessageChannel:J

    long-to-int v3, v5

    .line 165
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, v1

    if-ltz v0, :cond_4

    .line 4384
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput-wide v5, v0, Lo/getConfiguredChannel;->requestPostMessageChannel:J

    goto :goto_0

    .line 4382
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Given a negative duration: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_5
    :goto_0
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_repeat_count:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_repeat_count:I

    iget-object v3, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v3, v3, Lo/getConfiguredChannel;->updateVisuals:I

    .line 170
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 5357
    iget-object v3, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v0, v3, Lo/getConfiguredChannel;->updateVisuals:I

    .line 172
    :cond_6
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_repeat_delay:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_repeat_delay:I

    iget-object v3, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget-wide v5, v3, Lo/getConfiguredChannel;->mayLaunchUrl:J

    long-to-int v3, v5

    .line 174
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, v1

    if-ltz v0, :cond_7

    .line 5375
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput-wide v5, v0, Lo/getConfiguredChannel;->mayLaunchUrl:J

    goto :goto_1

    .line 5373
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Given a negative repeat delay: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_8
    :goto_1
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_repeat_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_repeat_mode:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->extraCommand:I

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 6366
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v0, v1, Lo/getConfiguredChannel;->extraCommand:I

    .line 182
    :cond_9
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_direction:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 183
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_direction:I

    iget-object v3, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v3, v3, Lo/getConfiguredChannel;->onPostMessage:I

    .line 184
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    .line 7248
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v1, v0, Lo/getConfiguredChannel;->onPostMessage:I

    goto :goto_2

    .line 10248
    :cond_a
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v3, v0, Lo/getConfiguredChannel;->onPostMessage:I

    goto :goto_2

    .line 9248
    :cond_b
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v3, v0, Lo/getConfiguredChannel;->onPostMessage:I

    goto :goto_2

    .line 8248
    :cond_c
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v2, v0, Lo/getConfiguredChannel;->onPostMessage:I

    .line 202
    :cond_d
    :goto_2
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_shape:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 203
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_shape:I

    iget-object v3, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v3, v3, Lo/getConfiguredChannel;->onTransact:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v2, :cond_e

    .line 10254
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v1, v0, Lo/getConfiguredChannel;->onTransact:I

    goto :goto_3

    .line 11254
    :cond_e
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v2, v0, Lo/getConfiguredChannel;->onTransact:I

    .line 215
    :cond_f
    :goto_3
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_dropoff:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 216
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_dropoff:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->ICustomTabsService:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v4

    if-ltz v1, :cond_10

    .line 11310
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v0, v1, Lo/getConfiguredChannel;->ICustomTabsService:F

    goto :goto_4

    .line 11308
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Given invalid dropoff value: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_11
    :goto_4
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_fixed_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 219
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_fixed_width:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->asBinder:I

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_12

    .line 12263
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v0, v1, Lo/getConfiguredChannel;->asBinder:I

    goto :goto_5

    .line 12261
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Given invalid width: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_13
    :goto_5
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_fixed_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 224
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_fixed_height:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->onRelationshipValidationResult:I

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_14

    .line 12272
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v0, v1, Lo/getConfiguredChannel;->onRelationshipValidationResult:I

    goto :goto_6

    .line 12270
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Given invalid height: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_15
    :goto_6
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_intensity:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 229
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_intensity:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->warmup:F

    .line 230
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v4

    if-ltz v1, :cond_16

    .line 12299
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v0, v1, Lo/getConfiguredChannel;->warmup:F

    goto :goto_7

    .line 12297
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Given invalid intensity value: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_17
    :goto_7
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_width_ratio:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 233
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_width_ratio:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub:F

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v4

    if-ltz v1, :cond_18

    .line 13281
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v0, v1, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub:F

    goto :goto_8

    .line 13279
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Given invalid width ratio: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_19
    :goto_8
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_height_ratio:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 237
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_height_ratio:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->asInterface:F

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v4

    if-ltz v1, :cond_1a

    .line 13290
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput v0, v1, Lo/getConfiguredChannel;->asInterface:F

    goto :goto_9

    .line 13288
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Given invalid height ratio: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_1b
    :goto_9
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_tilt:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 241
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_tilt:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->getInterfaceDescriptor:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 13316
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput p1, v0, Lo/getConfiguredChannel;->getInterfaceDescriptor:F

    .line 243
    :cond_1c
    invoke-virtual {p0}, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent()Lo/getConfiguredChannel$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()Lo/getConfiguredChannel;
    .locals 10

    .line 389
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    .line 14092
    iget v1, v0, Lo/getConfiguredChannel;->onTransact:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    .line 14095
    iget-object v1, v0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget v6, v0, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    aput v6, v1, v4

    .line 14096
    iget-object v1, v0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget v6, v0, Lo/getConfiguredChannel;->onMessageChannelReady:I

    aput v6, v1, v5

    .line 14097
    iget-object v1, v0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget v6, v0, Lo/getConfiguredChannel;->onMessageChannelReady:I

    aput v6, v1, v3

    .line 14098
    iget-object v1, v0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget v0, v0, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    aput v0, v1, v2

    goto :goto_0

    .line 14101
    :cond_0
    iget-object v1, v0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget v6, v0, Lo/getConfiguredChannel;->onMessageChannelReady:I

    aput v6, v1, v4

    .line 14102
    iget-object v1, v0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget v6, v0, Lo/getConfiguredChannel;->onMessageChannelReady:I

    aput v6, v1, v5

    .line 14103
    iget-object v1, v0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget v6, v0, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    aput v6, v1, v3

    .line 14104
    iget-object v1, v0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget v0, v0, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    aput v0, v1, v2

    .line 390
    :goto_0
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    .line 14110
    iget v1, v0, Lo/getConfiguredChannel;->onTransact:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v1, v5, :cond_1

    .line 14113
    iget-object v1, v0, Lo/getConfiguredChannel;->extraCallback:[F

    iget v8, v0, Lo/getConfiguredChannel;->warmup:F

    sub-float v8, v7, v8

    iget v9, v0, Lo/getConfiguredChannel;->ICustomTabsService:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v1, v4

    .line 14114
    iget-object v1, v0, Lo/getConfiguredChannel;->extraCallback:[F

    iget v4, v0, Lo/getConfiguredChannel;->warmup:F

    sub-float v4, v7, v4

    const v8, 0x3a83126f    # 0.001f

    sub-float/2addr v4, v8

    div-float/2addr v4, v9

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v1, v5

    .line 14115
    iget-object v1, v0, Lo/getConfiguredChannel;->extraCallback:[F

    iget v4, v0, Lo/getConfiguredChannel;->warmup:F

    add-float/2addr v4, v7

    add-float/2addr v4, v8

    div-float/2addr v4, v9

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v1, v3

    .line 14116
    iget-object v1, v0, Lo/getConfiguredChannel;->extraCallback:[F

    iget v3, v0, Lo/getConfiguredChannel;->warmup:F

    add-float/2addr v3, v7

    iget v0, v0, Lo/getConfiguredChannel;->ICustomTabsService:F

    add-float/2addr v3, v0

    div-float/2addr v3, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v1, v2

    goto :goto_1

    .line 14119
    :cond_1
    iget-object v1, v0, Lo/getConfiguredChannel;->extraCallback:[F

    aput v6, v1, v4

    .line 14120
    iget-object v1, v0, Lo/getConfiguredChannel;->extraCallback:[F

    iget v4, v0, Lo/getConfiguredChannel;->warmup:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v1, v5

    .line 14121
    iget-object v1, v0, Lo/getConfiguredChannel;->extraCallback:[F

    iget v4, v0, Lo/getConfiguredChannel;->warmup:F

    iget v5, v0, Lo/getConfiguredChannel;->ICustomTabsService:F

    add-float/2addr v4, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v1, v3

    .line 14122
    iget-object v0, v0, Lo/getConfiguredChannel;->extraCallback:[F

    aput v7, v0, v2

    .line 391
    :goto_1
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    return-object v0
.end method
