.class public final Lo/fG;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Ljava/nio/charset/Charset;

.field public static final extraCallback:[B

.field public static final onMessageChannelReady:Ljava/nio/charset/Charset;

.field private static final onNavigationEvent:Lo/eL;

.field private static final onPostMessage:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    .line 23
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/fG;->onMessageChannelReady:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 24
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/fG;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 26
    sput-object v1, Lo/fG;->extraCallback:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lo/fG;->onPostMessage:Ljava/nio/ByteBuffer;

    .line 27
    sget-object v1, Lo/fG;->extraCallback:[B

    .line 29
    array-length v2, v1

    .line 30
    invoke-static {v1, v0, v2, v0}, Lo/eL;->ICustomTabsCallback([BIIZ)Lo/eL;

    move-result-object v0

    .line 31
    sput-object v0, Lo/fG;->onNavigationEvent:Lo/eL;

    return-void
.end method

.method public static extraCallback([B)Z
    .locals 0

    .line 7
    invoke-static {p0}, Lo/j$1;->onMessageChannelReady([B)Z

    move-result p0

    return p0
.end method

.method static onMessageChannelReady(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    .line 16
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static onNavigationEvent(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static onNavigationEvent(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method static onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p0, Lo/ek;

    invoke-interface {p0}, Lo/ek;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23()Lo/startRecording;

    move-result-object p0

    check-cast p1, Lo/ek;

    invoke-interface {p0, p1}, Lo/startRecording;->onPostMessage(Lo/ek;)Lo/startRecording;

    move-result-object p0

    invoke-interface {p0}, Lo/startRecording;->ICustomTabsService$Stub()Lo/ek;

    move-result-object p0

    return-object p0
.end method

.method static onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent([B)Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lo/fG;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static onNavigationEvent(Lo/ek;)Z
    .locals 1

    .line 19
    instance-of v0, p0, Lo/getAttribute;

    if-eqz v0, :cond_0

    check-cast p0, Lo/getAttribute;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPostMessage([B)I
    .locals 2

    .line 11
    array-length v0, p0

    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p0, v1, v0}, Lo/fG;->onMessageChannelReady(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
