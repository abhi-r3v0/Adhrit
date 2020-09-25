.class public abstract Lcom/google/common/io/BaseEncoding;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/BaseEncoding$onNavigationEvent;,
        Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;,
        Lcom/google/common/io/BaseEncoding$onMessageChannelReady;,
        Lcom/google/common/io/BaseEncoding$extraCallback;,
        Lcom/google/common/io/BaseEncoding$DecodingException;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 320
    new-instance v0, Lcom/google/common/io/BaseEncoding$onNavigationEvent;

    const/16 v1, 0x3d

    .line 322
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->onNavigationEvent:Lcom/google/common/io/BaseEncoding;

    .line 341
    new-instance v0, Lcom/google/common/io/BaseEncoding$onNavigationEvent;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 343
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 363
    new-instance v0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 364
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 382
    new-instance v0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 383
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 401
    new-instance v0, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 338
    sget-object v0, Lcom/google/common/io/BaseEncoding;->onNavigationEvent:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method


# virtual methods
.method abstract ICustomTabsCallback(I)I
.end method

.method public abstract ICustomTabsCallback()Lcom/google/common/io/BaseEncoding;
.end method

.method ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    .line 270
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2890
    throw p1
.end method

.method abstract extraCallback([BLjava/lang/CharSequence;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation
.end method

.method public final onMessageChannelReady([BI)Ljava/lang/String;
    .locals 3

    .line 156
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {v1, p2, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(III)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/google/common/io/BaseEncoding;->ICustomTabsCallback(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    :try_start_0
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/common/io/BaseEncoding;->onPostMessage(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 161
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final onMessageChannelReady(Ljava/lang/CharSequence;)[B
    .locals 3

    .line 1231
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1232
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->onNavigationEvent(I)I

    move-result v0

    new-array v1, v0, [B

    .line 1233
    invoke-virtual {p0, v1, p1}, Lcom/google/common/io/BaseEncoding;->extraCallback([BLjava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v1

    .line 2194
    :cond_0
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 2195
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method abstract onNavigationEvent(I)I
.end method

.method abstract onPostMessage(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
