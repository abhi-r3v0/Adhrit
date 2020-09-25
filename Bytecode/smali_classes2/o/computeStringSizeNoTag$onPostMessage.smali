.class public Lo/computeStringSizeNoTag$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeStringSizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/zip/Inflater;

.field private final extraCallback:Lo/fullLimitUpdateChild;

.field private onMessageChannelReady:I

.field private final onNavigationEvent:Lo/sendSensitive$5;

.field private final onPostMessage:Ljava/util/zip/CRC32;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/toLog;)V
    .locals 2

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1039
    iput v0, p0, Lo/computeStringSizeNoTag$onPostMessage;->onMessageChannelReady:I

    .line 1058
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    .line 1062
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lo/computeStringSizeNoTag$onPostMessage;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    .line 1063
    invoke-static {p1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    iput-object p1, p0, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    .line 1064
    new-instance v0, Lo/sendSensitive$5;

    iget-object v1, p0, Lo/computeStringSizeNoTag$onPostMessage;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    invoke-direct {v0, p1, v1}, Lo/sendSensitive$5;-><init>(Lo/fullLimitUpdateChild;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lo/computeStringSizeNoTag$onPostMessage;->onNavigationEvent:Lo/sendSensitive$5;

    return-void

    .line 1061
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static onPostMessage(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p2, p1, :cond_0

    return-void

    .line 1205
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 1206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%s: actual 0x%08x != expected 0x%08x"

    .line 1205
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onPostMessage(Lo/updatePriority;JJ)V
    .locals 4

    .line 1188
    iget-object p1, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    .line 1189
    :goto_0
    iget v0, p1, Lo/shouldLog;->onNavigationEvent:I

    iget v1, p1, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 1190
    iget v0, p1, Lo/shouldLog;->onNavigationEvent:I

    iget v1, p1, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 1189
    iget-object p1, p1, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_1
    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 1195
    iget v2, p1, Lo/shouldLog;->ICustomTabsCallback:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    .line 1196
    iget p3, p1, Lo/shouldLog;->onNavigationEvent:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 1197
    iget-object v2, p0, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lo/shouldLog;->extraCallback:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 1194
    iget-object p1, p1, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-ltz v2, :cond_12

    if-nez v2, :cond_0

    return-wide v0

    .line 1072
    :cond_0
    iget v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->onMessageChannelReady:I

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    if-nez v0, :cond_d

    .line 1114
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->onPostMessage(J)V

    .line 1115
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v13

    shr-int/lit8 v0, v13, 0x1

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_2

    .line 1117
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Lo/updatePriority;JJ)V

    .line 1119
    :cond_2
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onRelationshipValidationResult()S

    move-result v0

    const/16 v1, 0x1f8b

    const-string v2, "ID1ID2"

    .line 1120
    invoke-static {v2, v1, v0}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Ljava/lang/String;II)V

    .line 1121
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->asInterface(J)V

    shr-int/lit8 v0, v13, 0x2

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_5

    .line 1128
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->onPostMessage(J)V

    if-eqz v14, :cond_3

    .line 1129
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Lo/updatePriority;JJ)V

    .line 1130
    :cond_3
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v0

    invoke-virtual {v0}, Lo/updatePriority;->onTransact()S

    move-result v0

    .line 1131
    iget-object v1, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    int-to-long v4, v0

    invoke-interface {v1, v4, v5}, Lo/fullLimitUpdateChild;->onPostMessage(J)V

    if-eqz v14, :cond_4

    .line 1132
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v15, v4

    invoke-direct/range {v0 .. v5}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Lo/updatePriority;JJ)V

    goto :goto_1

    :cond_4
    move-wide v15, v4

    .line 1133
    :goto_1
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    move-wide v1, v15

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->asInterface(J)V

    :cond_5
    shr-int/lit8 v0, v13, 0x3

    and-int/2addr v0, v12

    const-wide/16 v15, 0x1

    if-ne v0, v12, :cond_8

    .line 1141
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->postMessage()J

    move-result-wide v17

    cmp-long v0, v17, v10

    if-eqz v0, :cond_7

    if-eqz v14, :cond_6

    .line 1143
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v17, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Lo/updatePriority;JJ)V

    .line 1144
    :cond_6
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    add-long v1, v17, v15

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto :goto_2

    .line 1142
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    :goto_2
    shr-int/lit8 v0, v13, 0x4

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_b

    .line 1152
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->postMessage()J

    move-result-wide v17

    cmp-long v0, v17, v10

    if-eqz v0, :cond_a

    if-eqz v14, :cond_9

    .line 1154
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v17, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Lo/updatePriority;JJ)V

    .line 1155
    :cond_9
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    add-long v1, v17, v15

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto :goto_3

    .line 1153
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b
    :goto_3
    if-eqz v14, :cond_c

    .line 1163
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onTransact()S

    move-result v0

    iget-object v1, v6, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-short v1, v2

    const-string v2, "FHCRC"

    invoke-static {v2, v0, v1}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Ljava/lang/String;II)V

    .line 1164
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 1074
    :cond_c
    iput v12, v6, Lo/computeStringSizeNoTag$onPostMessage;->onMessageChannelReady:I

    .line 1078
    :cond_d
    iget v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->onMessageChannelReady:I

    const/4 v1, 0x2

    if-ne v0, v12, :cond_f

    .line 1079
    iget-wide v2, v7, Lo/updatePriority;->ICustomTabsCallback:J

    .line 1080
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->onNavigationEvent:Lo/sendSensitive$5;

    invoke-virtual {v0, v7, v8, v9}, Lo/sendSensitive$5;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v4, v8

    .line 1082
    invoke-direct/range {v0 .. v5}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Lo/updatePriority;JJ)V

    return-wide v8

    .line 1085
    :cond_e
    iput v1, v6, Lo/computeStringSizeNoTag$onPostMessage;->onMessageChannelReady:I

    .line 1091
    :cond_f
    iget v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->onMessageChannelReady:I

    if-ne v0, v1, :cond_11

    .line 1173
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    iget-object v1, v6, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "CRC"

    invoke-static {v1, v0, v2}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Ljava/lang/String;II)V

    .line 1174
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    iget-object v1, v6, Lo/computeStringSizeNoTag$onPostMessage;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "ISIZE"

    invoke-static {v1, v0, v2}, Lo/computeStringSizeNoTag$onPostMessage;->onPostMessage(Ljava/lang/String;II)V

    const/4 v0, 0x3

    .line 1093
    iput v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->onMessageChannelReady:I

    .line 1099
    iget-object v0, v6, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    .line 1100
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_4
    return-wide v10

    .line 1068
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "byteCount < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 1178
    iget-object v0, p0, Lo/computeStringSizeNoTag$onPostMessage;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lo/computeStringSizeNoTag$onPostMessage;->onNavigationEvent:Lo/sendSensitive$5;

    invoke-virtual {v0}, Lo/sendSensitive$5;->close()V

    return-void
.end method
