.class public final Lo/getChildKey$onMessageChannelReady;
.super Ljava/io/Reader;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Ljava/io/Reader;

.field private final onMessageChannelReady:Lo/fullLimitUpdateChild;

.field private final onPostMessage:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lo/fullLimitUpdateChild;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 247
    iput-object p1, p0, Lo/getChildKey$onMessageChannelReady;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    .line 248
    iput-object p2, p0, Lo/getChildKey$onMessageChannelReady;->onPostMessage:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lo/getChildKey$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 264
    iget-object v0, p0, Lo/getChildKey$onMessageChannelReady;->extraCallback:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lo/getChildKey$onMessageChannelReady;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void
.end method

.method public final read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lo/getChildKey$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lo/getChildKey$onMessageChannelReady;->extraCallback:Ljava/io/Reader;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lo/getChildKey$onMessageChannelReady;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    iget-object v1, p0, Lo/getChildKey$onMessageChannelReady;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lo/generateEventsForType;->onNavigationEvent(Lo/fullLimitUpdateChild;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lo/getChildKey$onMessageChannelReady;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v2}, Lo/fullLimitUpdateChild;->onNavigationEvent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lo/getChildKey$onMessageChannelReady;->extraCallback:Ljava/io/Reader;

    move-object v0, v1

    .line 259
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    .line 252
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
