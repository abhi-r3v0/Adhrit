.class public final Lo/isAlwaysEager;
.super Ljava/io/OutputStream;


# instance fields
.field private final ICustomTabsCallback:Ljava/io/File;

.field private ICustomTabsCallback$Stub:Ljava/io/FileOutputStream;

.field private extraCallback:J

.field private final onMessageChannelReady:Lo/setUpdatedAt;

.field private onNavigationEvent:J

.field private final onPostMessage:Lo/calculateSpeedPerPixel$ICustomTabsCallback;

.field private onRelationshipValidationResult:Lo/retrieve;


# direct methods
.method public constructor <init>(Ljava/io/File;Lo/calculateSpeedPerPixel$ICustomTabsCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lo/setUpdatedAt;

    invoke-direct {v0}, Lo/setUpdatedAt;-><init>()V

    iput-object v0, p0, Lo/isAlwaysEager;->onMessageChannelReady:Lo/setUpdatedAt;

    iput-object p1, p0, Lo/isAlwaysEager;->ICustomTabsCallback:Ljava/io/File;

    iput-object p2, p0, Lo/isAlwaysEager;->onPostMessage:Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    move v1, p2

    move/from16 v2, p3

    :goto_0
    if-lez v2, :cond_d

    iget-wide v3, v0, Lo/isAlwaysEager;->extraCallback:J

    const/4 v5, 0x1

    const-string v6, "/"

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-nez v11, :cond_6

    iget-wide v3, v0, Lo/isAlwaysEager;->onNavigationEvent:J

    cmp-long v11, v3, v9

    if-nez v11, :cond_6

    iget-object v3, v0, Lo/isAlwaysEager;->onMessageChannelReady:Lo/setUpdatedAt;

    invoke-virtual {v3, p1, v1, v2}, Lo/setUpdatedAt;->onPostMessage([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/2addr v1, v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lo/isAlwaysEager;->onMessageChannelReady:Lo/setUpdatedAt;

    invoke-virtual {v3}, Lo/setUpdatedAt;->onMessageChannelReady()Lo/retrieve;

    move-result-object v3

    iput-object v3, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 1000
    iget-boolean v3, v3, Lo/retrieve;->extraCallback:Z

    if-eqz v3, :cond_1

    iput-wide v9, v0, Lo/isAlwaysEager;->extraCallback:J

    iget-object v3, v0, Lo/isAlwaysEager;->onPostMessage:Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    iget-object v4, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 2000
    iget-object v4, v4, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    iget-object v11, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 3000
    iget-object v11, v11, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    array-length v11, v11

    invoke-virtual {v3, v4, v11}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback([BI)V

    iget-object v3, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 4000
    iget-object v3, v3, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    array-length v3, v3

    int-to-long v3, v3

    iput-wide v3, v0, Lo/isAlwaysEager;->onNavigationEvent:J

    goto :goto_4

    .line 12000
    :cond_1
    iget-object v3, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 14000
    iget v3, v3, Lo/retrieve;->ICustomTabsCallback:I

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 13000
    iget-object v3, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 16000
    iget-object v4, v3, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    .line 17000
    :cond_3
    iget-object v3, v3, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    .line 15000
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    .line 19000
    :cond_4
    iget-object v3, v0, Lo/isAlwaysEager;->onPostMessage:Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    iget-object v4, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 20000
    iget-object v4, v4, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    invoke-virtual {v3, v4}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady([B)V

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lo/isAlwaysEager;->ICustomTabsCallback:Ljava/io/File;

    iget-object v11, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 21000
    iget-object v11, v11, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    invoke-direct {v3, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    iget-object v4, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 22000
    iget-wide v11, v4, Lo/retrieve;->onMessageChannelReady:J

    iput-wide v11, v0, Lo/isAlwaysEager;->extraCallback:J

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v0, Lo/isAlwaysEager;->ICustomTabsCallback$Stub:Ljava/io/FileOutputStream;

    goto :goto_4

    .line 15000
    :cond_5
    :goto_3
    iget-object v3, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 18000
    iget-object v3, v3, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    iget-object v4, v0, Lo/isAlwaysEager;->onPostMessage:Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    array-length v11, v3

    invoke-virtual {v4, v3, v11}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback([BI)V

    iget-object v3, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 19000
    iget-wide v3, v3, Lo/retrieve;->onMessageChannelReady:J

    iput-wide v3, v0, Lo/isAlwaysEager;->extraCallback:J

    :cond_6
    :goto_4
    move v11, v1

    move v12, v2

    .line 4000
    iget-object v1, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 6000
    iget-object v2, v1, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v1, 0x0

    goto :goto_5

    .line 7000
    :cond_7
    iget-object v1, v1, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    .line 5000
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_8

    move v1, v11

    move v2, v12

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 8000
    iget-boolean v1, v1, Lo/retrieve;->extraCallback:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lo/isAlwaysEager;->onPostMessage:Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    iget-wide v2, v0, Lo/isAlwaysEager;->onNavigationEvent:J

    move-object v4, p1

    move v5, v11

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback(J[BII)V

    iget-wide v1, v0, Lo/isAlwaysEager;->onNavigationEvent:J

    int-to-long v3, v12

    add-long/2addr v1, v3

    iput-wide v1, v0, Lo/isAlwaysEager;->onNavigationEvent:J

    move v2, v12

    goto :goto_7

    :cond_9
    iget-object v1, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 10000
    iget v1, v1, Lo/retrieve;->ICustomTabsCallback:I

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    int-to-long v1, v12

    .line 9000
    iget-wide v3, v0, Lo/isAlwaysEager;->extraCallback:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    if-eqz v5, :cond_b

    long-to-int v2, v1

    iget-object v1, v0, Lo/isAlwaysEager;->ICustomTabsCallback$Stub:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1, v11, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v3, v0, Lo/isAlwaysEager;->extraCallback:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lo/isAlwaysEager;->extraCallback:J

    cmp-long v1, v3, v9

    if-nez v1, :cond_c

    iget-object v1, v0, Lo/isAlwaysEager;->ICustomTabsCallback$Stub:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :cond_b
    long-to-int v8, v1

    iget-object v1, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 11000
    iget-object v1, v1, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    array-length v1, v1

    iget-object v2, v0, Lo/isAlwaysEager;->onRelationshipValidationResult:Lo/retrieve;

    .line 12000
    iget-wide v2, v2, Lo/retrieve;->onMessageChannelReady:J

    iget-wide v4, v0, Lo/isAlwaysEager;->extraCallback:J

    iget-object v6, v0, Lo/isAlwaysEager;->onPostMessage:Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    int-to-long v9, v1

    add-long/2addr v9, v2

    sub-long v2, v9, v4

    move-object v1, v6

    move-object v4, p1

    move v5, v11

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback(J[BII)V

    iget-wide v1, v0, Lo/isAlwaysEager;->extraCallback:J

    int-to-long v3, v8

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lo/isAlwaysEager;->extraCallback:J

    move v2, v8

    :cond_c
    :goto_7
    add-int v1, v11, v2

    sub-int v2, v12, v2

    goto/16 :goto_0

    :cond_d
    return-void
.end method
