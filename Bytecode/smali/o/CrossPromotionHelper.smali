.class public final Lo/CrossPromotionHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private ICustomTabsCallback:F

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Ljava/nio/ShortBuffer;

.field private asBinder:I

.field private asInterface:Z

.field private extraCallback:I

.field private getInterfaceDescriptor:J

.field private newSession:Ljava/nio/ByteBuffer;

.field private onMessageChannelReady:F

.field private onNavigationEvent:I

.field private onRelationshipValidationResult:Ljava/nio/ByteBuffer;

.field private onTransact:Lo/LinkGenerator;

.field private warmup:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback:F

    .line 86
    iput v0, p0, Lo/CrossPromotionHelper;->onMessageChannelReady:F

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lo/CrossPromotionHelper;->onNavigationEvent:I

    .line 88
    iput v0, p0, Lo/CrossPromotionHelper;->extraCallback:I

    .line 89
    iput v0, p0, Lo/CrossPromotionHelper;->asBinder:I

    .line 90
    sget-object v1, Lo/CrossPromotionHelper;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lo/CrossPromotionHelper;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lo/CrossPromotionHelper;->ICustomTabsService:Ljava/nio/ShortBuffer;

    .line 92
    sget-object v1, Lo/CrossPromotionHelper;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lo/CrossPromotionHelper;->newSession:Ljava/nio/ByteBuffer;

    .line 93
    iput v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback$Stub:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)J
    .locals 15

    move-object v0, p0

    .line 151
    iget-wide v5, v0, Lo/CrossPromotionHelper;->warmup:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    .line 152
    iget v1, v0, Lo/CrossPromotionHelper;->asBinder:I

    iget v2, v0, Lo/CrossPromotionHelper;->extraCallback:I

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Lo/CrossPromotionHelper;->getInterfaceDescriptor:J

    move-wide/from16 v1, p1

    .line 153
    invoke-static/range {v1 .. v6}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v1

    return-wide v1

    :cond_0
    iget-wide v3, v0, Lo/CrossPromotionHelper;->getInterfaceDescriptor:J

    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    .line 154
    invoke-static/range {v9 .. v14}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v1

    return-wide v1

    .line 157
    :cond_1
    iget v1, v0, Lo/CrossPromotionHelper;->ICustomTabsCallback:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public final ICustomTabsCallback()V
    .locals 1

    .line 231
    iget-object v0, p0, Lo/CrossPromotionHelper;->onTransact:Lo/LinkGenerator;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lo/LinkGenerator;->onMessageChannelReady()V

    :cond_0
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CrossPromotionHelper;->onTransact:Lo/LinkGenerator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/LinkGenerator;->onNavigationEvent()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final asInterface()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 266
    iput v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback:F

    .line 267
    iput v0, p0, Lo/CrossPromotionHelper;->onMessageChannelReady:F

    const/4 v0, -0x1

    .line 268
    iput v0, p0, Lo/CrossPromotionHelper;->onNavigationEvent:I

    .line 269
    iput v0, p0, Lo/CrossPromotionHelper;->extraCallback:I

    .line 270
    iput v0, p0, Lo/CrossPromotionHelper;->asBinder:I

    .line 271
    sget-object v1, Lo/CrossPromotionHelper;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lo/CrossPromotionHelper;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 272
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lo/CrossPromotionHelper;->ICustomTabsService:Ljava/nio/ShortBuffer;

    .line 273
    sget-object v1, Lo/CrossPromotionHelper;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lo/CrossPromotionHelper;->newSession:Ljava/nio/ByteBuffer;

    .line 274
    iput v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lo/CrossPromotionHelper;->asInterface:Z

    const/4 v1, 0x0

    .line 276
    iput-object v1, p0, Lo/CrossPromotionHelper;->onTransact:Lo/LinkGenerator;

    const-wide/16 v1, 0x0

    .line 277
    iput-wide v1, p0, Lo/CrossPromotionHelper;->getInterfaceDescriptor:J

    .line 278
    iput-wide v1, p0, Lo/CrossPromotionHelper;->warmup:J

    .line 279
    iput-boolean v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public final extraCallback(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 121
    invoke-static {p1, v0, v1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(FFF)F

    move-result p1

    .line 122
    iget v0, p0, Lo/CrossPromotionHelper;->onMessageChannelReady:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 123
    iput p1, p0, Lo/CrossPromotionHelper;->onMessageChannelReady:F

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lo/CrossPromotionHelper;->asInterface:Z

    .line 126
    :cond_0
    invoke-virtual {p0}, Lo/CrossPromotionHelper;->onRelationshipValidationResult()V

    return p1
.end method

.method public final extraCallback(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 205
    iget-object v0, p0, Lo/CrossPromotionHelper;->onTransact:Lo/LinkGenerator;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LinkGenerator;

    .line 206
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 208
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 209
    iget-wide v3, p0, Lo/CrossPromotionHelper;->getInterfaceDescriptor:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lo/CrossPromotionHelper;->getInterfaceDescriptor:J

    .line 210
    invoke-virtual {v0, v1}, Lo/LinkGenerator;->ICustomTabsCallback(Ljava/nio/ShortBuffer;)V

    .line 211
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 213
    :cond_0
    invoke-virtual {v0}, Lo/LinkGenerator;->onNavigationEvent()I

    move-result p1

    if-lez p1, :cond_2

    .line 215
    iget-object v1, p0, Lo/CrossPromotionHelper;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 216
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lo/CrossPromotionHelper;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lo/CrossPromotionHelper;->ICustomTabsService:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lo/CrossPromotionHelper;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 220
    iget-object v1, p0, Lo/CrossPromotionHelper;->ICustomTabsService:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 222
    :goto_0
    iget-object v1, p0, Lo/CrossPromotionHelper;->ICustomTabsService:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lo/LinkGenerator;->onNavigationEvent(Ljava/nio/ShortBuffer;)V

    .line 223
    iget-wide v0, p0, Lo/CrossPromotionHelper;->warmup:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/CrossPromotionHelper;->warmup:J

    .line 224
    iget-object v0, p0, Lo/CrossPromotionHelper;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 225
    iget-object p1, p0, Lo/CrossPromotionHelper;->onRelationshipValidationResult:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lo/CrossPromotionHelper;->newSession:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public final extraCallback()Z
    .locals 3

    .line 182
    iget v0, p0, Lo/CrossPromotionHelper;->extraCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 183
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lo/CrossPromotionHelper;->onMessageChannelReady:F

    sub-float/2addr v0, v1

    .line 184
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lo/CrossPromotionHelper;->asBinder:I

    iget v1, p0, Lo/CrossPromotionHelper;->extraCallback:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 167
    iget p3, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback$Stub:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move p3, p1

    .line 169
    :cond_0
    iget v0, p0, Lo/CrossPromotionHelper;->extraCallback:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lo/CrossPromotionHelper;->onNavigationEvent:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lo/CrossPromotionHelper;->asBinder:I

    if-ne v0, p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 173
    :cond_1
    iput p1, p0, Lo/CrossPromotionHelper;->extraCallback:I

    .line 174
    iput p2, p0, Lo/CrossPromotionHelper;->onNavigationEvent:I

    .line 175
    iput p3, p0, Lo/CrossPromotionHelper;->asBinder:I

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lo/CrossPromotionHelper;->asInterface:Z

    return p1

    .line 165
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public final onMessageChannelReady(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 104
    invoke-static {p1, v0, v1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(FFF)F

    move-result p1

    .line 105
    iget v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 106
    iput p1, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback:F

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lo/CrossPromotionHelper;->asInterface:Z

    .line 109
    :cond_0
    invoke-virtual {p0}, Lo/CrossPromotionHelper;->onRelationshipValidationResult()V

    return p1
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 200
    iget v0, p0, Lo/CrossPromotionHelper;->asBinder:I

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 190
    iget v0, p0, Lo/CrossPromotionHelper;->onNavigationEvent:I

    return v0
.end method

.method public final onRelationshipValidationResult()V
    .locals 7

    .line 251
    invoke-virtual {p0}, Lo/CrossPromotionHelper;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-boolean v0, p0, Lo/CrossPromotionHelper;->asInterface:Z

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Lo/LinkGenerator;

    iget v2, p0, Lo/CrossPromotionHelper;->extraCallback:I

    iget v3, p0, Lo/CrossPromotionHelper;->onNavigationEvent:I

    iget v4, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback:F

    iget v5, p0, Lo/CrossPromotionHelper;->onMessageChannelReady:F

    iget v6, p0, Lo/CrossPromotionHelper;->asBinder:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LinkGenerator;-><init>(IIFFI)V

    iput-object v0, p0, Lo/CrossPromotionHelper;->onTransact:Lo/LinkGenerator;

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lo/CrossPromotionHelper;->onTransact:Lo/LinkGenerator;

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Lo/LinkGenerator;->ICustomTabsCallback()V

    .line 258
    :cond_1
    :goto_0
    sget-object v0, Lo/CrossPromotionHelper;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lo/CrossPromotionHelper;->newSession:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 259
    iput-wide v0, p0, Lo/CrossPromotionHelper;->getInterfaceDescriptor:J

    .line 260
    iput-wide v0, p0, Lo/CrossPromotionHelper;->warmup:J

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lo/CrossPromotionHelper;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public final onTransact()Ljava/nio/ByteBuffer;
    .locals 2

    .line 239
    iget-object v0, p0, Lo/CrossPromotionHelper;->newSession:Ljava/nio/ByteBuffer;

    .line 240
    sget-object v1, Lo/CrossPromotionHelper;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lo/CrossPromotionHelper;->newSession:Ljava/nio/ByteBuffer;

    return-object v0
.end method
