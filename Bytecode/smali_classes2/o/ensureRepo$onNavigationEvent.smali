.class final Lo/ensureRepo$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDefaultConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final extraCallback:Lo/onDisconnectSetInternal;

.field private final onMessageChannelReady:Lo/fullLimitUpdateChild;

.field private final onPostMessage:Z


# direct methods
.method constructor <init>(Lo/fullLimitUpdateChild;Z)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    .line 114
    new-instance v0, Lo/onDisconnectSetInternal;

    invoke-direct {v0, p1}, Lo/onDisconnectSetInternal;-><init>(Lo/fullLimitUpdateChild;)V

    iput-object v0, p0, Lo/ensureRepo$onNavigationEvent;->extraCallback:Lo/onDisconnectSetInternal;

    .line 115
    iput-boolean p2, p0, Lo/ensureRepo$onNavigationEvent;->onPostMessage:Z

    return-void
.end method

.method private onPostMessage(Lo/getDefaultConfig$onPostMessage;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v0

    shl-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    .line 265
    new-instance p3, Lo/isZombied$onPostMessage;

    invoke-direct {p3}, Lo/isZombied$onPostMessage;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 267
    iget-object v4, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v4}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v4

    .line 268
    iget-object v5, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v5}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v4, v7

    .line 271
    invoke-virtual {p3, v4, v6, v5}, Lo/isZombied$onPostMessage;->onPostMessage(III)Lo/isZombied$onPostMessage;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    .line 274
    :cond_1
    invoke-interface {p1, v2, p3}, Lo/getDefaultConfig$onPostMessage;->onNavigationEvent(ZLo/isZombied$onPostMessage;)V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 263
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    .line 8278
    new-instance p2, Ljava/io/IOException;

    const-string p3, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lo/ensureRepo$onNavigationEvent;->extraCallback:Lo/onDisconnectSetInternal;

    .line 9116
    iget-object v0, v0, Lo/onDisconnectSetInternal;->onMessageChannelReady:Lo/fullLimitUpdateChild;

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

    .line 129
    :try_start_0
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 130
    iget-object v2, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v2}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v2, v6

    const v6, 0x7fffffff

    if-eqz v3, :cond_e

    const/high16 v3, 0x7fff0000

    and-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x10

    const v7, 0xffff

    and-int/2addr v1, v7

    const/4 v7, 0x3

    if-ne v3, v7, :cond_d

    const/16 v3, 0x8

    const/4 v7, 0x4

    packed-switch v1, :pswitch_data_0

    .line 181
    :pswitch_0
    iget-object p1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    int-to-long v0, v2

    invoke-interface {p1, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    return v4

    :pswitch_1
    if-ne v2, v3, :cond_2

    .line 6234
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 6235
    iget-object v2, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v2}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v2

    and-int/2addr v1, v6

    and-int/2addr v2, v6

    int-to-long v2, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1

    .line 6239
    invoke-interface {p1, v1, v2, v3}, Lo/getDefaultConfig$onPostMessage;->onNavigationEvent(IJ)V

    return v4

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 6238
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    .line 7278
    new-instance v0, Ljava/io/IOException;

    const-string v1, "windowSizeIncrement was 0"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    .line 6233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 6278
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6226
    :pswitch_2
    iget-object v0, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v0

    and-int v11, v0, v6

    .line 6228
    iget-object v0, p0, Lo/ensureRepo$onNavigationEvent;->extraCallback:Lo/onDisconnectSetInternal;

    sub-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lo/onDisconnectSetInternal;->onNavigationEvent(I)Ljava/util/List;

    move-result-object v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6229
    sget-object v13, Lo/useEmulator;->onMessageChannelReady:Lo/useEmulator;

    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lo/getDefaultConfig$onPostMessage;->onMessageChannelReady(ZZILjava/util/List;Lo/useEmulator;)V

    return v4

    :pswitch_3
    if-ne v2, v3, :cond_4

    .line 4251
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    and-int/2addr v1, v6

    .line 4252
    iget-object v2, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v2}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v2

    .line 4253
    invoke-static {v2}, Lo/getReferenceFromUrl;->extraCallback(I)Lo/getReferenceFromUrl;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4257
    sget-object v0, Lo/matches;->extraCallback:Lo/matches;

    invoke-interface {p1, v1, v0}, Lo/getDefaultConfig$onPostMessage;->ICustomTabsCallback(ILo/matches;)V

    return v4

    :cond_3
    new-array p1, v4, [Ljava/lang/Object;

    .line 4255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 5278
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array p1, v4, [Ljava/lang/Object;

    .line 4250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 4278
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_GOAWAY length: %d != 8"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    if-ne v2, v7, :cond_7

    .line 3244
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 3245
    iget-boolean v2, p0, Lo/ensureRepo$onNavigationEvent;->onPostMessage:Z

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 3246
    :goto_2
    invoke-interface {p1, v2, v1, v0}, Lo/getDefaultConfig$onPostMessage;->onNavigationEvent(ZII)V

    return v4

    :cond_7
    new-array p1, v4, [Ljava/lang/Object;

    .line 3243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 3278
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PING length: %d != 4"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_5
    invoke-direct {p0, p1, v5, v2}, Lo/ensureRepo$onNavigationEvent;->onPostMessage(Lo/getDefaultConfig$onPostMessage;II)V

    return v4

    :pswitch_6
    if-ne v2, v3, :cond_9

    .line 1216
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    and-int/2addr v1, v6

    .line 1217
    iget-object v2, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v2}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v2

    .line 1218
    invoke-static {v2}, Lo/getReferenceFromUrl;->ICustomTabsCallback(I)Lo/getReferenceFromUrl;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1222
    invoke-interface {p1, v1, v3}, Lo/getDefaultConfig$onPostMessage;->extraCallback(ILo/getReferenceFromUrl;)V

    return v4

    :cond_8
    new-array p1, v4, [Ljava/lang/Object;

    .line 1220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 2278
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-array p1, v4, [Ljava/lang/Object;

    .line 1215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1278
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :pswitch_7
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    and-int v11, v1, v6

    .line 1209
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->extraCallback:Lo/onDisconnectSetInternal;

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lo/onDisconnectSetInternal;->onNavigationEvent(I)Ljava/util/List;

    move-result-object v12

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_a

    const/4 v10, 0x1

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    :goto_3
    const/4 v9, 0x0

    .line 1211
    sget-object v13, Lo/useEmulator;->onNavigationEvent:Lo/useEmulator;

    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lo/getDefaultConfig$onPostMessage;->onMessageChannelReady(ZZILjava/util/List;Lo/useEmulator;)V

    return v4

    .line 1193
    :pswitch_8
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v1

    .line 1194
    iget-object v3, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    and-int v10, v1, v6

    .line 1197
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->onRelationshipValidationResult()S

    .line 1198
    iget-object v1, p0, Lo/ensureRepo$onNavigationEvent;->extraCallback:Lo/onDisconnectSetInternal;

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v1, v2}, Lo/onDisconnectSetInternal;->onNavigationEvent(I)Ljava/util/List;

    move-result-object v11

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_b

    const/4 v9, 0x1

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    :goto_4
    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 1202
    :goto_5
    sget-object v12, Lo/useEmulator;->onPostMessage:Lo/useEmulator;

    move-object v7, p1

    invoke-interface/range {v7 .. v12}, Lo/getDefaultConfig$onPostMessage;->onMessageChannelReady(ZZILjava/util/List;Lo/useEmulator;)V

    return v4

    .line 144
    :cond_d
    new-instance p1, Ljava/net/ProtocolException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version != 3: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    and-int/2addr v1, v6

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_f

    const/4 v0, 0x1

    .line 187
    :cond_f
    iget-object v3, p0, Lo/ensureRepo$onNavigationEvent;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {p1, v0, v1, v3, v2}, Lo/getDefaultConfig$onPostMessage;->onPostMessage(ZILo/fullLimitUpdateChild;I)V

    return v4

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method
