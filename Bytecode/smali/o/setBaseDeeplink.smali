.class public final Lo/setBaseDeeplink;
.super Lo/setLogging;
.source ""


# instance fields
.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:[B

.field private asBinder:I

.field private asInterface:I

.field private getInterfaceDescriptor:J

.field private newSession:I

.field private onMessageChannelReady:Z

.field private onRelationshipValidationResult:Z

.field private onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lo/setLogging;-><init>()V

    .line 40
    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    iput-object v0, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy:[B

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 163
    invoke-super {p0}, Lo/setLogging;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/setBaseDeeplink;->newSession:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lo/setBaseDeeplink;->getInterfaceDescriptor:J

    return-wide v0
.end method

.method protected final ICustomTabsService()V
    .locals 2

    .line 168
    iget-boolean v0, p0, Lo/setBaseDeeplink;->onRelationshipValidationResult:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    iput v1, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub:I

    .line 176
    :cond_0
    iput v1, p0, Lo/setBaseDeeplink;->newSession:I

    return-void
.end method

.method public final extraCallback(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 97
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 104
    iput-boolean v3, p0, Lo/setBaseDeeplink;->onRelationshipValidationResult:Z

    .line 107
    iget v3, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 108
    iget-wide v4, p0, Lo/setBaseDeeplink;->getInterfaceDescriptor:J

    iget v6, p0, Lo/setBaseDeeplink;->onTransact:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lo/setBaseDeeplink;->getInterfaceDescriptor:J

    .line 109
    iget v4, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub:I

    sub-int/2addr v4, v3

    iput v4, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v3

    .line 110
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 111
    iget v0, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    sub-int/2addr v2, v3

    .line 121
    iget v0, p0, Lo/setBaseDeeplink;->newSession:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    .line 122
    invoke-virtual {p0, v0}, Lo/setBaseDeeplink;->onNavigationEvent(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 125
    iget v4, p0, Lo/setBaseDeeplink;->newSession:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v4

    .line 126
    iget-object v6, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 130
    invoke-static {v0, v5, v2}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v0

    .line 131
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    .line 137
    iget v0, p0, Lo/setBaseDeeplink;->newSession:I

    sub-int/2addr v0, v4

    iput v0, p0, Lo/setBaseDeeplink;->newSession:I

    .line 138
    iget-object v1, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget-object v0, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy:[B

    iget v1, p0, Lo/setBaseDeeplink;->newSession:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 140
    iget p1, p0, Lo/setBaseDeeplink;->newSession:I

    add-int/2addr p1, v2

    iput p1, p0, Lo/setBaseDeeplink;->newSession:I

    .line 142
    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lo/setBaseDeeplink;->onMessageChannelReady:Z

    return v0
.end method

.method public final extraCallback(III)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 76
    iget v1, p0, Lo/setBaseDeeplink;->newSession:I

    if-lez v1, :cond_0

    .line 77
    iget-wide v2, p0, Lo/setBaseDeeplink;->getInterfaceDescriptor:J

    iget v4, p0, Lo/setBaseDeeplink;->onTransact:I

    div-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lo/setBaseDeeplink;->getInterfaceDescriptor:J

    .line 79
    :cond_0
    invoke-static {v0, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(II)I

    move-result v0

    iput v0, p0, Lo/setBaseDeeplink;->onTransact:I

    .line 80
    iget v1, p0, Lo/setBaseDeeplink;->asBinder:I

    mul-int v2, v1, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy:[B

    const/4 v2, 0x0

    .line 81
    iput v2, p0, Lo/setBaseDeeplink;->newSession:I

    .line 82
    iget v3, p0, Lo/setBaseDeeplink;->asInterface:I

    mul-int v0, v0, v3

    iput v0, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub:I

    .line 83
    iget-boolean v0, p0, Lo/setBaseDeeplink;->onMessageChannelReady:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 84
    :goto_1
    iput-boolean v1, p0, Lo/setBaseDeeplink;->onMessageChannelReady:Z

    .line 85
    iput-boolean v2, p0, Lo/setBaseDeeplink;->onRelationshipValidationResult:Z

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lo/setBaseDeeplink;->onNavigationEvent(III)Z

    .line 87
    iget-boolean p1, p0, Lo/setBaseDeeplink;->onMessageChannelReady:Z

    if-eq v0, p1, :cond_3

    return v4

    :cond_3
    return v2

    .line 74
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public final getInterfaceDescriptor()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lo/setBaseDeeplink;->getInterfaceDescriptor:J

    return-void
.end method

.method public final onMessageChannelReady(II)V
    .locals 0

    .line 53
    iput p1, p0, Lo/setBaseDeeplink;->asInterface:I

    .line 54
    iput p2, p0, Lo/setBaseDeeplink;->asBinder:I

    return-void
.end method

.method public final onTransact()Ljava/nio/ByteBuffer;
    .locals 4

    .line 148
    invoke-super {p0}, Lo/setLogging;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/setBaseDeeplink;->newSession:I

    if-lez v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lo/setBaseDeeplink;->onNavigationEvent(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy:[B

    iget v2, p0, Lo/setBaseDeeplink;->newSession:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 155
    iput v3, p0, Lo/setBaseDeeplink;->newSession:I

    .line 157
    :cond_0
    invoke-super {p0}, Lo/setLogging;->onTransact()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final warmup()V
    .locals 1

    .line 181
    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    iput-object v0, p0, Lo/setBaseDeeplink;->ICustomTabsCallback$Stub$Proxy:[B

    return-void
.end method
