.class final Lo/fromPathAndQueryObject;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fromPathAndQueryObject$onPostMessage;,
        Lo/fromPathAndQueryObject$onNavigationEvent;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/util/logging/Logger;


# instance fields
.field private final extraCallback:Lo/fromPathAndQueryObject$onNavigationEvent;

.field final onMessageChannelReady:Lo/fullLimitUpdateChild;

.field final onNavigationEvent:Z

.field private onPostMessage:Lo/fromQueryObject$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lo/defaultQueryAtPath;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/fromPathAndQueryObject;->ICustomTabsCallback:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lo/fullLimitUpdateChild;Z)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    .line 72
    iput-boolean p2, p0, Lo/fromPathAndQueryObject;->onNavigationEvent:Z

    .line 73
    new-instance p2, Lo/fromPathAndQueryObject$onNavigationEvent;

    invoke-direct {p2, p1}, Lo/fromPathAndQueryObject$onNavigationEvent;-><init>(Lo/fullLimitUpdateChild;)V

    iput-object p2, p0, Lo/fromPathAndQueryObject;->extraCallback:Lo/fromPathAndQueryObject$onNavigationEvent;

    .line 74
    new-instance p1, Lo/fromQueryObject$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/fromQueryObject$ICustomTabsCallback;-><init>(Lo/toLog;)V

    iput-object p1, p0, Lo/fromPathAndQueryObject;->onPostMessage:Lo/fromQueryObject$ICustomTabsCallback;

    return-void
.end method

.method static ICustomTabsCallback(Lo/fullLimitUpdateChild;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 400
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 401
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private ICustomTabsCallback(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lo/fromPathAndQueryObject;->extraCallback:Lo/fromPathAndQueryObject$onNavigationEvent;

    iput p1, v0, Lo/fromPathAndQueryObject$onNavigationEvent;->extraCallback:I

    iput p1, v0, Lo/fromPathAndQueryObject$onNavigationEvent;->onPostMessage:I

    .line 190
    iget-object p1, p0, Lo/fromPathAndQueryObject;->extraCallback:Lo/fromPathAndQueryObject$onNavigationEvent;

    iput-short p2, p1, Lo/fromPathAndQueryObject$onNavigationEvent;->onNavigationEvent:S

    .line 191
    iget-object p1, p0, Lo/fromPathAndQueryObject;->extraCallback:Lo/fromPathAndQueryObject$onNavigationEvent;

    iput-byte p3, p1, Lo/fromPathAndQueryObject$onNavigationEvent;->ICustomTabsCallback:B

    .line 192
    iget-object p1, p0, Lo/fromPathAndQueryObject;->extraCallback:Lo/fromPathAndQueryObject$onNavigationEvent;

    iput p4, p1, Lo/fromPathAndQueryObject$onNavigationEvent;->onMessageChannelReady:I

    .line 196
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onPostMessage:Lo/fromQueryObject$ICustomTabsCallback;

    invoke-virtual {p1}, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady()V

    .line 197
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onPostMessage:Lo/fromQueryObject$ICustomTabsCallback;

    .line 4213
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4214
    iget-object p1, p1, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method private static extraCallback(IBS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 408
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void
.end method

.method public final extraCallback(ZLo/fromPathAndQueryObject$onPostMessage;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object v1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lo/fullLimitUpdateChild;->onPostMessage(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-static {v1}, Lo/fromPathAndQueryObject;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_29

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_29

    .line 115
    iget-object v4, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x4

    if-eqz p1, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 117
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Expected a SETTINGS frame but was %s"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 119
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result p1

    int-to-byte p1, p1

    .line 120
    iget-object v6, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v6}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    .line 121
    sget-object v8, Lo/fromPathAndQueryObject;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lo/fromPathAndQueryObject;->ICustomTabsCallback:Ljava/util/logging/Logger;

    invoke-static {v2, v6, v1, v4, p1}, Lo/defaultQueryAtPath;->extraCallback(ZIIBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    const/4 v8, 0x5

    const/16 v9, 0x8

    packed-switch v4, :pswitch_data_0

    .line 162
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto/16 :goto_6

    :pswitch_0
    if-ne v1, v5, :cond_4

    .line 3336
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result p1

    int-to-long v3, p1

    const-wide/32 v7, 0x7fffffff

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v3, v7

    if-eqz p1, :cond_3

    .line 3338
    invoke-interface {p2, v6, v3, v4}, Lo/fromPathAndQueryObject$onPostMessage;->onPostMessage(IJ)V

    goto/16 :goto_6

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    .line 3337
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 3335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    if-lt v1, v9, :cond_8

    if-nez v6, :cond_7

    .line 3319
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result p1

    .line 3320
    iget-object v3, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    sub-int/2addr v1, v9

    .line 3322
    invoke-static {v3}, Lo/getNodeFilter;->onMessageChannelReady(I)Lo/getNodeFilter;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3326
    sget-object v0, Lo/matches;->extraCallback:Lo/matches;

    if-lez v1, :cond_5

    .line 3328
    iget-object v0, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v0

    .line 3330
    :cond_5
    invoke-interface {p2, p1, v0}, Lo/fromPathAndQueryObject$onPostMessage;->extraCallback(ILo/matches;)V

    goto/16 :goto_6

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    .line 3324
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_7
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 3318
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_8
    new-array p1, v2, [Ljava/lang/Object;

    .line 3317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    if-ne v1, v9, :cond_b

    if-nez v6, :cond_a

    .line 3309
    iget-object v1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 3310
    iget-object v3, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    and-int/2addr p1, v2

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 3312
    :cond_9
    invoke-interface {p2, v0, v1, v3}, Lo/fromPathAndQueryObject$onPostMessage;->extraCallback(ZII)V

    goto/16 :goto_6

    :cond_a
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    .line 3308
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_b
    new-array p1, v2, [Ljava/lang/Object;

    .line 3307
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_3
    if-eqz v6, :cond_d

    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_c

    .line 3297
    iget-object v0, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 3298
    :cond_c
    iget-object v3, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v3

    and-int/2addr v3, v7

    add-int/lit8 v1, v1, -0x4

    .line 3300
    invoke-static {v1, p1, v0}, Lo/fromPathAndQueryObject;->extraCallback(IBS)I

    move-result v1

    .line 3301
    invoke-direct {p0, v1, v0, p1, v6}, Lo/fromPathAndQueryObject;->ICustomTabsCallback(ISBI)Ljava/util/List;

    move-result-object p1

    .line 3302
    invoke-interface {p2, v3, p1}, Lo/fromPathAndQueryObject$onPostMessage;->extraCallback(ILjava/util/List;)V

    goto/16 :goto_6

    :cond_d
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 3295
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_4
    if-nez v6, :cond_1a

    and-int/2addr p1, v2

    if-eqz p1, :cond_f

    if-nez v1, :cond_e

    goto/16 :goto_6

    :cond_e
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 3249
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 3254
    :cond_f
    rem-int/lit8 p1, v1, 0x6

    if-nez p1, :cond_19

    .line 3255
    new-instance p1, Lo/getInitialEvents;

    invoke-direct {p1}, Lo/getInitialEvents;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_18

    .line 3257
    iget-object v6, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v6}, Lo/fullLimitUpdateChild;->onRelationshipValidationResult()S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    .line 3258
    iget-object v7, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v7}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v7

    const/4 v9, 0x2

    if-eq v6, v9, :cond_15

    const/4 v9, 0x3

    if-eq v6, v9, :cond_14

    if-eq v6, v5, :cond_12

    if-eq v6, v8, :cond_10

    goto :goto_2

    :cond_10
    if-lt v7, v3, :cond_11

    const v9, 0xffffff

    if-gt v7, v9, :cond_11

    goto :goto_2

    :cond_11
    new-array p1, v2, [Ljava/lang/Object;

    .line 3279
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_12
    const/4 v6, 0x7

    if-ltz v7, :cond_13

    goto :goto_2

    :cond_13
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 3274
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_14
    const/4 v6, 0x4

    goto :goto_2

    :cond_15
    if-eqz v7, :cond_17

    if-ne v7, v2, :cond_16

    goto :goto_2

    :cond_16
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 3265
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 3287
    :cond_17
    :goto_2
    invoke-virtual {p1, v6, v7}, Lo/getInitialEvents;->onMessageChannelReady(II)Lo/getInitialEvents;

    add-int/lit8 v4, v4, 0x6

    goto :goto_1

    .line 3289
    :cond_18
    invoke-interface {p2, p1}, Lo/fromPathAndQueryObject$onPostMessage;->onNavigationEvent(Lo/getInitialEvents;)V

    goto/16 :goto_6

    :cond_19
    new-array p1, v2, [Ljava/lang/Object;

    .line 3254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1a
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    .line 3247
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_5
    if-ne v1, v5, :cond_1d

    if-eqz v6, :cond_1c

    .line 3237
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result p1

    .line 3238
    invoke-static {p1}, Lo/getNodeFilter;->onMessageChannelReady(I)Lo/getNodeFilter;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3242
    invoke-interface {p2, v6, v1}, Lo/fromPathAndQueryObject$onPostMessage;->onNavigationEvent(ILo/getNodeFilter;)V

    goto/16 :goto_6

    :cond_1b
    new-array p2, v2, [Ljava/lang/Object;

    .line 3240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p2}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 3236
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1d
    new-array p1, v2, [Ljava/lang/Object;

    .line 3235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_6
    if-ne v1, v8, :cond_1f

    if-eqz v6, :cond_1e

    .line 3226
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->asInterface()I

    .line 3229
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    goto/16 :goto_6

    :cond_1e
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 3221
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1f
    new-array p1, v2, [Ljava/lang/Object;

    .line 3220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_7
    if-eqz v6, :cond_23

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_3

    :cond_20
    const/4 v3, 0x0

    :goto_3
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_21

    .line 2173
    iget-object v0, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_21
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_22

    .line 2226
    iget-object v4, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->asInterface()I

    .line 2229
    iget-object v4, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    add-int/lit8 v1, v1, -0x5

    .line 2180
    :cond_22
    invoke-static {v1, p1, v0}, Lo/fromPathAndQueryObject;->extraCallback(IBS)I

    move-result v1

    .line 2182
    invoke-direct {p0, v1, v0, p1, v6}, Lo/fromPathAndQueryObject;->ICustomTabsCallback(ISBI)Ljava/util/List;

    move-result-object p1

    .line 2184
    invoke-interface {p2, v3, v6, p1}, Lo/fromPathAndQueryObject$onPostMessage;->extraCallback(ZILjava/util/List;)V

    goto :goto_6

    :cond_23
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 2169
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_8
    if-eqz v6, :cond_28

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    goto :goto_4

    :cond_24
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_25

    const/4 v4, 0x1

    goto :goto_5

    :cond_25
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_27

    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_26

    .line 1211
    iget-object v0, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 1212
    :cond_26
    invoke-static {v1, p1, v0}, Lo/fromPathAndQueryObject;->extraCallback(IBS)I

    move-result p1

    .line 1214
    iget-object v1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p2, v3, v6, v1, p1}, Lo/fromPathAndQueryObject$onPostMessage;->onMessageChannelReady(ZILo/fullLimitUpdateChild;I)V

    .line 1215
    iget-object p1, p0, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto :goto_6

    :cond_27
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 1208
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_28
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 1202
    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :goto_6
    return v2

    :cond_29
    new-array p1, v2, [Ljava/lang/Object;

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "FRAME_SIZE_ERROR: %s"

    invoke-static {p2, p1}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
