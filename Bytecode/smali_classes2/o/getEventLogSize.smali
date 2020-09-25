.class public final Lo/getEventLogSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getEventLogSize$onRelationshipValidationResult;,
        Lo/getEventLogSize$onMessageChannelReady;,
        Lo/getEventLogSize$asInterface;,
        Lo/getEventLogSize$onPostMessage;,
        Lo/getEventLogSize$onTransact;,
        Lo/getEventLogSize$asBinder;,
        Lo/getEventLogSize$extraCallback;,
        Lo/getEventLogSize$onNavigationEvent;,
        Lo/getEventLogSize$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:[B

.field public static final extraCallback:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 58
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 59
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 378
    sput-object v0, Lo/getEventLogSize;->ICustomTabsCallback:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 381
    sget-object v0, Lo/getEventLogSize;->ICustomTabsCallback:[B

    .line 382
    invoke-static {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady([B)Lo/writeSessionAppClsId;

    return-void
.end method

.method public static ICustomTabsCallback([B)Z
    .locals 0

    .line 181
    invoke-static {p0}, Lo/CompositeCreateReportSpiCall$1;->ICustomTabsCallback([B)Z

    move-result p0

    return p0
.end method

.method public static extraCallback(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method static extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 387
    check-cast p0, Lo/WireFormat$FieldType$2;

    invoke-interface {p0}, Lo/WireFormat$FieldType$2;->toBuilder()Lo/WireFormat$FieldType$2$extraCallback;

    move-result-object p0

    check-cast p1, Lo/WireFormat$FieldType$2;

    invoke-interface {p0, p1}, Lo/WireFormat$FieldType$2$extraCallback;->mergeFrom(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2$extraCallback;

    move-result-object p0

    invoke-interface {p0}, Lo/WireFormat$FieldType$2$extraCallback;->buildPartial()Lo/WireFormat$FieldType$2;

    move-result-object p0

    return-object p0
.end method

.method static extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
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

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extraCallback([B)Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static onNavigationEvent([B)I
    .locals 4

    .line 283
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v3, v0, 0x0

    if-ge v1, v3, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 1299
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
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

    .line 64
    throw p0
.end method

.method static onPostMessage(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    .line 299
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static onPostMessage(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method
