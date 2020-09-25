.class public Lo/loadSettingsData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toSessionJson;


# static fields
.field private static extraCallback:[B


# instance fields
.field public ICustomTabsCallback:Z

.field public onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

.field private onNavigationEvent:Z

.field private onPostMessage:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 11
    sput-object v0, Lo/loadSettingsData;->extraCallback:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/toFeaturesJson$onMessageChannelReady;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/loadSettingsData;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    .line 22
    sget-object p1, Lo/loadSettingsData;->extraCallback:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lo/loadSettingsData;->onPostMessage:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lo/toFeaturesJson;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1}, Lo/toFeaturesJson;->onNavigationEvent()Z

    move-result v0

    iput-boolean v0, p0, Lo/loadSettingsData;->ICustomTabsCallback:Z

    .line 31
    invoke-interface {p1}, Lo/toFeaturesJson;->onTransact()Lo/toFeaturesJson$onMessageChannelReady;

    move-result-object v0

    iput-object v0, p0, Lo/loadSettingsData;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    .line 32
    invoke-interface {p1}, Lo/toFeaturesJson;->onPostMessage()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/loadSettingsData;->onPostMessage:Ljava/nio/ByteBuffer;

    .line 33
    invoke-interface {p1}, Lo/toFeaturesJson;->onMessageChannelReady()Z

    move-result p1

    iput-boolean p1, p0, Lo/loadSettingsData;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lo/loadSettingsData;->onNavigationEvent:Z

    return v0
.end method

.method public final onNavigationEvent(Lo/toFeaturesJson$onMessageChannelReady;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/loadSettingsData;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lo/loadSettingsData;->ICustomTabsCallback:Z

    return v0
.end method

.method public onPostMessage()Ljava/nio/ByteBuffer;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/loadSettingsData;->onPostMessage:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public onPostMessage(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lo/loadSettingsData;->onPostMessage:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lo/loadSettingsData;->ICustomTabsCallback:Z

    return-void
.end method

.method public final onTransact()Lo/toFeaturesJson$onMessageChannelReady;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/loadSettingsData;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Framedata{ optcode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lo/loadSettingsData;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    iget-boolean v1, p0, Lo/loadSettingsData;->ICustomTabsCallback:Z

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", payloadlength:[pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/loadSettingsData;->onPostMessage:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/loadSettingsData;->onPostMessage:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/loadSettingsData;->onPostMessage:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lo/SettingsDataProvider;->onMessageChannelReady(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
