.class Lo/expandIfNecessary;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private eventHandler:Lo/remainingBytes;

.field private input:Ljava/io/DataInputStream;

.field private inputHeader:[B

.field private pendingBuilder:Lo/readHeader$onPostMessage;

.field private volatile stop:Z

.field private websocket:Lo/ringRead;


# direct methods
.method constructor <init>(Lo/ringRead;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lo/expandIfNecessary;->input:Ljava/io/DataInputStream;

    .line 28
    iput-object v0, p0, Lo/expandIfNecessary;->websocket:Lo/ringRead;

    .line 29
    iput-object v0, p0, Lo/expandIfNecessary;->eventHandler:Lo/remainingBytes;

    const/16 v0, 0x70

    new-array v0, v0, [B

    .line 30
    iput-object v0, p0, Lo/expandIfNecessary;->inputHeader:[B

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lo/expandIfNecessary;->stop:Z

    .line 36
    iput-object p1, p0, Lo/expandIfNecessary;->websocket:Lo/ringRead;

    return-void
.end method

.method private appendBytes(ZB[B)V
    .locals 1

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0, p3}, Lo/expandIfNecessary;->handlePing([B)V

    return-void

    .line 105
    :cond_0
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "PING must not fragment across frames"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    iget-object v0, p0, Lo/expandIfNecessary;->pendingBuilder:Lo/readHeader$onPostMessage;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Failed to continue outstanding frame"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/expandIfNecessary;->pendingBuilder:Lo/readHeader$onPostMessage;

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_1

    .line 112
    :cond_4
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_5
    :goto_1
    iget-object v0, p0, Lo/expandIfNecessary;->pendingBuilder:Lo/readHeader$onPostMessage;

    if-nez v0, :cond_6

    .line 116
    invoke-static {p2}, Lo/readHeader;->builder(B)Lo/readHeader$onPostMessage;

    move-result-object p2

    iput-object p2, p0, Lo/expandIfNecessary;->pendingBuilder:Lo/readHeader$onPostMessage;

    .line 118
    :cond_6
    iget-object p2, p0, Lo/expandIfNecessary;->pendingBuilder:Lo/readHeader$onPostMessage;

    invoke-interface {p2, p3}, Lo/readHeader$onPostMessage;->appendBytes([B)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    .line 121
    iget-object p1, p0, Lo/expandIfNecessary;->pendingBuilder:Lo/readHeader$onPostMessage;

    invoke-interface {p1}, Lo/readHeader$onPostMessage;->toMessage()Lo/usedBytes;

    move-result-object p1

    const/4 p2, 0x0

    .line 122
    iput-object p2, p0, Lo/expandIfNecessary;->pendingBuilder:Lo/readHeader$onPostMessage;

    if-eqz p1, :cond_7

    .line 127
    iget-object p2, p0, Lo/expandIfNecessary;->eventHandler:Lo/remainingBytes;

    invoke-interface {p2, p1}, Lo/remainingBytes;->onMessage(Lo/usedBytes;)V

    goto :goto_2

    .line 125
    :cond_7
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Failed to decode whole message"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    return-void

    .line 119
    :cond_9
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Failed to decode frame"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lo/expandIfNecessary;->stopit()V

    .line 169
    iget-object v0, p0, Lo/expandIfNecessary;->websocket:Lo/ringRead;

    invoke-virtual {v0, p1}, Lo/ringRead;->handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    return-void
.end method

.method private handlePing([B)V
    .locals 2

    .line 135
    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lo/expandIfNecessary;->websocket:Lo/ringRead;

    invoke-virtual {v0, p1}, Lo/ringRead;->pong([B)V

    return-void

    .line 138
    :cond_0
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v0, "PING frame too long"

    invoke-direct {p1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseLong([BI)J
    .locals 5

    .line 144
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lo/expandIfNecessary;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lo/expandIfNecessary;->stop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method run()V
    .locals 11

    .line 44
    iget-object v0, p0, Lo/expandIfNecessary;->websocket:Lo/ringRead;

    invoke-virtual {v0}, Lo/ringRead;->getEventHandler()Lo/remainingBytes;

    move-result-object v0

    iput-object v0, p0, Lo/expandIfNecessary;->eventHandler:Lo/remainingBytes;

    .line 45
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lo/expandIfNecessary;->stop:Z

    if-nez v0, :cond_a

    .line 48
    :try_start_0
    iget-object v0, p0, Lo/expandIfNecessary;->inputHeader:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lo/expandIfNecessary;->read([BII)I

    move-result v0

    add-int/2addr v0, v2

    .line 49
    iget-object v3, p0, Lo/expandIfNecessary;->inputHeader:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 50
    :goto_1
    iget-object v4, p0, Lo/expandIfNecessary;->inputHeader:[B

    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0x70

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_9

    .line 54
    iget-object v4, p0, Lo/expandIfNecessary;->inputHeader:[B

    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 55
    iget-object v5, p0, Lo/expandIfNecessary;->inputHeader:[B

    invoke-direct {p0, v5, v0, v1}, Lo/expandIfNecessary;->read([BII)I

    move-result v5

    add-int/2addr v0, v5

    .line 56
    iget-object v5, p0, Lo/expandIfNecessary;->inputHeader:[B

    aget-byte v5, v5, v1

    const-wide/16 v6, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x2

    const/16 v10, 0x8

    if-ge v5, v8, :cond_3

    int-to-long v6, v5

    goto :goto_3

    :cond_3
    if-ne v5, v8, :cond_4

    .line 61
    iget-object v5, p0, Lo/expandIfNecessary;->inputHeader:[B

    invoke-direct {p0, v5, v0, v9}, Lo/expandIfNecessary;->read([BII)I

    .line 62
    iget-object v0, p0, Lo/expandIfNecessary;->inputHeader:[B

    aget-byte v0, v0, v9

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    shl-long/2addr v5, v10

    iget-object v0, p0, Lo/expandIfNecessary;->inputHeader:[B

    const/4 v7, 0x3

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    int-to-long v7, v0

    or-long v6, v5, v7

    goto :goto_3

    :cond_4
    const/16 v8, 0x7f

    if-ne v5, v8, :cond_5

    .line 67
    iget-object v5, p0, Lo/expandIfNecessary;->inputHeader:[B

    invoke-direct {p0, v5, v0, v10}, Lo/expandIfNecessary;->read([BII)I

    move-result v5

    add-int/2addr v0, v5

    .line 69
    iget-object v5, p0, Lo/expandIfNecessary;->inputHeader:[B

    sub-int/2addr v0, v10

    invoke-direct {p0, v5, v0}, Lo/expandIfNecessary;->parseLong([BI)J

    move-result-wide v6

    :cond_5
    :goto_3
    long-to-int v0, v6

    .line 72
    new-array v5, v0, [B

    .line 73
    invoke-direct {p0, v5, v2, v0}, Lo/expandIfNecessary;->read([BII)I

    if-ne v4, v10, :cond_6

    .line 75
    iget-object v0, p0, Lo/expandIfNecessary;->websocket:Lo/ringRead;

    invoke-virtual {v0}, Lo/ringRead;->onCloseOpReceived()V

    goto :goto_0

    :cond_6
    const/16 v0, 0xa

    if-eq v4, v0, :cond_0

    if-eq v4, v1, :cond_8

    if-eq v4, v9, :cond_8

    const/16 v0, 0x9

    if-eq v4, v0, :cond_8

    if-nez v4, :cond_7

    goto :goto_4

    .line 86
    :cond_7
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Unsupported opcode: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_8
    :goto_4
    invoke-direct {p0, v3, v4, v5}, Lo/expandIfNecessary;->appendBytes(ZB[B)V

    goto/16 :goto_0

    .line 52
    :cond_9
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Invalid frame received"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 94
    invoke-direct {p0, v0}, Lo/expandIfNecessary;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 92
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "IO Error"

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lo/expandIfNecessary;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto/16 :goto_0

    :catch_2
    nop

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method setInput(Ljava/io/DataInputStream;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/expandIfNecessary;->input:Ljava/io/DataInputStream;

    return-void
.end method

.method stopit()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lo/expandIfNecessary;->stop:Z

    return-void
.end method
