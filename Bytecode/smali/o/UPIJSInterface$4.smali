.class public final Lo/UPIJSInterface$4;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:Ljava/io/DataOutputStream;

.field private final onNavigationEvent:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lo/UPIJSInterface$4;->onNavigationEvent:Ljava/io/ByteArrayOutputStream;

    .line 32
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lo/UPIJSInterface$4;->onNavigationEvent:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lo/UPIJSInterface$4;->extraCallback:Ljava/io/DataOutputStream;

    return-void
.end method

.method private static extraCallback(Ljava/io/DataOutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 67
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 68
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 69
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    .line 70
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method private static onPostMessage(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/GeneratedAppGlideModule;)[B
    .locals 3

    .line 43
    iget-object v0, p0, Lo/UPIJSInterface$4;->onNavigationEvent:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lo/UPIJSInterface$4;->extraCallback:Ljava/io/DataOutputStream;

    iget-object v1, p1, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/UPIJSInterface$4;->onPostMessage(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 46
    iget-object v0, p1, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 47
    :goto_0
    iget-object v1, p0, Lo/UPIJSInterface$4;->extraCallback:Ljava/io/DataOutputStream;

    invoke-static {v1, v0}, Lo/UPIJSInterface$4;->onPostMessage(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lo/UPIJSInterface$4;->extraCallback:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lo/GeneratedAppGlideModule;->extraCallback:J

    invoke-static {v0, v1, v2}, Lo/UPIJSInterface$4;->extraCallback(Ljava/io/DataOutputStream;J)V

    .line 49
    iget-object v0, p0, Lo/UPIJSInterface$4;->extraCallback:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lo/GeneratedAppGlideModule;->onNavigationEvent:J

    invoke-static {v0, v1, v2}, Lo/UPIJSInterface$4;->extraCallback(Ljava/io/DataOutputStream;J)V

    .line 50
    iget-object v0, p0, Lo/UPIJSInterface$4;->extraCallback:Ljava/io/DataOutputStream;

    iget-object p1, p1, Lo/GeneratedAppGlideModule;->onMessageChannelReady:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 51
    iget-object p1, p0, Lo/UPIJSInterface$4;->extraCallback:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 52
    iget-object p1, p0, Lo/UPIJSInterface$4;->onNavigationEvent:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
