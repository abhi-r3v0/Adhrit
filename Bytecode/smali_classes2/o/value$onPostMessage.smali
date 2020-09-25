.class final Lo/value$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDefaultConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/value$ICustomTabsCallback;

.field private extraCallback:Lo/assertUnfrozen$onPostMessage;

.field private final onMessageChannelReady:Z

.field private final onPostMessage:Lo/fullLimitUpdateChild;


# direct methods
.method constructor <init>(Lo/fullLimitUpdateChild;Z)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 97
    iput-boolean p2, p0, Lo/value$onPostMessage;->onMessageChannelReady:Z

    .line 98
    new-instance p2, Lo/value$ICustomTabsCallback;

    invoke-direct {p2, p1}, Lo/value$ICustomTabsCallback;-><init>(Lo/fullLimitUpdateChild;)V

    iput-object p2, p0, Lo/value$onPostMessage;->ICustomTabsCallback:Lo/value$ICustomTabsCallback;

    .line 99
    new-instance p1, Lo/assertUnfrozen$onPostMessage;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lo/assertUnfrozen$onPostMessage;-><init>(ILo/toLog;)V

    iput-object p1, p0, Lo/value$onPostMessage;->extraCallback:Lo/assertUnfrozen$onPostMessage;

    return-void
.end method

.method private onMessageChannelReady(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lo/value$onPostMessage;->ICustomTabsCallback:Lo/value$ICustomTabsCallback;

    iput p1, v0, Lo/value$ICustomTabsCallback;->onMessageChannelReady:I

    iput p1, v0, Lo/value$ICustomTabsCallback;->extraCallback:I

    .line 206
    iget-object p1, p0, Lo/value$onPostMessage;->ICustomTabsCallback:Lo/value$ICustomTabsCallback;

    iput-short p2, p1, Lo/value$ICustomTabsCallback;->ICustomTabsCallback:S

    .line 207
    iget-object p1, p0, Lo/value$onPostMessage;->ICustomTabsCallback:Lo/value$ICustomTabsCallback;

    iput-byte p3, p1, Lo/value$ICustomTabsCallback;->onPostMessage:B

    .line 208
    iget-object p1, p0, Lo/value$onPostMessage;->ICustomTabsCallback:Lo/value$ICustomTabsCallback;

    iput p4, p1, Lo/value$ICustomTabsCallback;->onNavigationEvent:I

    .line 212
    iget-object p1, p0, Lo/value$onPostMessage;->extraCallback:Lo/assertUnfrozen$onPostMessage;

    invoke-virtual {p1}, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady()V

    .line 213
    iget-object p1, p0, Lo/value$onPostMessage;->extraCallback:Lo/assertUnfrozen$onPostMessage;

    .line 6221
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6222
    iget-object p1, p1, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

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

    .line 359
    iget-object v0, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void
.end method

.method public final onNavigationEvent(Lo/getDefaultConfig$onPostMessage;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lo/fullLimitUpdateChild;->onPostMessage(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-static {v1}, Lo/value;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_25

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_25

    .line 134
    iget-object v4, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v4

    int-to-byte v4, v4

    .line 135
    iget-object v5, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v5}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v5

    int-to-byte v5, v5

    .line 136
    iget-object v6, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v6}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v6

    const v7, 0x7fffffff

    and-int v11, v6, v7

    .line 137
    invoke-static {}, Lo/value;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lo/value;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v6

    invoke-static {v2, v11, v1, v4, v5}, Lo/value$onNavigationEvent;->onPostMessage(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x4

    const/16 v8, 0x8

    packed-switch v4, :pswitch_data_0

    .line 178
    iget-object p1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto/16 :goto_6

    :pswitch_0
    if-ne v1, v6, :cond_2

    .line 5353
    iget-object v1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    int-to-long v3, v1

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 5355
    invoke-interface {p1, v11, v3, v4}, Lo/getDefaultConfig$onPostMessage;->onNavigationEvent(IJ)V

    goto/16 :goto_6

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 5354
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    .line 5352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    if-lt v1, v8, :cond_6

    if-nez v11, :cond_5

    .line 5336
    iget-object v3, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    .line 5337
    iget-object v4, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v4

    sub-int/2addr v1, v8

    .line 5339
    invoke-static {v4}, Lo/getReferenceFromUrl;->onNavigationEvent(I)Lo/getReferenceFromUrl;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 5343
    sget-object v0, Lo/matches;->extraCallback:Lo/matches;

    if-lez v1, :cond_3

    .line 5345
    iget-object v0, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    int-to-long v4, v1

    invoke-interface {v0, v4, v5}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v0

    .line 5347
    :cond_3
    invoke-interface {p1, v3, v0}, Lo/getDefaultConfig$onPostMessage;->ICustomTabsCallback(ILo/matches;)V

    goto/16 :goto_6

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 5341
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_5
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_GOAWAY streamId != 0"

    .line 5335
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    .line 5334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    if-ne v1, v8, :cond_9

    if-nez v11, :cond_8

    .line 5326
    iget-object v1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 5327
    iget-object v3, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 5329
    :cond_7
    invoke-interface {p1, v0, v1, v3}, Lo/getDefaultConfig$onPostMessage;->onNavigationEvent(ZII)V

    goto/16 :goto_6

    :cond_8
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_PING streamId != 0"

    .line 5325
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    new-array p1, v2, [Ljava/lang/Object;

    .line 5324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_PING length != 8: %s"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_3
    if-eqz v11, :cond_b

    and-int/lit8 v3, v5, 0x8

    if-eqz v3, :cond_a

    .line 5314
    iget-object v0, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 5315
    :cond_a
    iget-object v3, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    and-int/2addr v3, v7

    add-int/lit8 v1, v1, -0x4

    .line 5317
    invoke-static {v1, v5, v0}, Lo/value;->onPostMessage(IBS)I

    move-result v1

    .line 5318
    invoke-direct {p0, v1, v0, v5, v11}, Lo/value$onPostMessage;->onMessageChannelReady(ISBI)Ljava/util/List;

    move-result-object v0

    .line 5319
    invoke-interface {p1, v3, v0}, Lo/getDefaultConfig$onPostMessage;->onNavigationEvent(ILjava/util/List;)V

    goto/16 :goto_6

    :cond_b
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 5312
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_4
    if-nez v11, :cond_16

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_d

    if-nez v1, :cond_c

    goto/16 :goto_6

    :cond_c
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 3263
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 3268
    :cond_d
    rem-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_15

    .line 3269
    new-instance v4, Lo/isZombied$onPostMessage;

    invoke-direct {v4}, Lo/isZombied$onPostMessage;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_12

    .line 3271
    iget-object v7, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v7}, Lo/fullLimitUpdateChild;->onRelationshipValidationResult()S

    move-result v7

    .line 3272
    iget-object v8, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v8}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v8

    packed-switch v7, :pswitch_data_1

    new-array p1, v2, [Ljava/lang/Object;

    .line 3299
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_5
    if-lt v8, v3, :cond_e

    const v9, 0xffffff

    if-gt v8, v9, :cond_e

    goto :goto_1

    :cond_e
    new-array p1, v2, [Ljava/lang/Object;

    .line 3293
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_6
    const/4 v7, 0x7

    if-ltz v8, :cond_f

    goto :goto_1

    :cond_f
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 3288
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_7
    const/4 v7, 0x4

    goto :goto_1

    :pswitch_8
    if-eqz v8, :cond_11

    if-ne v8, v2, :cond_10

    goto :goto_1

    :cond_10
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 3279
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 3301
    :cond_11
    :goto_1
    :pswitch_9
    invoke-virtual {v4, v7, v0, v8}, Lo/isZombied$onPostMessage;->onPostMessage(III)Lo/isZombied$onPostMessage;

    add-int/lit8 v5, v5, 0x6

    goto :goto_0

    .line 3303
    :cond_12
    invoke-interface {p1, v0, v4}, Lo/getDefaultConfig$onPostMessage;->onNavigationEvent(ZLo/isZombied$onPostMessage;)V

    .line 4144
    iget p1, v4, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit8 p1, p1, 0x2

    const/4 v0, -0x1

    if-eqz p1, :cond_13

    iget-object p1, v4, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget p1, p1, v2

    goto :goto_2

    :cond_13
    const/4 p1, -0x1

    :goto_2
    if-ltz p1, :cond_24

    .line 3305
    iget-object p1, p0, Lo/value$onPostMessage;->extraCallback:Lo/assertUnfrozen$onPostMessage;

    .line 5144
    iget v1, v4, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_14

    iget-object v0, v4, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v0, v0, v2

    .line 5146
    :cond_14
    iput v0, p1, Lo/assertUnfrozen$onPostMessage;->extraCallback:I

    .line 5147
    iput v0, p1, Lo/assertUnfrozen$onPostMessage;->onPostMessage:I

    .line 5148
    invoke-virtual {p1}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback()V

    goto/16 :goto_6

    :cond_15
    new-array p1, v2, [Ljava/lang/Object;

    .line 3268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_16
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_SETTINGS streamId != 0"

    .line 3261
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_a
    if-ne v1, v6, :cond_19

    if-eqz v11, :cond_18

    .line 3251
    iget-object v1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 3252
    invoke-static {v1}, Lo/getReferenceFromUrl;->onNavigationEvent(I)Lo/getReferenceFromUrl;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 3256
    invoke-interface {p1, v11, v3}, Lo/getDefaultConfig$onPostMessage;->extraCallback(ILo/getReferenceFromUrl;)V

    goto/16 :goto_6

    :cond_17
    new-array p1, v2, [Ljava/lang/Object;

    .line 3254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_18
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    .line 3250
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_19
    new-array p1, v2, [Ljava/lang/Object;

    .line 3249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_b
    const/4 p1, 0x5

    if-ne v1, p1, :cond_1b

    if-eqz v11, :cond_1a

    .line 3240
    iget-object p1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->asInterface()I

    .line 3243
    iget-object p1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    goto/16 :goto_6

    :cond_1a
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TYPE_PRIORITY streamId == 0"

    .line 3235
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1b
    new-array p1, v2, [Ljava/lang/Object;

    .line 3234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_c
    if-eqz v11, :cond_1f

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1c

    const/4 v10, 0x1

    goto :goto_3

    :cond_1c
    const/4 v10, 0x0

    :goto_3
    and-int/lit8 v3, v5, 0x8

    if-eqz v3, :cond_1d

    .line 2189
    iget-object v0, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1d
    and-int/lit8 v3, v5, 0x20

    if-eqz v3, :cond_1e

    .line 2240
    iget-object v3, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    .line 2243
    iget-object v3, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    add-int/lit8 v1, v1, -0x5

    .line 2196
    :cond_1e
    invoke-static {v1, v5, v0}, Lo/value;->onPostMessage(IBS)I

    move-result v1

    .line 2198
    invoke-direct {p0, v1, v0, v5, v11}, Lo/value$onPostMessage;->onMessageChannelReady(ISBI)Ljava/util/List;

    move-result-object v12

    const/4 v9, 0x0

    .line 2200
    sget-object v13, Lo/useEmulator;->ICustomTabsCallback:Lo/useEmulator;

    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lo/getDefaultConfig$onPostMessage;->onMessageChannelReady(ZZILjava/util/List;Lo/useEmulator;)V

    goto :goto_6

    :cond_1f
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 2185
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_d
    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_4

    :cond_20
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    goto :goto_5

    :cond_21
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_23

    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_22

    .line 1225
    iget-object v0, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 1226
    :cond_22
    invoke-static {v1, v5, v0}, Lo/value;->onPostMessage(IBS)I

    move-result v1

    .line 1228
    iget-object v4, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {p1, v3, v11, v4, v1}, Lo/getDefaultConfig$onPostMessage;->onPostMessage(ZILo/fullLimitUpdateChild;I)V

    .line 1229
    iget-object p1, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto :goto_6

    :cond_23
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 1222
    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_24
    :goto_6
    return v2

    :cond_25
    new-array p1, v2, [Ljava/lang/Object;

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v0, p1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

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

.method public final onPostMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lo/value$onPostMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lo/value$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-static {}, Lo/value;->extraCallback()Lo/matches;

    move-result-object v1

    invoke-virtual {v1}, Lo/matches;->onTransact()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v0

    .line 105
    invoke-static {}, Lo/value;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lo/value;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_1
    invoke-static {}, Lo/value;->extraCallback()Lo/matches;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v0}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Expected a connection header but was %s"

    invoke-static {v0, v1}, Lo/value;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
