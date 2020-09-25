.class public Lo/setReferrerCustomerId;
.super Lo/getChannel;
.source ""


# instance fields
.field public final ICustomTabsCallback:Lo/setDeeplinkPath;

.field private final extraCallback:I

.field public onNavigationEvent:Ljava/nio/ByteBuffer;

.field public onPostMessage:J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lo/getChannel;-><init>()V

    .line 88
    new-instance v0, Lo/setDeeplinkPath;

    invoke-direct {v0}, Lo/setDeeplinkPath;-><init>()V

    iput-object v0, p0, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    .line 89
    iput p1, p0, Lo/setReferrerCustomerId;->extraCallback:I

    return-void
.end method

.method public static extraCallback()Lo/setReferrerCustomerId;
    .locals 2

    .line 79
    new-instance v0, Lo/setReferrerCustomerId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setReferrerCustomerId;-><init>(I)V

    return-object v0
.end method

.method private onRelationshipValidationResult(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 161
    iget v0, p0, Lo/setReferrerCustomerId;->extraCallback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 162
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 164
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 166
    :cond_1
    iget-object v0, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 167
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffer too small ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final asBinder()V
    .locals 1

    .line 149
    iget-object v0, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public onMessageChannelReady()V
    .locals 1

    .line 154
    invoke-super {p0}, Lo/getChannel;->onMessageChannelReady()V

    .line 155
    iget-object v0, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public onPostMessage(I)V
    .locals 3

    .line 105
    iget-object v0, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lo/setReferrerCustomerId;->onRelationshipValidationResult(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 111
    iget-object v1, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_1

    return-void

    .line 117
    :cond_1
    invoke-direct {p0, p1}, Lo/setReferrerCustomerId;->onRelationshipValidationResult(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-lez v1, :cond_2

    .line 120
    iget-object v0, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget-object v0, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 122
    iget-object v0, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 125
    :cond_2
    iput-object p1, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Lo/setReferrerCustomerId;->extraCallback:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 140
    invoke-virtual {p0, v0}, Lo/setReferrerCustomerId;->onMessageChannelReady(I)Z

    move-result v0

    return v0
.end method
