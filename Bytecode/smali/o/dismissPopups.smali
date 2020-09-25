.class final Lo/dismissPopups;
.super Lo/restoreToolbarHierarchyState;
.source ""


# static fields
.field private static final ICustomTabsCallback$Stub:Lo/matches;

.field private static final asInterface:Lo/matches;

.field private static final onMessageChannelReady:Lo/matches;


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private final asBinder:Lo/fullLimitUpdateChild;

.field private getInterfaceDescriptor:J

.field private newSession:I

.field private final onRelationshipValidationResult:Lo/updatePriority;

.field private onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\'\\"

    .line 29
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/dismissPopups;->onMessageChannelReady:Lo/matches;

    const-string v0, "\"\\"

    .line 30
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/dismissPopups;->asInterface:Lo/matches;

    const-string/jumbo v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 32
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/dismissPopups;->ICustomTabsCallback$Stub:Lo/matches;

    const-string v0, "\n\r"

    .line 33
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    const-string v0, "*/"

    .line 34
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    return-void
.end method

.method constructor <init>(Lo/fullLimitUpdateChild;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Lo/restoreToolbarHierarchyState;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    .line 99
    invoke-interface {p1}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object p1

    iput-object p1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    const/4 p1, 0x6

    .line 100
    invoke-virtual {p0, p1}, Lo/dismissPopups;->ICustomTabsCallback(I)V

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback(Lo/matches;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    :goto_0
    iget-object v0, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    invoke-interface {v0, p1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 754
    iget-object v2, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v2, v0, v1}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 755
    iget-object v2, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lo/updatePriority;->asInterface(J)V

    .line 756
    invoke-direct {p0}, Lo/dismissPopups;->postMessage()C

    goto :goto_0

    .line 758
    :cond_0
    iget-object p1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    add-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lo/updatePriority;->asInterface(J)V

    return-void

    :cond_1
    const-string p1, "Unterminated string"

    .line 752
    invoke-virtual {p0, p1}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object p1

    throw p1
.end method

.method private extraCallback(Lo/matches;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 718
    :goto_0
    iget-object v1, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    invoke-interface {v1, p1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 722
    iget-object v3, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v3, v1, v2}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    :cond_0
    iget-object v3, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    .line 13699
    sget-object v4, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v1, v2, v4}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    iget-object v1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 726
    invoke-direct {p0}, Lo/dismissPopups;->postMessage()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 732
    iget-object p1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    .line 14699
    sget-object v0, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1, v2, v0}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 733
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    return-object p1

    .line 736
    :cond_2
    iget-object p1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    .line 15699
    sget-object v3, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1, v2, v3}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 736
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-object p1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {p1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 738
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Unterminated string"

    .line 719
    invoke-virtual {p0, p1}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object p1

    throw p1
.end method

.method private extraCommand()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-wide v7, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 405
    :goto_0
    iget-object v11, v0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    add-int/lit8 v12, v5, 0x1

    int-to-long v13, v12

    invoke-interface {v11, v13, v14}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v11

    const/4 v15, 0x2

    if-eqz v11, :cond_15

    .line 409
    iget-object v11, v0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    int-to-long v13, v5

    invoke-virtual {v11, v13, v14}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v11

    const/16 v13, 0x2b

    const/4 v14, 0x5

    if-eq v11, v13, :cond_12

    const/16 v13, 0x45

    if-eq v11, v13, :cond_f

    const/16 v13, 0x65

    if-eq v11, v13, :cond_f

    const/16 v13, 0x2d

    if-eq v11, v13, :cond_c

    const/16 v13, 0x2e

    if-eq v11, v13, :cond_a

    const/16 v13, 0x30

    if-lt v11, v13, :cond_9

    const/16 v13, 0x39

    if-le v11, v13, :cond_0

    goto :goto_4

    :cond_0
    if-eq v6, v3, :cond_8

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    if-ne v6, v15, :cond_5

    cmp-long v5, v7, v1

    if-nez v5, :cond_2

    return v4

    :cond_2
    const-wide/16 v13, 0xa

    mul-long v13, v13, v7

    add-int/lit8 v11, v11, -0x30

    int-to-long v1, v11

    sub-long/2addr v13, v1

    const-wide v1, -0xcccccccccccccccL

    cmp-long v5, v7, v1

    if-gtz v5, :cond_4

    if-nez v5, :cond_3

    cmp-long v1, v13, v7

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    and-int/2addr v10, v1

    move-wide v7, v13

    goto :goto_7

    :cond_5
    const/4 v1, 0x3

    if-ne v6, v1, :cond_6

    const/4 v6, 0x4

    goto :goto_7

    :cond_6
    if-eq v6, v14, :cond_7

    const/4 v1, 0x6

    if-ne v6, v1, :cond_13

    :cond_7
    const/4 v6, 0x7

    goto :goto_7

    :cond_8
    :goto_3
    add-int/lit8 v11, v11, -0x30

    neg-int v1, v11

    int-to-long v7, v1

    const/4 v6, 0x2

    goto :goto_7

    .line 446
    :cond_9
    :goto_4
    invoke-direct {v0, v11}, Lo/dismissPopups;->onPostMessage(I)Z

    move-result v1

    if-eqz v1, :cond_15

    return v4

    :cond_a
    const/4 v1, 0x3

    if-ne v6, v15, :cond_b

    const/4 v6, 0x3

    goto :goto_7

    :cond_b
    return v4

    :cond_c
    const/4 v1, 0x6

    if-nez v6, :cond_d

    const/4 v6, 0x1

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    if-ne v6, v14, :cond_e

    goto :goto_6

    :cond_e
    return v4

    :cond_f
    if-eq v6, v15, :cond_11

    const/4 v1, 0x4

    if-ne v6, v1, :cond_10

    goto :goto_5

    :cond_10
    return v4

    :cond_11
    :goto_5
    const/4 v6, 0x5

    goto :goto_7

    :cond_12
    const/4 v1, 0x6

    if-ne v6, v14, :cond_14

    :goto_6
    const/4 v6, 0x6

    :cond_13
    :goto_7
    move v5, v12

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_14
    return v4

    :cond_15
    if-ne v6, v15, :cond_19

    if-eqz v10, :cond_19

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v7, v1

    if-nez v3, :cond_16

    if-eqz v9, :cond_19

    :cond_16
    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-nez v3, :cond_17

    if-nez v9, :cond_19

    :cond_17
    if-eqz v9, :cond_18

    goto :goto_8

    :cond_18
    neg-long v7, v7

    .line 473
    :goto_8
    iput-wide v7, v0, Lo/dismissPopups;->getInterfaceDescriptor:J

    .line 474
    iget-object v1, v0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    int-to-long v2, v5

    invoke-virtual {v1, v2, v3}, Lo/updatePriority;->asInterface(J)V

    const/16 v1, 0x10

    .line 475
    iput v1, v0, Lo/dismissPopups;->onTransact:I

    return v1

    :cond_19
    if-eq v6, v15, :cond_1b

    const/4 v1, 0x4

    if-eq v6, v1, :cond_1b

    const/4 v1, 0x7

    if-ne v6, v1, :cond_1a

    goto :goto_9

    :cond_1a
    return v4

    .line 478
    :cond_1b
    :goto_9
    iput v5, v0, Lo/dismissPopups;->newSession:I

    const/16 v1, 0x11

    .line 479
    iput v1, v0, Lo/dismissPopups;->onTransact:I

    return v1
.end method

.method private getInterfaceDescriptor()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/16 v1, 0x27

    const/16 v3, 0x22

    const/16 v4, 0x5d

    const/4 v5, 0x3

    const/16 v6, 0x3b

    const/16 v7, 0x2c

    const/4 v8, 0x4

    const/4 v9, 0x2

    const-string v10, "Use JsonReader.setLenient(true) to accept malformed JSON"

    if-ne v0, v2, :cond_0

    .line 215
    iget-object v11, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    iget v12, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v12, v2

    aput v9, v11, v12

    goto/16 :goto_0

    :cond_0
    if-ne v0, v9, :cond_3

    .line 218
    invoke-direct {p0, v2}, Lo/dismissPopups;->onNavigationEvent(Z)I

    move-result v11

    .line 219
    iget-object v12, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v12}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    if-eq v11, v7, :cond_a

    if-eq v11, v6, :cond_2

    if-ne v11, v4, :cond_1

    .line 222
    iput v8, p0, Lo/dismissPopups;->onTransact:I

    return v8

    :cond_1
    const-string v0, "Unterminated array"

    .line 228
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 1952
    :cond_2
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    :cond_3
    const/4 v11, 0x5

    if-eq v0, v5, :cond_17

    if-ne v0, v11, :cond_4

    goto/16 :goto_2

    :cond_4
    if-ne v0, v8, :cond_6

    .line 272
    iget-object v12, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    iget v13, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v13, v2

    aput v11, v12, v13

    .line 274
    invoke-direct {p0, v2}, Lo/dismissPopups;->onNavigationEvent(Z)I

    move-result v11

    .line 275
    iget-object v12, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v12}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    const/16 v12, 0x3a

    if-eq v11, v12, :cond_a

    const/16 v0, 0x3d

    if-eq v11, v0, :cond_5

    const-string v0, "Expected \':\'"

    .line 286
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 5952
    :cond_5
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    :cond_6
    const/4 v11, 0x6

    const/4 v12, 0x7

    if-ne v0, v11, :cond_7

    .line 289
    iget-object v11, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    iget v13, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v13, v2

    aput v12, v11, v13

    goto :goto_0

    :cond_7
    if-ne v0, v12, :cond_9

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, v0}, Lo/dismissPopups;->onNavigationEvent(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x12

    .line 293
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    return v0

    .line 6952
    :cond_8
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    :cond_9
    const/16 v11, 0x8

    if-eq v0, v11, :cond_16

    .line 301
    :cond_a
    :goto_0
    invoke-direct {p0, v2}, Lo/dismissPopups;->onNavigationEvent(Z)I

    move-result v11

    if-eq v11, v3, :cond_15

    if-eq v11, v1, :cond_14

    if-eq v11, v7, :cond_11

    if-eq v11, v6, :cond_11

    const/16 v1, 0x5b

    if-eq v11, v1, :cond_10

    if-eq v11, v4, :cond_f

    const/16 v0, 0x7b

    if-eq v11, v0, :cond_e

    .line 334
    invoke-direct {p0}, Lo/dismissPopups;->mayLaunchUrl()I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 339
    :cond_b
    invoke-direct {p0}, Lo/dismissPopups;->extraCommand()I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 344
    :cond_c
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v0

    invoke-direct {p0, v0}, Lo/dismissPopups;->onPostMessage(I)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Expected value"

    .line 345
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 9952
    :cond_d
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 329
    :cond_e
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 330
    iput v2, p0, Lo/dismissPopups;->onTransact:I

    return v2

    :cond_f
    if-ne v0, v2, :cond_11

    .line 305
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 306
    iput v8, p0, Lo/dismissPopups;->onTransact:I

    return v8

    .line 326
    :cond_10
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 327
    iput v5, p0, Lo/dismissPopups;->onTransact:I

    return v5

    :cond_11
    if-eq v0, v2, :cond_13

    if-ne v0, v9, :cond_12

    goto :goto_1

    :cond_12
    const-string v0, "Unexpected value"

    .line 316
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 7952
    :cond_13
    :goto_1
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 8952
    :cond_14
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 323
    :cond_15
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    const/16 v0, 0x9

    .line 324
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    return v0

    .line 298
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_17
    :goto_2
    iget-object v4, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    iget v5, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v5, v2

    aput v8, v4, v5

    const/16 v4, 0x7d

    if-ne v0, v11, :cond_1a

    .line 234
    invoke-direct {p0, v2}, Lo/dismissPopups;->onNavigationEvent(Z)I

    move-result v5

    .line 235
    iget-object v8, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v8}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    if-eq v5, v7, :cond_1a

    if-eq v5, v6, :cond_19

    if-ne v5, v4, :cond_18

    .line 238
    iput v9, p0, Lo/dismissPopups;->onTransact:I

    return v9

    :cond_18
    const-string v0, "Unterminated object"

    .line 244
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 2952
    :cond_19
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 247
    :cond_1a
    invoke-direct {p0, v2}, Lo/dismissPopups;->onNavigationEvent(Z)I

    move-result v2

    if-eq v2, v3, :cond_1e

    if-eq v2, v1, :cond_1d

    if-ne v2, v4, :cond_1c

    if-eq v0, v11, :cond_1b

    .line 258
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 259
    iput v9, p0, Lo/dismissPopups;->onTransact:I

    return v9

    :cond_1b
    const-string v0, "Expected name"

    .line 261
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 4952
    :cond_1c
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 253
    :cond_1d
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 3952
    invoke-virtual {p0, v10}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 250
    :cond_1e
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    const/16 v0, 0xd

    .line 251
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    return v0
.end method

.method private mayLaunchUrl()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x5

    const-string/jumbo v2, "true"

    const-string v3, "TRUE"

    .line 375
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    .line 377
    iget-object v6, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    add-int/lit8 v7, v5, 0x1

    int-to-long v8, v7

    invoke-interface {v6, v8, v9}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    .line 380
    :cond_6
    iget-object v6, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v6

    .line 381
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v6, v8, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v6, v5, :cond_7

    return v1

    :cond_7
    move v5, v7

    goto :goto_4

    .line 386
    :cond_8
    iget-object v2, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    add-int/lit8 v3, v4, 0x1

    int-to-long v5, v3

    invoke-interface {v2, v5, v6}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v2

    invoke-direct {p0, v2}, Lo/dismissPopups;->onPostMessage(I)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 391
    :cond_9
    iget-object v1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Lo/updatePriority;->asInterface(J)V

    .line 392
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    return v0
.end method

.method private onNavigationEvent(Ljava/lang/String;Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I
    .locals 4

    .line 595
    iget-object v0, p2, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->onMessageChannelReady:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 596
    iget-object v3, p2, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->onMessageChannelReady:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    iput v1, p0, Lo/dismissPopups;->onTransact:I

    .line 598
    iget-object p2, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget v0, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private onNavigationEvent(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 897
    :goto_0
    iget-object v1, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v2

    invoke-interface {v1, v3, v4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 898
    iget-object v1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    .line 903
    iget-object p1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    add-int/lit8 v2, v2, -0x1

    int-to-long v1, v2

    invoke-virtual {p1, v1, v2}, Lo/updatePriority;->asInterface(J)V

    const/16 p1, 0x2f

    const-string v1, "Use JsonReader.setLenient(true) to accept malformed JSON"

    if-ne v0, p1, :cond_1

    .line 905
    iget-object p1, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    const-wide/16 v2, 0x2

    invoke-interface {p1, v2, v3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 17952
    :cond_0
    invoke-virtual {p0, v1}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object p1

    throw p1

    :cond_1
    const/16 p1, 0x23

    if-eq v0, p1, :cond_2

    return v0

    .line 18952
    :cond_2
    invoke-virtual {p0, v1}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object p1

    throw p1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const/4 p1, -0x1

    return p1

    .line 944
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_0
    :pswitch_0
    const-string p1, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 10952
    invoke-virtual {p0, p1}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object p1

    throw p1

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postMessage()C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 993
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b

    const/16 v2, 0x22

    if-eq v0, v2, :cond_b

    const/16 v2, 0x27

    if-eq v0, v2, :cond_b

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_b

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_b

    const/16 v2, 0x62

    if-eq v0, v2, :cond_a

    const/16 v2, 0x66

    if-eq v0, v2, :cond_9

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_8

    const/16 v3, 0x72

    if-eq v0, v3, :cond_7

    const/16 v3, 0x74

    if-eq v0, v3, :cond_6

    const/16 v3, 0x75

    if-ne v0, v3, :cond_5

    .line 996
    iget-object v0, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    const-wide/16 v3, 0x4

    invoke-interface {v0, v3, v4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v0, v6, :cond_3

    .line 1002
    iget-object v6, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v6

    shl-int/lit8 v5, v5, 0x4

    int-to-char v5, v5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_0

    const/16 v7, 0x39

    if-gt v6, v7, :cond_0

    add-int/lit8 v6, v6, -0x30

    :goto_1
    add-int/2addr v5, v6

    int-to-char v5, v5

    goto :goto_3

    :cond_0
    const/16 v7, 0x61

    if-lt v6, v7, :cond_1

    if-gt v6, v2, :cond_1

    add-int/lit8 v6, v6, -0x61

    :goto_2
    add-int/2addr v6, v1

    goto :goto_1

    :cond_1
    const/16 v7, 0x41

    if-lt v6, v7, :cond_2

    const/16 v7, 0x46

    if-gt v6, v7, :cond_2

    add-int/lit8 v6, v6, -0x41

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    .line 19699
    sget-object v2, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3, v4, v2}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    .line 1014
    :cond_3
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0, v3, v4}, Lo/updatePriority;->asInterface(J)V

    return v5

    .line 997
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unterminated escape sequence at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escape sequence: \\"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0

    :cond_6
    const/16 v0, 0x9

    return v0

    :cond_7
    const/16 v0, 0xd

    return v0

    :cond_8
    return v1

    :cond_9
    const/16 v0, 0xc

    return v0

    :cond_a
    const/16 v0, 0x8

    return v0

    :cond_b
    int-to-char v0, v0

    return v0

    :cond_c
    const-string v0, "Unterminated escape sequence"

    .line 990
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;

    move-result-object v0

    throw v0
.end method

.method private requestPostMessageChannel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    sget-object v1, Lo/dismissPopups;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-interface {v0, v1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v0

    .line 766
    iget-object v2, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 17067
    :cond_0
    iget-wide v0, v2, Lo/updatePriority;->ICustomTabsCallback:J

    .line 766
    :goto_0
    invoke-virtual {v2, v0, v1}, Lo/updatePriority;->asInterface(J)V

    return-void
.end method

.method private updateVisuals()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    sget-object v1, Lo/dismissPopups;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-interface {v0, v1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 746
    iget-object v2, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    .line 16699
    sget-object v3, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0, v1, v3}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 746
    :cond_0
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 154
    iget v0, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    .line 155
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 156
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    return-void

    .line 159
    :cond_1
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 613
    invoke-direct {p0}, Lo/dismissPopups;->updateVisuals()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 615
    sget-object v0, Lo/dismissPopups;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 617
    sget-object v0, Lo/dismissPopups;->onMessageChannelReady:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 619
    iget-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    const/4 v1, 0x0

    .line 620
    iput-object v1, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 622
    iget-wide v0, p0, Lo/dismissPopups;->getInterfaceDescriptor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 624
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    iget v1, p0, Lo/dismissPopups;->newSession:I

    int-to-long v1, v1

    .line 11699
    sget-object v3, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1, v2, v3}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 628
    iput v1, p0, Lo/dismissPopups;->onTransact:I

    .line 629
    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 626
    :cond_6
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsService()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 673
    iput v2, p0, Lo/dismissPopups;->onTransact:I

    .line 674
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 675
    iget-wide v0, p0, Lo/dismissPopups;->getInterfaceDescriptor:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    .line 679
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    iget v1, p0, Lo/dismissPopups;->newSession:I

    int-to-long v6, v1

    .line 12699
    sget-object v1, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7, v1}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 679
    iput-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 681
    sget-object v0, Lo/dismissPopups;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 683
    sget-object v0, Lo/dismissPopups;->onMessageChannelReady:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 685
    invoke-direct {p0}, Lo/dismissPopups;->updateVisuals()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_7

    .line 690
    :goto_0
    iput v4, p0, Lo/dismissPopups;->onTransact:I

    .line 693
    :try_start_0
    iget-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 702
    iput-object v3, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 703
    iput v2, p0, Lo/dismissPopups;->onTransact:I

    .line 704
    iget-object v2, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v3, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    .line 699
    :cond_6
    new-instance v2, Lo/TileList$Tile$ICustomTabsCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lo/TileList$Tile$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    throw v2

    .line 695
    :catch_0
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_7
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final asBinder()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 652
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 655
    iput v2, p0, Lo/dismissPopups;->onTransact:I

    .line 656
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 659
    iput v2, p0, Lo/dismissPopups;->onTransact:I

    .line 660
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 663
    :cond_2
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 517
    invoke-direct {p0}, Lo/dismissPopups;->updateVisuals()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 519
    sget-object v0, Lo/dismissPopups;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 521
    sget-object v0, Lo/dismissPopups;->onMessageChannelReady:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 523
    iget-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 527
    iput v1, p0, Lo/dismissPopups;->onTransact:I

    .line 528
    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 525
    :cond_4
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 825
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    .line 826
    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 827
    iput v0, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    .line 828
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    .line 17930
    :try_start_0
    iget-wide v1, v0, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Lo/updatePriority;->asInterface(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    iget-object v0, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void

    :catch_0
    move-exception v0

    .line 17932
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final extraCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 140
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(I)V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    return-void

    .line 143
    :cond_1
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final newSession()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 772
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    .line 777
    iget-wide v0, p0, Lo/dismissPopups;->getInterfaceDescriptor:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    .line 782
    iput v2, p0, Lo/dismissPopups;->onTransact:I

    .line 783
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 779
    :cond_1
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lo/dismissPopups;->getInterfaceDescriptor:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    .line 788
    iget-object v0, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    iget v1, p0, Lo/dismissPopups;->newSession:I

    int-to-long v6, v1

    .line 17699
    sget-object v1, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7, v1}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 788
    iput-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 802
    :cond_5
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 791
    sget-object v0, Lo/dismissPopups;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 792
    :cond_7
    sget-object v0, Lo/dismissPopups;->onMessageChannelReady:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 794
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 795
    iput v2, p0, Lo/dismissPopups;->onTransact:I

    .line 796
    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v6, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 805
    :catch_0
    :goto_2
    iput v5, p0, Lo/dismissPopups;->onTransact:I

    .line 808
    :try_start_1
    iget-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v8, v6, v0

    if-nez v8, :cond_8

    const/4 v0, 0x0

    .line 818
    iput-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 819
    iput v2, p0, Lo/dismissPopups;->onTransact:I

    .line 820
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 815
    :cond_8
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :catch_1
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 535
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 541
    iget-object v0, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lo/dismissPopups;->onNavigationEvent(Ljava/lang/String;Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result p1

    return p1

    .line 544
    :cond_2
    iget-object v0, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    iget-object v3, p1, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback:Lo/error;

    invoke-interface {v0, v3}, Lo/fullLimitUpdateChild;->onNavigationEvent(Lo/error;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x0

    .line 546
    iput v1, p0, Lo/dismissPopups;->onTransact:I

    .line 547
    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v2, v2, -0x1

    iget-object p1, p1, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->onMessageChannelReady:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, v2

    return v0

    .line 554
    :cond_3
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget v3, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 556
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asInterface()Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-direct {p0, v3, p1}, Lo/dismissPopups;->onNavigationEvent(Ljava/lang/String;Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 560
    iput v1, p0, Lo/dismissPopups;->onTransact:I

    .line 561
    iput-object v3, p0, Lo/dismissPopups;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public final onMessageChannelReady()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 125
    iget v0, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    .line 126
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    return-void

    .line 129
    :cond_1
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(I)V

    .line 111
    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 112
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    return-void

    .line 114
    :cond_1
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onRelationshipValidationResult()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 575
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 578
    invoke-direct {p0}, Lo/dismissPopups;->requestPostMessageChannel()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 580
    sget-object v0, Lo/dismissPopups;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Lo/matches;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 582
    sget-object v0, Lo/dismissPopups;->onMessageChannelReady:Lo/matches;

    invoke-direct {p0, v0}, Lo/dismissPopups;->ICustomTabsCallback(Lo/matches;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    :goto_0
    const/4 v0, 0x0

    .line 586
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    .line 587
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 584
    :cond_4
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 208
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :pswitch_0
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->asBinder:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 204
    :pswitch_1
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->onTransact:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 191
    :pswitch_2
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 201
    :pswitch_3
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->onRelationshipValidationResult:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 196
    :pswitch_4
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->asInterface:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 194
    :pswitch_5
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->ICustomTabsCallback$Stub:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 186
    :pswitch_6
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 184
    :pswitch_7
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 182
    :pswitch_8
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->onPostMessage:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    .line 180
    :pswitch_9
    sget-object v0, Lo/restoreToolbarHierarchyState$onPostMessage;->extraCallback:Lo/restoreToolbarHierarchyState$onPostMessage;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/dismissPopups;->asBinder:Lo/fullLimitUpdateChild;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 838
    :cond_0
    iget v2, p0, Lo/dismissPopups;->onTransact:I

    if-nez v2, :cond_1

    .line 840
    invoke-direct {p0}, Lo/dismissPopups;->getInterfaceDescriptor()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 844
    invoke-virtual {p0, v4}, Lo/dismissPopups;->ICustomTabsCallback(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_2
    if-ne v2, v4, :cond_3

    .line 847
    invoke-virtual {p0, v3}, Lo/dismissPopups;->ICustomTabsCallback(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 855
    iget v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v2, v4

    iput v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    goto/16 :goto_4

    .line 852
    :cond_4
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 862
    iget v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v2, v4

    iput v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    goto/16 :goto_4

    .line 859
    :cond_6
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v3, 0xe

    if-eq v2, v3, :cond_f

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    const/16 v3, 0x9

    if-eq v2, v3, :cond_e

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    goto :goto_2

    :cond_9
    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v3, 0x11

    if-ne v2, v3, :cond_b

    .line 870
    iget-object v2, p0, Lo/dismissPopups;->onRelationshipValidationResult:Lo/updatePriority;

    iget v3, p0, Lo/dismissPopups;->newSession:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lo/updatePriority;->asInterface(J)V

    goto :goto_4

    :cond_b
    const/16 v3, 0x12

    if-eq v2, v3, :cond_c

    goto :goto_4

    .line 872
    :cond_c
    new-instance v0, Lo/hideForSystem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_d
    :goto_1
    sget-object v2, Lo/dismissPopups;->onMessageChannelReady:Lo/matches;

    invoke-direct {p0, v2}, Lo/dismissPopups;->ICustomTabsCallback(Lo/matches;)V

    goto :goto_4

    .line 866
    :cond_e
    :goto_2
    sget-object v2, Lo/dismissPopups;->asInterface:Lo/matches;

    invoke-direct {p0, v2}, Lo/dismissPopups;->ICustomTabsCallback(Lo/matches;)V

    goto :goto_4

    .line 864
    :cond_f
    :goto_3
    invoke-direct {p0}, Lo/dismissPopups;->requestPostMessageChannel()V

    .line 875
    :goto_4
    iput v0, p0, Lo/dismissPopups;->onTransact:I

    if-nez v1, :cond_0

    .line 878
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v1, v4

    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    .line 879
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void
.end method
