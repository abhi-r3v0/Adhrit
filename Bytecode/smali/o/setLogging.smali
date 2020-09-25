.class public abstract Lo/setLogging;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field protected ICustomTabsCallback:I

.field private asInterface:Z

.field protected extraCallback:I

.field private onMessageChannelReady:Ljava/nio/ByteBuffer;

.field protected onNavigationEvent:I

.field private onTransact:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lo/setLogging;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lo/setLogging;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    .line 43
    sget-object v0, Lo/setLogging;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lo/setLogging;->onTransact:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lo/setLogging;->extraCallback:I

    .line 45
    iput v0, p0, Lo/setLogging;->ICustomTabsCallback:I

    .line 46
    iput v0, p0, Lo/setLogging;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lo/setLogging;->asInterface:Z

    .line 72
    invoke-virtual {p0}, Lo/setLogging;->newSession()V

    return-void
.end method

.method public ICustomTabsCallback$Stub()Z
    .locals 2

    .line 87
    iget-boolean v0, p0, Lo/setLogging;->asInterface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setLogging;->onTransact:Ljava/nio/ByteBuffer;

    sget-object v1, Lo/setLogging;->onPostMessage:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected ICustomTabsService()V
    .locals 0

    return-void
.end method

.method protected final asBinder()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lo/setLogging;->onTransact:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public final asInterface()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lo/setLogging;->onRelationshipValidationResult()V

    .line 100
    sget-object v0, Lo/setLogging;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lo/setLogging;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lo/setLogging;->ICustomTabsCallback:I

    .line 102
    iput v0, p0, Lo/setLogging;->extraCallback:I

    .line 103
    iput v0, p0, Lo/setLogging;->onNavigationEvent:I

    .line 104
    invoke-virtual {p0}, Lo/setLogging;->warmup()V

    return-void
.end method

.method public extraCallback()Z
    .locals 2

    .line 51
    iget v0, p0, Lo/setLogging;->ICustomTabsCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected newSession()V
    .locals 0

    return-void
.end method

.method public onMessageChannelReady()I
    .locals 1

    .line 66
    iget v0, p0, Lo/setLogging;->ICustomTabsCallback:I

    return v0
.end method

.method public onNavigationEvent()I
    .locals 1

    .line 61
    iget v0, p0, Lo/setLogging;->onNavigationEvent:I

    return v0
.end method

.method protected final onNavigationEvent(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/setLogging;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 128
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lo/setLogging;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lo/setLogging;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 132
    :goto_0
    iget-object p1, p0, Lo/setLogging;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lo/setLogging;->onTransact:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method protected final onNavigationEvent(III)Z
    .locals 1

    .line 110
    iget v0, p0, Lo/setLogging;->ICustomTabsCallback:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lo/setLogging;->extraCallback:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lo/setLogging;->onNavigationEvent:I

    if-ne p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 115
    :cond_0
    iput p1, p0, Lo/setLogging;->ICustomTabsCallback:I

    .line 116
    iput p2, p0, Lo/setLogging;->extraCallback:I

    .line 117
    iput p3, p0, Lo/setLogging;->onNavigationEvent:I

    const/4 p1, 0x1

    return p1
.end method

.method public onPostMessage()I
    .locals 1

    .line 56
    iget v0, p0, Lo/setLogging;->extraCallback:I

    return v0
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    .line 92
    sget-object v0, Lo/setLogging;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lo/setLogging;->onTransact:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lo/setLogging;->asInterface:Z

    .line 94
    invoke-virtual {p0}, Lo/setLogging;->ICustomTabsService()V

    return-void
.end method

.method public onTransact()Ljava/nio/ByteBuffer;
    .locals 2

    .line 78
    iget-object v0, p0, Lo/setLogging;->onTransact:Ljava/nio/ByteBuffer;

    .line 79
    sget-object v1, Lo/setLogging;->onPostMessage:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lo/setLogging;->onTransact:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected warmup()V
    .locals 0

    return-void
.end method
