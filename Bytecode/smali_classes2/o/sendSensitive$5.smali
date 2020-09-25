.class public Lo/sendSensitive$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendSensitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/zip/Inflater;

.field private extraCallback:I

.field private onMessageChannelReady:Z

.field private final onPostMessage:Lo/fullLimitUpdateChild;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/fullLimitUpdateChild;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1051
    iput-object p1, p0, Lo/sendSensitive$5;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 1052
    iput-object p2, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    return-void

    .line 1050
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1049
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lo/toLog;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1040
    invoke-static {p1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/sendSensitive$5;-><init>(Lo/fullLimitUpdateChild;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private onPostMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1113
    iget v0, p0, Lo/sendSensitive$5;->extraCallback:I

    if-nez v0, :cond_0

    return-void

    .line 1114
    :cond_0
    iget-object v1, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1115
    iget v1, p0, Lo/sendSensitive$5;->extraCallback:I

    sub-int/2addr v1, v0

    iput v1, p0, Lo/sendSensitive$5;->extraCallback:I

    .line 1116
    iget-object v1, p0, Lo/sendSensitive$5;->onPostMessage:Lo/fullLimitUpdateChild;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lo/fullLimitUpdateChild;->asInterface(J)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 1058
    iget-boolean v3, p0, Lo/sendSensitive$5;->onMessageChannelReady:Z

    if-nez v3, :cond_6

    if-nez v2, :cond_0

    return-wide v0

    .line 1062
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lo/sendSensitive$5;->onNavigationEvent()Z

    move-result v0

    const/4 v1, 0x1

    .line 1066
    :try_start_0
    invoke-virtual {p1, v1}, Lo/updatePriority;->onPostMessage(I)Lo/shouldLog;

    move-result-object v1

    .line 1067
    iget v2, v1, Lo/shouldLog;->onNavigationEvent:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 1068
    iget-object v2, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    iget-object v4, v1, Lo/shouldLog;->extraCallback:[B

    iget v5, v1, Lo/shouldLog;->onNavigationEvent:I

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-lez v2, :cond_1

    .line 1070
    iget p2, v1, Lo/shouldLog;->onNavigationEvent:I

    add-int/2addr p2, v2

    iput p2, v1, Lo/shouldLog;->onNavigationEvent:I

    .line 1071
    iget-wide p2, p1, Lo/updatePriority;->ICustomTabsCallback:J

    int-to-long v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p1, Lo/updatePriority;->ICustomTabsCallback:J

    return-wide v0

    .line 1074
    :cond_1
    iget-object v2, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    .line 1083
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1075
    :cond_4
    :goto_1
    invoke-direct {p0}, Lo/sendSensitive$5;->onPostMessage()V

    .line 1076
    iget p2, v1, Lo/shouldLog;->ICustomTabsCallback:I

    iget p3, v1, Lo/shouldLog;->onNavigationEvent:I

    if-ne p2, p3, :cond_5

    .line 1078
    invoke-virtual {v1}, Lo/shouldLog;->onPostMessage()Lo/shouldLog;

    move-result-object p2

    iput-object p2, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    .line 1079
    invoke-static {v1}, Lo/getLeafType;->onMessageChannelReady(Lo/shouldLog;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_0
    move-exception p1

    .line 1085
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1058
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1057
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 1120
    iget-object v0, p0, Lo/sendSensitive$5;->onPostMessage:Lo/fullLimitUpdateChild;

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

    .line 1124
    iget-boolean v0, p0, Lo/sendSensitive$5;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 1126
    iput-boolean v0, p0, Lo/sendSensitive$5;->onMessageChannelReady:Z

    .line 1127
    iget-object v0, p0, Lo/sendSensitive$5;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void
.end method

.method public onNavigationEvent()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1098
    :cond_0
    invoke-direct {p0}, Lo/sendSensitive$5;->onPostMessage()V

    .line 1099
    iget-object v0, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_2

    .line 1102
    iget-object v0, p0, Lo/sendSensitive$5;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1105
    :cond_1
    iget-object v0, p0, Lo/sendSensitive$5;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v0

    iget-object v0, v0, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    .line 1106
    iget v2, v0, Lo/shouldLog;->onNavigationEvent:I

    iget v3, v0, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v2, v3

    iput v2, p0, Lo/sendSensitive$5;->extraCallback:I

    .line 1107
    iget-object v2, p0, Lo/sendSensitive$5;->ICustomTabsCallback:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lo/shouldLog;->extraCallback:[B

    iget v0, v0, Lo/shouldLog;->ICustomTabsCallback:I

    iget v4, p0, Lo/sendSensitive$5;->extraCallback:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1

    .line 1099
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
