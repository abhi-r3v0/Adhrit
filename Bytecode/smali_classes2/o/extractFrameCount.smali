.class public final Lo/extractFrameCount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/extractFrameCount$onNavigationEvent;
    }
.end annotation


# static fields
.field static volatile onPostMessage:Lo/writeSessionEventDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    sput-object v0, Lo/extractFrameCount;->onPostMessage:Lo/writeSessionEventDevice;

    return-void
.end method

.method static extraCallback(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 109
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1

    .line 2910
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "outputStream cannot be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1910
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inputStream cannot be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/WireFormat$FieldType$2;",
            ">(TT;)",
            "Lo/reverseIterator$onMessageChannelReady<",
            "TT;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lo/extractFrameCount$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/extractFrameCount$onNavigationEvent;-><init>(Lo/WireFormat$FieldType$2;)V

    return-object v0
.end method
