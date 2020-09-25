.class final Lo/appendFrame$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getOptInclusiveEnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/appendFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final extraCallback:Lo/fullLimitUpdateChild;

.field private final onMessageChannelReady:Lo/appendFrame$onPostMessage;

.field private onNavigationEvent:Lo/getSnap$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/fullLimitUpdateChild;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    .line 104
    new-instance v0, Lo/appendFrame$onPostMessage;

    invoke-direct {v0, p1}, Lo/appendFrame$onPostMessage;-><init>(Lo/fullLimitUpdateChild;)V

    iput-object v0, p0, Lo/appendFrame$ICustomTabsCallback;->onMessageChannelReady:Lo/appendFrame$onPostMessage;

    .line 105
    new-instance p1, Lo/getSnap$onMessageChannelReady;

    const/16 v1, 0x1000

    invoke-direct {p1, v1, v0}, Lo/getSnap$onMessageChannelReady;-><init>(ILo/toLog;)V

    iput-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->onNavigationEvent:Lo/getSnap$onMessageChannelReady;

    return-void
.end method

.method private onMessageChannelReady(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lo/appendFrame$ICustomTabsCallback;->onMessageChannelReady:Lo/appendFrame$onPostMessage;

    iput p1, v0, Lo/appendFrame$onPostMessage;->extraCallback:I

    iput p1, v0, Lo/appendFrame$onPostMessage;->onNavigationEvent:I

    .line 212
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->onMessageChannelReady:Lo/appendFrame$onPostMessage;

    iput-short p2, p1, Lo/appendFrame$onPostMessage;->onPostMessage:S

    .line 213
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->onMessageChannelReady:Lo/appendFrame$onPostMessage;

    iput-byte p3, p1, Lo/appendFrame$onPostMessage;->ICustomTabsCallback:B

    .line 214
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->onMessageChannelReady:Lo/appendFrame$onPostMessage;

    iput p4, p1, Lo/appendFrame$onPostMessage;->onMessageChannelReady:I

    .line 218
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->onNavigationEvent:Lo/getSnap$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getSnap$onMessageChannelReady;->extraCallback()V

    .line 219
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->onNavigationEvent:Lo/getSnap$onMessageChannelReady;

    .line 6239
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Lo/getSnap$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6240
    iget-object p1, p1, Lo/getSnap$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void
.end method

.method public final onNavigationEvent(Lo/getOptInclusiveEnd$onPostMessage;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lo/fullLimitUpdateChild;->onPostMessage(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    iget-object v1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-static {v1}, Lo/appendFrame;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_25

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_25

    .line 140
    iget-object v4, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v4

    int-to-byte v4, v4

    .line 141
    iget-object v5, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v5}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v5

    int-to-byte v5, v5

    .line 142
    iget-object v6, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v6}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    .line 143
    invoke-static {}, Lo/appendFrame;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lo/appendFrame;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v8

    invoke-static {v2, v6, v1, v4, v5}, Lo/appendFrame$onNavigationEvent;->onPostMessage(ZIIBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v8, 0x4

    const/16 v9, 0x8

    packed-switch v4, :pswitch_data_0

    .line 184
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto/16 :goto_7

    :pswitch_0
    if-ne v1, v8, :cond_2

    .line 5364
    iget-object v1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    int-to-long v3, v1

    const-wide/32 v7, 0x7fffffff

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-eqz v1, :cond_1

    .line 5366
    invoke-interface {p1, v6, v3, v4}, Lo/getOptInclusiveEnd$onPostMessage;->onNavigationEvent(IJ)V

    goto/16 :goto_7

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "windowSizeIncrement was 0"

    .line 5365
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    .line 5363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    if-lt v1, v9, :cond_6

    if-nez v6, :cond_5

    .line 5346
    iget-object v3, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    .line 5347
    iget-object v4, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v4

    sub-int/2addr v1, v9

    .line 5349
    invoke-static {v4}, Lo/wasSent;->extraCallback(I)Lo/wasSent;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 5353
    sget-object v0, Lo/matches;->extraCallback:Lo/matches;

    if-lez v1, :cond_3

    .line 5355
    iget-object v0, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    int-to-long v6, v1

    invoke-interface {v0, v6, v7}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v0

    .line 5357
    :cond_3
    invoke-interface {p1, v3, v5, v0}, Lo/getOptInclusiveEnd$onPostMessage;->onMessageChannelReady(ILo/wasSent;Lo/matches;)V

    goto/16 :goto_7

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 5351
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_5
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_GOAWAY streamId != 0"

    .line 5345
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    .line 5344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    if-ne v1, v9, :cond_9

    if-nez v6, :cond_8

    .line 5335
    iget-object v1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 5336
    iget-object v3, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 5338
    :cond_7
    invoke-interface {p1, v0, v1, v3}, Lo/getOptInclusiveEnd$onPostMessage;->onNavigationEvent(ZII)V

    goto/16 :goto_7

    :cond_8
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_PING streamId != 0"

    .line 5334
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    new-array p1, v2, [Ljava/lang/Object;

    .line 5333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_PING length != 8: %s"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_3
    if-eqz v6, :cond_b

    and-int/lit8 v3, v5, 0x8

    if-eqz v3, :cond_a

    .line 5323
    iget-object v0, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 5324
    :cond_a
    iget-object v3, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    and-int/2addr v3, v7

    add-int/lit8 v1, v1, -0x4

    .line 5326
    invoke-static {v1, v5, v0}, Lo/appendFrame;->extraCallback(IBS)I

    move-result v1

    .line 5327
    invoke-direct {p0, v1, v0, v5, v6}, Lo/appendFrame$ICustomTabsCallback;->onMessageChannelReady(ISBI)Ljava/util/List;

    move-result-object v0

    .line 5328
    invoke-interface {p1, v6, v3, v0}, Lo/getOptInclusiveEnd$onPostMessage;->onNavigationEvent(IILjava/util/List;)V

    goto/16 :goto_7

    :cond_b
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 5321
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_4
    if-nez v6, :cond_16

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_d

    if-nez v1, :cond_c

    goto/16 :goto_7

    :cond_c
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 3271
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 3276
    :cond_d
    rem-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_15

    .line 3277
    new-instance v4, Lo/orderBy;

    invoke-direct {v4}, Lo/orderBy;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_12

    .line 3279
    iget-object v6, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v6}, Lo/fullLimitUpdateChild;->onRelationshipValidationResult()S

    move-result v6

    .line 3280
    iget-object v7, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v7}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v7

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    :pswitch_5
    if-lt v7, v3, :cond_e

    const v9, 0xffffff

    if-gt v7, v9, :cond_e

    goto :goto_1

    :cond_e
    new-array p1, v2, [Ljava/lang/Object;

    .line 3301
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_6
    const/4 v6, 0x7

    if-ltz v7, :cond_f

    goto :goto_1

    :cond_f
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 3296
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_7
    const/4 v6, 0x4

    goto :goto_1

    :pswitch_8
    if-eqz v7, :cond_11

    if-ne v7, v2, :cond_10

    goto :goto_1

    :cond_10
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 3287
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 3310
    :cond_11
    :goto_1
    :pswitch_9
    invoke-virtual {v4, v6, v7}, Lo/orderBy;->onPostMessage(II)Lo/orderBy;

    :goto_2
    add-int/lit8 v5, v5, 0x6

    goto :goto_0

    .line 3312
    :cond_12
    invoke-interface {p1, v4}, Lo/getOptInclusiveEnd$onPostMessage;->extraCallback(Lo/orderBy;)V

    .line 4147
    iget p1, v4, Lo/orderBy;->onPostMessage:I

    and-int/lit8 p1, p1, 0x2

    const/4 v0, -0x1

    if-eqz p1, :cond_13

    iget-object p1, v4, Lo/orderBy;->onNavigationEvent:[I

    aget p1, p1, v2

    goto :goto_3

    :cond_13
    const/4 p1, -0x1

    :goto_3
    if-ltz p1, :cond_24

    .line 3314
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->onNavigationEvent:Lo/getSnap$onMessageChannelReady;

    .line 5147
    iget v1, v4, Lo/orderBy;->onPostMessage:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_14

    iget-object v0, v4, Lo/orderBy;->onNavigationEvent:[I

    aget v0, v0, v2

    .line 5165
    :cond_14
    iput v0, p1, Lo/getSnap$onMessageChannelReady;->onMessageChannelReady:I

    .line 5166
    iput v0, p1, Lo/getSnap$onMessageChannelReady;->onPostMessage:I

    .line 5167
    invoke-virtual {p1}, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback()V

    goto/16 :goto_7

    :cond_15
    new-array p1, v2, [Ljava/lang/Object;

    .line 3276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_16
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_SETTINGS streamId != 0"

    .line 3269
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_a
    if-ne v1, v8, :cond_19

    if-eqz v6, :cond_18

    .line 3259
    iget-object v1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 3260
    invoke-static {v1}, Lo/wasSent;->extraCallback(I)Lo/wasSent;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 3264
    invoke-interface {p1, v6, v3}, Lo/getOptInclusiveEnd$onPostMessage;->ICustomTabsCallback(ILo/wasSent;)V

    goto/16 :goto_7

    :cond_17
    new-array p1, v2, [Ljava/lang/Object;

    .line 3262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_18
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    .line 3258
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_19
    new-array p1, v2, [Ljava/lang/Object;

    .line 3257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_b
    const/4 p1, 0x5

    if-ne v1, p1, :cond_1b

    if-eqz v6, :cond_1a

    .line 3247
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->asInterface()I

    .line 3250
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    goto/16 :goto_7

    :cond_1a
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_PRIORITY streamId == 0"

    .line 3242
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1b
    new-array p1, v2, [Ljava/lang/Object;

    .line 3241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_c
    if-eqz v6, :cond_1f

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_4

    :cond_1c
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_1d

    .line 2195
    iget-object v0, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1d
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_1e

    .line 2247
    iget-object v4, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->asInterface()I

    .line 2250
    iget-object v4, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    add-int/lit8 v1, v1, -0x5

    .line 2202
    :cond_1e
    invoke-static {v1, v5, v0}, Lo/appendFrame;->extraCallback(IBS)I

    move-result v1

    .line 2204
    invoke-direct {p0, v1, v0, v5, v6}, Lo/appendFrame$ICustomTabsCallback;->onMessageChannelReady(ISBI)Ljava/util/List;

    move-result-object v0

    .line 2206
    sget-object v1, Lo/onRequestResult;->onPostMessage:Lo/onRequestResult;

    invoke-interface {p1, v3, v6, v0}, Lo/getOptInclusiveEnd$onPostMessage;->ICustomTabsCallback(ZILjava/util/List;)V

    goto :goto_7

    :cond_1f
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 2191
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_d
    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_5

    :cond_20
    const/4 v3, 0x0

    :goto_5
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    goto :goto_6

    :cond_21
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_23

    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_22

    .line 1231
    iget-object v0, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 1232
    :cond_22
    invoke-static {v1, v5, v0}, Lo/appendFrame;->extraCallback(IBS)I

    move-result v1

    .line 1234
    iget-object v4, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {p1, v3, v6, v4, v1}, Lo/getOptInclusiveEnd$onPostMessage;->onNavigationEvent(ZILo/fullLimitUpdateChild;I)V

    .line 1235
    iget-object p1, p0, Lo/appendFrame$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto :goto_7

    :cond_23
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 1228
    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_24
    :goto_7
    return v2

    :cond_25
    new-array p1, v2, [Ljava/lang/Object;

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v0, p1}, Lo/appendFrame;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
