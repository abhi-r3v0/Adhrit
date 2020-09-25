.class public final Lo/toAppJson;
.super Lo/loadSettingsData;
.source ""

# interfaces
.implements Lo/SettingsController;


# static fields
.field private static onPostMessage:Ljava/nio/ByteBuffer;


# instance fields
.field private extraCallback:I

.field private onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lo/toAppJson;->onPostMessage:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    sget-object v0, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    invoke-direct {p0, v0}, Lo/loadSettingsData;-><init>(Lo/toFeaturesJson$onMessageChannelReady;)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lo/loadSettingsData;->onPostMessage(Z)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 22
    sget-object p1, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    invoke-direct {p0, p1}, Lo/loadSettingsData;-><init>(Lo/toFeaturesJson$onMessageChannelReady;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lo/loadSettingsData;->onPostMessage(Z)V

    const/16 p1, 0x3e8

    const-string v0, ""

    .line 24
    invoke-direct {p0, p1, v0}, Lo/toAppJson;->onNavigationEvent(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 28
    sget-object v0, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    invoke-direct {p0, v0}, Lo/loadSettingsData;-><init>(Lo/toFeaturesJson$onMessageChannelReady;)V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lo/loadSettingsData;->onPostMessage(Z)V

    .line 30
    invoke-direct {p0, p1, p2}, Lo/toAppJson;->onNavigationEvent(ILjava/lang/String;)V

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;
        }
    .end annotation

    const/16 v0, 0x3ed

    .line 61
    iput v0, p0, Lo/toAppJson;->extraCallback:I

    .line 62
    invoke-super {p0}, Lo/loadSettingsData;->onPostMessage()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 64
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const/4 v2, 0x4

    .line 65
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 67
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lo/toAppJson;->extraCallback:I

    const/16 v3, 0x3ee

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3f7

    if-eq v2, v3, :cond_0

    if-eq v2, v0, :cond_0

    const/16 v0, 0x1387

    if-gt v2, v0, :cond_0

    const/16 v0, 0x3e8

    if-lt v2, v0, :cond_0

    const/16 v0, 0x3ec

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closecode must not be sent over the wire: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/toAppJson;->extraCallback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    return-void
.end method

.method private asInterface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 84
    iget v0, p0, Lo/toAppJson;->extraCallback:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    .line 85
    invoke-super {p0}, Lo/loadSettingsData;->onPostMessage()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lo/SettingsDataProvider;->extraCallback(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/toAppJson;->onNavigationEvent:Ljava/lang/String;

    return-void

    .line 87
    :cond_0
    invoke-super {p0}, Lo/loadSettingsData;->onPostMessage()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 90
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 91
    invoke-static {v0}, Lo/SettingsDataProvider;->extraCallback(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/toAppJson;->onNavigationEvent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 93
    :try_start_1
    new-instance v3, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    invoke-direct {v3, v2}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 96
    throw v2
.end method

.method private onNavigationEvent(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    const/16 v1, 0x3f7

    const/16 v2, 0x3ed

    if-ne p1, v1, :cond_1

    const/16 p1, 0x3ed

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    if-ne p1, v2, :cond_3

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    return-void

    .line 44
    :cond_2
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const/16 p2, 0x3ea

    const-string v0, "A close frame must have a closecode if it has a reason"

    invoke-direct {p1, p2, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 49
    :cond_3
    invoke-static {v0}, Lo/SettingsDataProvider;->onMessageChannelReady(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x4

    .line 50
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    .line 52
    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 53
    array-length v1, p2

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 1112
    invoke-super {p0, p1}, Lo/loadSettingsData;->onPostMessage(Ljava/nio/ByteBuffer;)V

    .line 1113
    invoke-direct {p0}, Lo/toAppJson;->ICustomTabsCallback$Stub()V

    .line 1114
    invoke-direct {p0}, Lo/toAppJson;->asInterface()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 80
    iget v0, p0, Lo/toAppJson;->extraCallback:I

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/toAppJson;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Ljava/nio/ByteBuffer;
    .locals 2

    .line 118
    iget v0, p0, Lo/toAppJson;->extraCallback:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    .line 119
    sget-object v0, Lo/toAppJson;->onPostMessage:Ljava/nio/ByteBuffer;

    return-object v0

    .line 120
    :cond_0
    invoke-super {p0}, Lo/loadSettingsData;->onPostMessage()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 112
    invoke-super {p0, p1}, Lo/loadSettingsData;->onPostMessage(Ljava/nio/ByteBuffer;)V

    .line 113
    invoke-direct {p0}, Lo/toAppJson;->ICustomTabsCallback$Stub()V

    .line 114
    invoke-direct {p0}, Lo/toAppJson;->asInterface()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lo/loadSettingsData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/toAppJson;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
