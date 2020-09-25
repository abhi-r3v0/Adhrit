.class public final Lo/canSendWrites;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/canSendWrites$onMessageChannelReady;,
        Lo/canSendWrites$ICustomTabsCallback;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lo/canSendWrites$ICustomTabsCallback;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/canSendWrites$ICustomTabsCallback;-><init>([B)V

    return-void
.end method

.method public static extraCallback(Lo/onServerInfoUpdate;)Ljava/io/InputStream;
    .locals 1

    .line 105
    new-instance v0, Lo/canSendWrites$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/canSendWrites$onMessageChannelReady;-><init>(Lo/onServerInfoUpdate;)V

    return-object v0
.end method

.method public static extraCallback(Lo/onServerInfoUpdate;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 2074
    invoke-interface {p0}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v0

    .line 2075
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2076
    invoke-interface {p0, v1, v2, v0}, Lo/onServerInfoUpdate;->ICustomTabsCallback([BII)V

    .line 86
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 2910
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "buffer"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1910
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "charset"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage([BII)Lo/onServerInfoUpdate;
    .locals 1

    .line 57
    new-instance v0, Lo/canSendWrites$ICustomTabsCallback;

    invoke-direct {v0, p0, p1, p2}, Lo/canSendWrites$ICustomTabsCallback;-><init>([BII)V

    return-object v0
.end method
