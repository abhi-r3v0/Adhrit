.class public final Lo/isFullyInitialized$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isFullyInitialized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/lang/String;

.field asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Ljava/lang/String;

.field onMessageChannelReady:I

.field onNavigationEvent:Ljava/lang/String;

.field onPostMessage:Ljava/lang/String;

.field final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 969
    iput-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 970
    iput-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, -0x1

    .line 972
    iput v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    .line 978
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;II)I
    .locals 10

    const/4 v0, -0x1

    :try_start_0
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1598
    invoke-static/range {v1 .. v9}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    .line 1599
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const p1, 0xffff

    if-gt p0, p1, :cond_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static extraCallback(Ljava/lang/String;II)I
    .locals 7

    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1534
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    if-lt v0, v5, :cond_1

    if-le v0, v3, :cond_2

    :cond_1
    if-lt v0, v4, :cond_6

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_6

    .line 1538
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_3

    if-le v0, v3, :cond_2

    :cond_3
    if-lt v0, v4, :cond_4

    if-le v0, v2, :cond_2

    :cond_4
    const/16 v6, 0x30

    if-lt v0, v6, :cond_5

    const/16 v6, 0x39

    if-le v0, v6, :cond_2

    :cond_5
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_2

    const/16 p0, 0x3a

    if-ne v0, p0, :cond_6

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method private onMessageChannelReady(Ljava/lang/String;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    if-ne v1, v2, :cond_0

    return-void

    .line 1452
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    const-string v5, ""

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 1460
    :cond_1
    iget-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1455
    :cond_2
    :goto_0
    iget-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1456
    iget-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_2
    move v8, v1

    if-ge v8, v2, :cond_d

    const-string v1, "/\\"

    move-object/from16 v3, p1

    .line 1465
    invoke-static {v3, v8, v2, v1}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const-string v10, " \"<>^`{}|/\\?#"

    move-object/from16 v7, p1

    move v9, v1

    .line 4476
    invoke-static/range {v7 .. v15}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    .line 4496
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "%2e"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v8, 0x1

    :goto_5
    if-nez v8, :cond_c

    const-string v8, ".."

    .line 4500
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "%2e."

    .line 4501
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, ".%2e"

    .line 4502
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "%2e%2e"

    .line 4503
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    if-eqz v4, :cond_a

    .line 4517
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4520
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 4521
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v4, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 4523
    :cond_9
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 4485
    :cond_a
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4486
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v4, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 4488
    :cond_b
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    if-eqz v16, :cond_c

    .line 4491
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    if-eqz v16, :cond_3

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1561
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static onPostMessage(Ljava/lang/String;II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_3

    .line 1575
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 1578
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    return p2
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;
    .locals 6

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 1009
    invoke-static/range {v0 .. v5}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;
    .locals 7

    if-eqz p1, :cond_2

    .line 1150
    iget-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    .line 1151
    :cond_0
    iget-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, p1

    .line 1152
    invoke-static/range {v1 .. v6}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 1151
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object p1, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p2

    .line 1154
    invoke-static/range {v0 .. v5}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1153
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1149
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback()Lo/isFullyInitialized;
    .locals 2

    .line 1254
    iget-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1256
    new-instance v0, Lo/isFullyInitialized;

    invoke-direct {v0, p0}, Lo/isFullyInitialized;-><init>(Lo/isFullyInitialized$onNavigationEvent;)V

    return-object v0

    .line 1255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;
    .locals 6

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 996
    invoke-static/range {v0 .. v5}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;
    .locals 7

    if-eqz p1, :cond_2

    .line 1162
    iget-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    .line 1163
    :cond_0
    iget-object v0, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"\'<>#&="

    move-object v1, p1

    .line 1164
    invoke-static/range {v1 .. v6}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 1163
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object p1, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    .line 1166
    invoke-static/range {v0 .. v5}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1165
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1161
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encodedName == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;
    .locals 0

    const/4 p1, 0x0

    .line 1135
    iput-object p1, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    return-object p0
.end method

.method final onNavigationEvent(Lo/isFullyInitialized;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    .line 1314
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x0

    invoke-static {v10, v11, v2}, Lo/generateEventsForType;->onPostMessage(Ljava/lang/String;II)I

    move-result v8

    .line 1315
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v10, v8, v2}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;II)I

    move-result v12

    .line 1318
    invoke-static {v10, v8, v12}, Lo/isFullyInitialized$onNavigationEvent;->extraCallback(Ljava/lang/String;II)I

    move-result v9

    const/4 v13, -0x1

    if-eq v9, v13, :cond_2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-string v5, "https:"

    move-object/from16 v2, p2

    move v4, v8

    .line 1320
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "https"

    .line 1321
    iput-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x6

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-string v5, "http:"

    move-object/from16 v2, p2

    move v4, v8

    .line 1323
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "http"

    .line 1324
    iput-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x5

    goto :goto_0

    .line 1327
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz v1, :cond_13

    .line 1331
    iget-object v2, v1, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    iput-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 1340
    :goto_0
    invoke-static {v10, v8, v12}, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x2

    const/16 v14, 0x3f

    const/16 v15, 0x23

    const/16 v16, 0x1

    if-ge v2, v3, :cond_6

    if-eqz v1, :cond_6

    .line 1341
    iget-object v3, v1, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 1413
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lo/isFullyInitialized;->extraCallback()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 1414
    invoke-virtual/range {p1 .. p1}, Lo/isFullyInitialized;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 1415
    iget-object v2, v1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    iput-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1416
    iget v2, v1, Lo/isFullyInitialized;->onPostMessage:I

    iput v2, v0, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    .line 1417
    iget-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1418
    iget-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lo/isFullyInitialized;->asInterface()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v8, v12, :cond_4

    .line 1419
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v15, :cond_f

    .line 1420
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lo/isFullyInitialized;->onTransact()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    const-string v18, " \"\'<>#"

    .line 4142
    invoke-static/range {v17 .. v22}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 4141
    invoke-static {v1}, Lo/isFullyInitialized;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 4143
    :goto_1
    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    goto/16 :goto_7

    :cond_6
    :goto_2
    add-int/2addr v8, v2

    move v2, v8

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_3
    const-string v1, "@/\\?#"

    .line 1354
    invoke-static {v10, v2, v12, v1}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_7

    .line 1356
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    :goto_4
    if-eq v1, v13, :cond_c

    if-eq v1, v15, :cond_c

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_c

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_c

    if-eq v1, v14, :cond_c

    const/16 v3, 0x40

    if-eq v1, v3, :cond_8

    goto :goto_3

    :cond_8
    const-string v8, "%40"

    if-nez v17, :cond_b

    const/16 v1, 0x3a

    .line 1362
    invoke-static {v10, v2, v9, v1}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;IIC)I

    move-result v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v7

    move v15, v7

    move/from16 v7, v19

    move-object v14, v8

    move/from16 v8, v20

    move v13, v9

    move-object/from16 v9, v21

    .line 1364
    invoke-static/range {v1 .. v9}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    if-eqz v18, :cond_9

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1369
    :cond_9
    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-eq v15, v13, :cond_a

    add-int/lit8 v2, v15, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v13

    .line 1372
    invoke-static/range {v1 .. v9}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/16 v17, 0x1

    :cond_a
    const/16 v18, 0x1

    goto :goto_5

    :cond_b
    move-object v14, v8

    move v13, v9

    .line 1378
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v9}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    :goto_5
    add-int/lit8 v2, v13, 0x1

    const/4 v13, -0x1

    const/16 v14, 0x3f

    const/16 v15, 0x23

    goto/16 :goto_3

    :cond_c
    move v13, v9

    .line 1391
    invoke-static {v10, v2, v13}, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x22

    if-ge v3, v13, :cond_e

    .line 2591
    invoke-static {v10, v2, v1, v11}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    .line 2592
    invoke-static {v5}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1393
    iput-object v5, v0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1394
    invoke-static {v10, v3, v13}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;II)I

    move-result v5

    iput v5, v0, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    goto :goto_6

    .line 1396
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid URL port: \""

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v10, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3591
    :cond_e
    invoke-static {v10, v2, v1, v11}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v3

    .line 3592
    invoke-static {v3}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1400
    iput-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1401
    iget-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-static {v3}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    .line 1403
    :goto_6
    iget-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    if-eqz v3, :cond_12

    move v8, v13

    :cond_f
    :goto_7
    const-string v1, "?#"

    .line 1425
    invoke-static {v10, v8, v12, v1}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 1426
    invoke-direct {v0, v10, v8, v1}, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;II)V

    if-ge v1, v12, :cond_10

    .line 1430
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_10

    const/16 v2, 0x23

    .line 1431
    invoke-static {v10, v1, v12, v2}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;IIC)I

    move-result v11

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\'<>#"

    move-object/from16 v1, p2

    move v3, v11

    .line 1432
    invoke-static/range {v1 .. v9}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/isFullyInitialized;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    move v1, v11

    :cond_10
    if-ge v1, v12, :cond_11

    .line 1438
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_11

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, ""

    move-object/from16 v1, p2

    move v3, v12

    .line 1439
    invoke-static/range {v1 .. v9}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    :cond_11
    return-object v0

    .line 1404
    :cond_12
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid URL host: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1333
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;
    .locals 0

    const/4 p1, 0x0

    .line 1216
    iput-object p1, p0, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 1263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :goto_0
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1269
    :cond_1
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1272
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    .line 1274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1277
    :cond_3
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    .line 1278
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    const/16 v1, 0x5b

    .line 1280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1281
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1284
    :cond_4
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    :cond_5
    :goto_1
    iget v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2039
    :cond_6
    iget v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    if-eq v1, v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-static {v1}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;)I

    move-result v1

    .line 1290
    :goto_2
    iget-object v3, p0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-static {v3}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_9

    .line 1291
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1296
    :cond_9
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-static {v0, v1}, Lo/isFullyInitialized;->onMessageChannelReady(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1298
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    if-eqz v1, :cond_a

    const/16 v1, 0x3f

    .line 1299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    invoke-static {v0, v1}, Lo/isFullyInitialized;->ICustomTabsCallback(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1303
    :cond_a
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/16 v1, 0x23

    .line 1304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1305
    iget-object v1, p0, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
