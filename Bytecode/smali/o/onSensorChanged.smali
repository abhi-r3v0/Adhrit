.class final Lo/onSensorChanged;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Z

.field private asBinder:Lo/n$2;

.field private asInterface:Lo/n$2;

.field private final extraCallback:Lo/t$onPostMessage;

.field private newSession:Ljava/lang/Object;

.field private onMessageChannelReady:J

.field private onNavigationEvent:Lo/t;

.field private final onPostMessage:Lo/t$onMessageChannelReady;

.field private onRelationshipValidationResult:Lo/n$2;

.field private onTransact:I

.field private warmup:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lo/t$onPostMessage;

    invoke-direct {v0}, Lo/t$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    .line 59
    new-instance v0, Lo/t$onMessageChannelReady;

    invoke-direct {v0}, Lo/t$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/onSensorChanged;->onPostMessage:Lo/t$onMessageChannelReady;

    .line 60
    sget-object v0, Lo/t;->extraCallback:Lo/t;

    iput-object v0, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/Object;JJ)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 7

    .line 413
    iget-object v0, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v1, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v0, p1, v1}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 414
    iget-object v0, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v0, p2, p3}, Lo/t$onPostMessage;->onNavigationEvent(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 416
    iget-object v0, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v0, p2, p3}, Lo/t$onPostMessage;->extraCallback(J)I

    move-result p2

    .line 417
    new-instance p3, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-direct {p3, p1, p4, p5, p2}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;JI)V

    return-object p3

    .line 419
    :cond_0
    iget-object p2, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {p2, v3}, Lo/t$onPostMessage;->ICustomTabsCallback(I)I

    move-result v4

    .line 420
    new-instance p2, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method private ICustomTabsCallback(Lo/p;Lo/p;)Z
    .locals 5

    .line 473
    iget-wide v0, p1, Lo/p;->onNavigationEvent:J

    iget-wide v2, p2, Lo/p;->onNavigationEvent:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object p2, p2, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onMessageChannelReady(Lo/GoogleReferrer;)Lo/p;
    .locals 6

    .line 529
    iget-object v1, p1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v2, p1, Lo/GoogleReferrer;->onNavigationEvent:J

    iget-wide v4, p1, Lo/GoogleReferrer;->onPostMessage:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/onSensorChanged;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJ)Lo/p;

    move-result-object p1

    return-object p1
.end method

.method private onMessageChannelReady(Lo/n$2;J)Lo/p;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 548
    iget-object v1, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    .line 553
    invoke-virtual/range {p1 .. p1}, Lo/n$2;->extraCallback()J

    move-result-wide v2

    iget-wide v4, v1, Lo/p;->extraCallback:J

    add-long/2addr v2, v4

    sub-long v2, v2, p2

    .line 554
    iget-boolean v4, v1, Lo/p;->onRelationshipValidationResult:Z

    const/4 v7, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    .line 555
    iget-object v4, v8, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v12, v1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v12, v12, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v14

    .line 556
    iget-object v13, v8, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v15, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget-object v4, v8, Lo/onSensorChanged;->onPostMessage:Lo/t$onMessageChannelReady;

    iget v12, v8, Lo/onSensorChanged;->ICustomTabsCallback:I

    iget-boolean v5, v8, Lo/onSensorChanged;->ICustomTabsCallback$Stub:Z

    move-object/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v5

    .line 557
    invoke-virtual/range {v13 .. v18}, Lo/t;->extraCallback(ILo/t$onPostMessage;Lo/t$onMessageChannelReady;IZ)I

    move-result v4

    if-ne v4, v7, :cond_0

    return-object v11

    .line 566
    :cond_0
    iget-object v5, v8, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v6, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    const/4 v7, 0x1

    .line 567
    invoke-virtual {v5, v4, v6, v7}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    move-result-object v5

    iget v15, v5, Lo/t$onPostMessage;->onNavigationEvent:I

    .line 568
    iget-object v5, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget-object v5, v5, Lo/t$onPostMessage;->extraCallback:Ljava/lang/Object;

    .line 569
    iget-object v1, v1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v6, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    .line 570
    iget-object v1, v8, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v12, v8, Lo/onSensorChanged;->onPostMessage:Lo/t$onMessageChannelReady;

    invoke-virtual {v1, v15, v12}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v1

    iget v1, v1, Lo/t$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    if-ne v1, v4, :cond_3

    .line 575
    iget-object v12, v8, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v13, v8, Lo/onSensorChanged;->onPostMessage:Lo/t$onMessageChannelReady;

    iget-object v14, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 581
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 576
    invoke-virtual/range {v12 .. v19}, Lo/t;->onPostMessage(Lo/t$onMessageChannelReady;Lo/t$onPostMessage;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v11

    .line 585
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 586
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 587
    invoke-virtual/range {p1 .. p1}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v1, v0, Lo/n$2;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    iget-object v0, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v0, v0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v0, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    goto :goto_0

    .line 591
    :cond_2
    iget-wide v0, v8, Lo/onSensorChanged;->onMessageChannelReady:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Lo/onSensorChanged;->onMessageChannelReady:J

    :goto_0
    move-wide v6, v3

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v5

    move-wide v4, v6

    move-wide v6, v9

    :goto_1
    move-object/from16 v0, p0

    move-wide v2, v6

    .line 599
    invoke-direct/range {v0 .. v5}, Lo/onSensorChanged;->ICustomTabsCallback(Ljava/lang/Object;JJ)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object v1

    move-wide v2, v9

    move-wide v4, v6

    .line 600
    invoke-direct/range {v0 .. v5}, Lo/onSensorChanged;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJ)Lo/p;

    move-result-object v0

    return-object v0

    .line 603
    :cond_4
    iget-object v0, v1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 604
    iget-object v4, v8, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v5, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v6, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v4, v5, v6}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 605
    invoke-virtual {v0}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 606
    iget v4, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    .line 607
    iget-object v5, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v5, v4}, Lo/t$onPostMessage;->extraCallback(I)I

    move-result v5

    if-ne v5, v7, :cond_5

    return-object v11

    .line 611
    :cond_5
    iget-object v6, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget v7, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    .line 612
    invoke-virtual {v6, v4, v7}, Lo/t$onPostMessage;->ICustomTabsCallback(II)I

    move-result v6

    if-ge v6, v5, :cond_7

    .line 615
    iget-object v2, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v2, v4, v6}, Lo/t$onPostMessage;->onNavigationEvent(II)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v11

    :cond_6
    iget-object v2, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-wide v9, v1, Lo/p;->onMessageChannelReady:J

    iget-wide v11, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v6

    move-wide v4, v9

    move-wide v6, v11

    .line 617
    invoke-direct/range {v0 .. v7}, Lo/onSensorChanged;->onPostMessage(Ljava/lang/Object;IIJJ)Lo/p;

    move-result-object v0

    return-object v0

    .line 625
    :cond_7
    iget-wide v4, v1, Lo/p;->onMessageChannelReady:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    .line 629
    iget-object v12, v8, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v13, v8, Lo/onSensorChanged;->onPostMessage:Lo/t$onMessageChannelReady;

    iget-object v14, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget v15, v14, Lo/t$onPostMessage;->onNavigationEvent:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 635
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 630
    invoke-virtual/range {v12 .. v19}, Lo/t;->onPostMessage(Lo/t$onMessageChannelReady;Lo/t$onPostMessage;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v11

    .line 639
    :cond_8
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_2

    :cond_9
    move-wide v2, v4

    .line 641
    :goto_2
    iget-object v1, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-wide v4, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lo/onSensorChanged;->onNavigationEvent(Ljava/lang/Object;JJ)Lo/p;

    move-result-object v0

    return-object v0

    .line 646
    :cond_a
    iget-object v2, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget-wide v3, v1, Lo/p;->ICustomTabsCallback:J

    invoke-virtual {v2, v3, v4}, Lo/t$onPostMessage;->onNavigationEvent(J)I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 649
    iget-object v2, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-wide v3, v1, Lo/p;->extraCallback:J

    iget-wide v5, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lo/onSensorChanged;->onNavigationEvent(Ljava/lang/Object;JJ)Lo/p;

    move-result-object v0

    return-object v0

    .line 654
    :cond_b
    iget-object v3, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v3, v2}, Lo/t$onPostMessage;->ICustomTabsCallback(I)I

    move-result v3

    .line 655
    iget-object v4, v8, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v4, v2, v3}, Lo/t$onPostMessage;->onNavigationEvent(II)Z

    move-result v4

    if-nez v4, :cond_c

    return-object v11

    :cond_c
    iget-object v4, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-wide v5, v1, Lo/p;->extraCallback:J

    iget-wide v9, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    .line 657
    invoke-direct/range {v0 .. v7}, Lo/onSensorChanged;->onPostMessage(Ljava/lang/Object;IIJJ)Lo/p;

    move-result-object v0

    return-object v0
.end method

.method private onMessageChannelReady(JJ)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private onNavigationEvent(Ljava/lang/Object;JJ)Lo/p;
    .locals 14

    move-object v0, p0

    .line 712
    iget-object v1, v0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Lo/t$onPostMessage;->extraCallback(J)I

    move-result v1

    .line 713
    new-instance v3, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-object v2, p1

    move-wide/from16 v6, p4

    invoke-direct {v3, p1, v6, v7, v1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;JI)V

    .line 714
    invoke-direct {p0, v3}, Lo/onSensorChanged;->onPostMessage(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result v12

    .line 715
    invoke-direct {p0, v3, v12}, Lo/onSensorChanged;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Z)Z

    move-result v13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 716
    iget-object v2, v0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    .line 718
    invoke-virtual {v2, v1}, Lo/t$onPostMessage;->onNavigationEvent(I)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    cmp-long v1, v8, v6

    if-eqz v1, :cond_2

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v6, v8, v1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v10, v8

    goto :goto_2

    .line 720
    :cond_2
    :goto_1
    iget-object v1, v0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget-wide v1, v1, Lo/t$onPostMessage;->ICustomTabsCallback:J

    move-wide v10, v1

    .line 724
    :goto_2
    new-instance v1, Lo/p;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Lo/p;-><init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJJZZ)V

    return-object v1
.end method

.method private onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJ)Lo/p;
    .locals 8

    .line 668
    iget-object v0, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v2, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 669
    invoke-virtual {p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object p4, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget p5, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    iget v0, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    invoke-virtual {p4, p5, v0}, Lo/t$onPostMessage;->onNavigationEvent(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 673
    :cond_0
    iget-object v1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget v2, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    iget v3, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    iget-wide v6, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lo/onSensorChanged;->onPostMessage(Ljava/lang/Object;IIJJ)Lo/p;

    move-result-object p1

    return-object p1

    .line 680
    :cond_1
    iget-object v1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-wide v4, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lo/onSensorChanged;->onNavigationEvent(Ljava/lang/Object;JJ)Lo/p;

    move-result-object p1

    return-object p1
.end method

.method private onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Z)Z
    .locals 7

    .line 739
    iget-object v0, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object p1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v2

    .line 740
    iget-object p1, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v0, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {p1, v2, v0}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object p1

    iget p1, p1, Lo/t$onPostMessage;->onNavigationEvent:I

    .line 741
    iget-object v0, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v1, p0, Lo/onSensorChanged;->onPostMessage:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, p1, v1}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object p1

    iget-boolean p1, p1, Lo/t$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v3, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget-object v4, p0, Lo/onSensorChanged;->onPostMessage:Lo/t$onMessageChannelReady;

    iget v5, p0, Lo/onSensorChanged;->ICustomTabsCallback:I

    iget-boolean v6, p0, Lo/onSensorChanged;->ICustomTabsCallback$Stub:Z

    .line 742
    invoke-virtual/range {v1 .. v6}, Lo/t;->onPostMessage(ILo/t$onPostMessage;Lo/t$onMessageChannelReady;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onPostMessage(Ljava/lang/Object;)J
    .locals 5

    .line 433
    iget-object v0, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v1, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v0, p1, v1}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v0

    iget v0, v0, Lo/t$onPostMessage;->onNavigationEvent:I

    .line 434
    iget-object v1, p0, Lo/onSensorChanged;->newSession:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 435
    iget-object v3, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    invoke-virtual {v3, v1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 437
    iget-object v3, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v4, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v3, v1, v4}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v1

    iget v1, v1, Lo/t$onPostMessage;->onNavigationEvent:I

    if-ne v1, v0, :cond_0

    .line 440
    iget-wide v0, p0, Lo/onSensorChanged;->warmup:J

    return-wide v0

    .line 444
    :cond_0
    invoke-virtual {p0}, Lo/onSensorChanged;->extraCallback()Lo/n$2;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 446
    iget-object v3, v1, Lo/n$2;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    iget-object p1, v1, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object p1, p1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v0, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    return-wide v0

    .line 450
    :cond_1
    invoke-virtual {v1}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v1

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {p0}, Lo/onSensorChanged;->extraCallback()Lo/n$2;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 454
    iget-object v1, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v3, p1, Lo/n$2;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 456
    iget-object v3, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v4, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v3, v1, v4}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v1

    iget v1, v1, Lo/t$onPostMessage;->onNavigationEvent:I

    if-ne v1, v0, :cond_3

    .line 459
    iget-object p1, p1, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object p1, p1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v0, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    return-wide v0

    .line 462
    :cond_3
    invoke-virtual {p1}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object p1

    goto :goto_1

    .line 465
    :cond_4
    iget-wide v0, p0, Lo/onSensorChanged;->onMessageChannelReady:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/onSensorChanged;->onMessageChannelReady:J

    return-wide v0
.end method

.method private onPostMessage(Ljava/lang/Object;IIJJ)Lo/p;
    .locals 16

    move-object/from16 v0, p0

    .line 690
    new-instance v7, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;IIJ)V

    .line 692
    iget-object v1, v0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v2, v7, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v3, v0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    .line 694
    invoke-virtual {v1, v2, v3}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v1

    iget v2, v7, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    iget v3, v7, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    .line 695
    invoke-virtual {v1, v2, v3}, Lo/t$onPostMessage;->onPostMessage(II)J

    move-result-wide v9

    .line 696
    iget-object v1, v0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    move/from16 v2, p2

    .line 697
    invoke-virtual {v1, v2}, Lo/t$onPostMessage;->ICustomTabsCallback(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    .line 698
    invoke-virtual {v1}, Lo/t$onPostMessage;->extraCallback()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v3, v1

    .line 700
    new-instance v13, Lo/p;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    move v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Lo/p;-><init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJJZZ)V

    return-object v13
.end method

.method private onPostMessage(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Z
    .locals 1

    .line 735
    invoke-virtual {p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onPostMessage:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onTransact()Z
    .locals 8

    .line 489
    invoke-virtual {p0}, Lo/onSensorChanged;->extraCallback()Lo/n$2;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 493
    :cond_0
    iget-object v2, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v3, v0, Lo/n$2;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 495
    :goto_0
    iget-object v2, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v4, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget-object v5, p0, Lo/onSensorChanged;->onPostMessage:Lo/t$onMessageChannelReady;

    iget v6, p0, Lo/onSensorChanged;->ICustomTabsCallback:I

    iget-boolean v7, p0, Lo/onSensorChanged;->ICustomTabsCallback$Stub:Z

    .line 496
    invoke-virtual/range {v2 .. v7}, Lo/t;->extraCallback(ILo/t$onPostMessage;Lo/t$onMessageChannelReady;IZ)I

    move-result v3

    .line 498
    :goto_1
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-boolean v2, v2, Lo/p;->onRelationshipValidationResult:Z

    if-nez v2, :cond_1

    .line 500
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    goto :goto_1

    .line 503
    :cond_1
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 507
    iget-object v4, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v5, v2, Lo/n$2;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p0, v0}, Lo/onSensorChanged;->onPostMessage(Lo/n$2;)Z

    move-result v2

    .line 519
    iget-object v3, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    invoke-virtual {p0, v3}, Lo/onSensorChanged;->ICustomTabsCallback(Lo/p;)Lo/p;

    move-result-object v3

    iput-object v3, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    if-eqz v2, :cond_4

    .line 522
    invoke-virtual {p0}, Lo/onSensorChanged;->asInterface()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/n$2;
    .locals 1

    .line 174
    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/p;)Lo/p;
    .locals 13

    .line 364
    iget-object v1, p1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 365
    invoke-direct {p0, v1}, Lo/onSensorChanged;->onPostMessage(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result v10

    .line 366
    invoke-direct {p0, v1, v10}, Lo/onSensorChanged;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Z)Z

    move-result v11

    .line 367
    iget-object v0, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    iget-object v2, p1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v2, v2, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v3, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    invoke-virtual {v0, v2, v3}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 369
    invoke-virtual {v1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    iget v2, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    iget v3, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    .line 370
    invoke-virtual {v0, v2, v3}, Lo/t$onPostMessage;->onPostMessage(II)J

    move-result-wide v2

    :goto_0
    move-wide v8, v2

    goto :goto_2

    :cond_0
    iget-wide v2, p1, Lo/p;->ICustomTabsCallback:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p1, Lo/p;->ICustomTabsCallback:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_1

    .line 372
    :cond_1
    iget-wide v2, p1, Lo/p;->ICustomTabsCallback:J

    goto :goto_0

    .line 370
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/onSensorChanged;->extraCallback:Lo/t$onPostMessage;

    .line 372
    invoke-virtual {v0}, Lo/t$onPostMessage;->ICustomTabsCallback()J

    move-result-wide v2

    goto :goto_0

    .line 374
    :goto_2
    new-instance v12, Lo/p;

    iget-wide v2, p1, Lo/p;->onNavigationEvent:J

    iget-wide v4, p1, Lo/p;->onMessageChannelReady:J

    iget-wide v6, p1, Lo/p;->ICustomTabsCallback:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/p;-><init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJJZZ)V

    return-object v12
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 4

    .line 276
    invoke-virtual {p0}, Lo/onSensorChanged;->extraCallback()Lo/n$2;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, v0, Lo/n$2;->onMessageChannelReady:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lo/onSensorChanged;->newSession:Ljava/lang/Object;

    .line 279
    iget-object p1, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object p1, p1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v2, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    iput-wide v2, p0, Lo/onSensorChanged;->warmup:J

    .line 280
    invoke-virtual {v0}, Lo/n$2;->asBinder()V

    .line 281
    invoke-virtual {p0, v0}, Lo/onSensorChanged;->onPostMessage(Lo/n$2;)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 283
    iput-object v1, p0, Lo/onSensorChanged;->newSession:Ljava/lang/Object;

    .line 285
    :cond_2
    :goto_1
    iput-object v1, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    .line 286
    iput-object v1, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    .line 287
    iput-object v1, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    const/4 p1, 0x0

    .line 288
    iput p1, p0, Lo/onSensorChanged;->onTransact:I

    return-void
.end method

.method public final ICustomTabsCallback(JJ)Z
    .locals 10

    .line 308
    invoke-virtual {p0}, Lo/onSensorChanged;->extraCallback()Lo/n$2;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 310
    iget-object v3, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {p0, v3}, Lo/onSensorChanged;->ICustomTabsCallback(Lo/p;)Lo/p;

    move-result-object v1

    goto :goto_1

    .line 320
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lo/onSensorChanged;->onMessageChannelReady(Lo/n$2;J)Lo/p;

    move-result-object v5

    if-nez v5, :cond_2

    .line 323
    invoke-virtual {p0, v1}, Lo/onSensorChanged;->onPostMessage(Lo/n$2;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v4

    .line 325
    :cond_2
    invoke-direct {p0, v3, v5}, Lo/onSensorChanged;->ICustomTabsCallback(Lo/p;Lo/p;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 327
    invoke-virtual {p0, v1}, Lo/onSensorChanged;->onPostMessage(Lo/n$2;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v4

    :cond_4
    move-object v1, v5

    .line 332
    :goto_1
    iget-wide v5, v3, Lo/p;->onMessageChannelReady:J

    invoke-virtual {v1, v5, v6}, Lo/p;->extraCallback(J)Lo/p;

    move-result-object v5

    iput-object v5, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    .line 334
    iget-wide v5, v3, Lo/p;->extraCallback:J

    iget-wide v7, v1, Lo/p;->extraCallback:J

    invoke-direct {p0, v5, v6, v7, v8}, Lo/onSensorChanged;->onMessageChannelReady(JJ)Z

    move-result v3

    if-nez v3, :cond_9

    .line 337
    iget-wide p1, v1, Lo/p;->extraCallback:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v5

    if-nez v3, :cond_5

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    :cond_5
    iget-wide p1, v1, Lo/p;->extraCallback:J

    .line 340
    invoke-virtual {v0, p1, p2}, Lo/n$2;->onMessageChannelReady(J)J

    move-result-wide p1

    .line 341
    :goto_2
    iget-object v1, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    if-ne v0, v1, :cond_7

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, p3, v5

    if-eqz v1, :cond_6

    cmp-long v1, p3, p1

    if-ltz v1, :cond_7

    :cond_6
    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 345
    :goto_3
    invoke-virtual {p0, v0}, Lo/onSensorChanged;->onPostMessage(Lo/n$2;)Z

    move-result p2

    if-nez p2, :cond_8

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v4

    .line 350
    :cond_9
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    :cond_a
    return v2
.end method

.method public final ICustomTabsCallback$Stub()Lo/n$2;
    .locals 2

    .line 225
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    if-eqz v0, :cond_2

    .line 226
    iget-object v1, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    iput-object v0, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    .line 229
    :cond_0
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    invoke-virtual {v0}, Lo/n$2;->asBinder()V

    .line 230
    iget v0, p0, Lo/onSensorChanged;->onTransact:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/onSensorChanged;->onTransact:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    .line 233
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    iget-object v0, v0, Lo/n$2;->onMessageChannelReady:Ljava/lang/Object;

    iput-object v0, p0, Lo/onSensorChanged;->newSession:Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    iget-object v0, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v0, v0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v0, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    iput-wide v0, p0, Lo/onSensorChanged;->warmup:J

    .line 236
    :cond_1
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    iput-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    iput-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    .line 239
    iput-object v0, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    .line 241
    :goto_0
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    return-object v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Lo/n$2;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lo/onSensorChanged;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    return-object v0
.end method

.method public final extraCallback(Lo/t;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/onSensorChanged;->onNavigationEvent:Lo/t;

    return-void
.end method

.method public final extraCallback(I)Z
    .locals 0

    .line 76
    iput p1, p0, Lo/onSensorChanged;->ICustomTabsCallback:I

    .line 77
    invoke-direct {p0}, Lo/onSensorChanged;->onTransact()Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()Lo/n$2;
    .locals 1

    .line 190
    iget-object v0, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;J)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 6

    .line 394
    invoke-direct {p0, p1}, Lo/onSensorChanged;->onPostMessage(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 395
    invoke-direct/range {v0 .. v5}, Lo/onSensorChanged;->ICustomTabsCallback(Ljava/lang/Object;JJ)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent([Lo/MandatoryFields;Lo/InstrumentViewMapping;Lo/PaymentRequest;Lo/InstrumentsCompleteJsonAdapter;Lo/p;)Lo/PaymentModeAdapter;
    .locals 10

    .line 145
    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    if-nez v0, :cond_1

    iget-object v0, p5, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 147
    invoke-virtual {v0}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p5, Lo/p;->onMessageChannelReady:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p5, Lo/p;->onMessageChannelReady:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0}, Lo/n$2;->extraCallback()J

    move-result-wide v0

    iget-object v2, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    iget-object v2, v2, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v2, v2, Lo/p;->extraCallback:J

    add-long/2addr v0, v2

    iget-wide v2, p5, Lo/p;->onNavigationEvent:J

    sub-long/2addr v0, v2

    :goto_0
    move-wide v4, v0

    .line 151
    new-instance v0, Lo/n$2;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lo/n$2;-><init>([Lo/MandatoryFields;JLo/InstrumentViewMapping;Lo/PaymentRequest;Lo/InstrumentsCompleteJsonAdapter;Lo/p;)V

    .line 159
    iget-object p1, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0}, Lo/onSensorChanged;->asInterface()Z

    move-result p1

    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 161
    iget-object p1, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    invoke-virtual {p1, v0}, Lo/n$2;->onPostMessage(Lo/n$2;)V

    :cond_2
    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lo/onSensorChanged;->newSession:Ljava/lang/Object;

    .line 164
    iput-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    .line 165
    iget p1, p0, Lo/onSensorChanged;->onTransact:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/onSensorChanged;->onTransact:I

    .line 166
    iget-object p1, v0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    return-object p1
.end method

.method public final onNavigationEvent()Lo/n$2;
    .locals 1

    .line 182
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    return-object v0
.end method

.method public final onNavigationEvent(JLo/GoogleReferrer;)Lo/p;
    .locals 1

    .line 124
    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0, p3}, Lo/onSensorChanged;->onMessageChannelReady(Lo/GoogleReferrer;)Lo/p;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lo/onSensorChanged;->onMessageChannelReady(Lo/n$2;J)Lo/p;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lo/onSensorChanged;->ICustomTabsCallback$Stub:Z

    .line 86
    invoke-direct {p0}, Lo/onSensorChanged;->onTransact()Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(J)V
    .locals 1

    .line 100
    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1, p2}, Lo/n$2;->extraCallback(J)V

    :cond_0
    return-void
.end method

.method public final onPostMessage()Z
    .locals 5

    .line 107
    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-boolean v0, v0, Lo/p;->asBinder:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    .line 109
    invoke-virtual {v0}, Lo/n$2;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    iget-object v0, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v0, v0, Lo/p;->extraCallback:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lo/onSensorChanged;->onTransact:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage(Lo/PaymentModeAdapter;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Lo/n$2;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 253
    :goto_0
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 255
    iput-object p1, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    .line 256
    :goto_1
    invoke-virtual {p1}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 257
    invoke-virtual {p1}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object p1

    .line 258
    iget-object v2, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    if-ne p1, v2, :cond_1

    .line 259
    iget-object v0, p0, Lo/onSensorChanged;->asInterface:Lo/n$2;

    iput-object v0, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    const/4 v0, 0x1

    .line 262
    :cond_1
    invoke-virtual {p1}, Lo/n$2;->asBinder()V

    .line 263
    iget v2, p0, Lo/onSensorChanged;->onTransact:I

    sub-int/2addr v2, v1

    iput v2, p0, Lo/onSensorChanged;->onTransact:I

    goto :goto_1

    .line 265
    :cond_2
    iget-object p1, p0, Lo/onSensorChanged;->asBinder:Lo/n$2;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lo/n$2;->onPostMessage(Lo/n$2;)V

    return v0
.end method

.method public final onRelationshipValidationResult()Lo/n$2;
    .locals 1

    .line 212
    iget-object v0, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 213
    iget-object v0, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    iput-object v0, p0, Lo/onSensorChanged;->onRelationshipValidationResult:Lo/n$2;

    return-object v0
.end method
