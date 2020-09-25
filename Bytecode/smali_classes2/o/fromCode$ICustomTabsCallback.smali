.class public final Lo/fromCode$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fromCode$ICustomTabsCallback$onNavigationEvent;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/lang/String;

.field asBinder:Ljava/lang/String;

.field final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Ljava/lang/String;

.field onMessageChannelReady:Ljava/lang/String;

.field onNavigationEvent:Ljava/lang/String;

.field onPostMessage:I

.field onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 649
    iput-object v0, p0, Lo/fromCode$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 650
    iput-object v0, p0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, -0x1

    .line 652
    iput v1, p0, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    .line 653
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    .line 658
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 1162
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private ICustomTabsCallback(Ljava/lang/String;II)V
    .locals 11

    if-ne p2, p3, :cond_0

    return-void

    .line 1081
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1089
    :cond_1
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1084
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1085
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p2, p2, 0x1

    :cond_3
    :goto_2
    move v5, p2

    if-ge v5, p3, :cond_d

    const-string p2, "/\\"

    .line 1094
    invoke-static {p1, v5, p3, p2}, Lo/fromCode;->onPostMessage(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-ge p2, p3, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v7, " \"<>^`{}|/\\?#"

    move-object v4, p1

    move v6, p2

    .line 2105
    invoke-static/range {v4 .. v10}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    .line 2125
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "%2e"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_c

    const-string v5, ".."

    .line 2129
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "%2e."

    .line 2130
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, ".%2e"

    .line 2131
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "%2e%2e"

    .line 2132
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_a

    .line 2146
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2149
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2150
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2152
    :cond_9
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2114
    :cond_a
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2115
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2117
    :cond_b
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    if-eqz v1, :cond_c

    .line 2120
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method private static extraCallback(Ljava/lang/String;II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    .line 1182
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_1
    return p1
.end method

.method private static extraCallback(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    :goto_0
    const/4 v11, 0x0

    if-ge v7, v1, :cond_14

    if-ne v8, v2, :cond_0

    return-object v11

    :cond_0
    add-int/lit8 v12, v7, 0x2

    const/4 v13, 0x4

    if-gt v12, v1, :cond_3

    const/4 v14, 0x2

    const-string v15, "::"

    .line 1285
    invoke-virtual {v0, v7, v15, v6, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eq v9, v4, :cond_1

    return-object v11

    :cond_1
    add-int/lit8 v8, v8, 0x2

    move v9, v8

    if-ne v12, v1, :cond_2

    goto/16 :goto_9

    :cond_2
    move v10, v12

    goto/16 :goto_6

    :cond_3
    if-eqz v8, :cond_10

    const-string v12, ":"

    .line 1294
    invoke-virtual {v0, v7, v12, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_4
    const-string v12, "."

    .line 1296
    invoke-virtual {v0, v7, v12, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_f

    add-int/lit8 v7, v8, -0x2

    move v12, v7

    :goto_1
    if-ge v10, v1, :cond_c

    if-ne v12, v2, :cond_5

    goto :goto_3

    :cond_5
    if-eq v12, v7, :cond_7

    .line 2355
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x1

    :cond_7
    move v14, v10

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v1, :cond_a

    .line 2363
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_a

    const/16 v2, 0x39

    if-gt v5, v2, :cond_a

    if-nez v15, :cond_8

    if-eq v10, v14, :cond_8

    goto :goto_3

    :cond_8
    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v5

    sub-int/2addr v15, v6

    const/16 v2, 0xff

    if-le v15, v2, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_a
    sub-int v2, v14, v10

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v12, 0x1

    int-to-byte v5, v15

    .line 2373
    aput-byte v5, v3, v12

    move v12, v2

    move v10, v14

    const/16 v2, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_c
    add-int/2addr v7, v13

    if-eq v12, v7, :cond_d

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_d
    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_e

    return-object v11

    :cond_e
    add-int/lit8 v8, v8, 0x2

    goto :goto_9

    :cond_f
    return-object v11

    :cond_10
    :goto_5
    move v10, v7

    :goto_6
    move v7, v10

    const/4 v2, 0x0

    :goto_7
    if-ge v7, v1, :cond_11

    .line 1310
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1311
    invoke-static {v5}, Lo/fromCode;->extraCallback(C)I

    move-result v5

    if-eq v5, v4, :cond_11

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_11
    sub-int v5, v7, v10

    if-eqz v5, :cond_13

    if-le v5, v13, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v5, v8, 0x1

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    .line 1319
    aput-byte v6, v3, v8

    add-int/lit8 v8, v5, 0x1

    int-to-byte v2, v2

    .line 1320
    aput-byte v2, v3, v5

    const/16 v2, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_13
    :goto_8
    return-object v11

    :cond_14
    :goto_9
    const/16 v0, 0x10

    if-eq v8, v0, :cond_16

    if-ne v9, v4, :cond_15

    return-object v11

    :cond_15
    sub-int v1, v8, v9

    rsub-int/lit8 v2, v1, 0x10

    .line 1334
    invoke-static {v3, v9, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v8, 0x10

    add-int/2addr v2, v9

    const/4 v0, 0x0

    .line 1335
    invoke-static {v3, v9, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1339
    :cond_16
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1341
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_3

    .line 1244
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

    .line 1247
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

.method private static onMessageChannelReady([B)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1425
    :goto_0
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v2, v4, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_0

    .line 1427
    aget-byte v6, p0, v4

    if-nez v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_0
    sub-int v5, v4, v2

    if-le v5, v3, :cond_1

    move v1, v2

    move v3, v5

    :cond_1
    add-int/lit8 v2, v4, 0x2

    goto :goto_0

    .line 1438
    :cond_2
    new-instance v2, Lo/updatePriority;

    invoke-direct {v2}, Lo/updatePriority;-><init>()V

    .line 1439
    :cond_3
    :goto_2
    array-length v4, p0

    if-ge v0, v4, :cond_6

    const/16 v4, 0x3a

    if-ne v0, v1, :cond_4

    .line 1441
    invoke-virtual {v2, v4}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    add-int/2addr v0, v3

    if-ne v0, v5, :cond_3

    .line 1443
    invoke-virtual {v2, v4}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    .line 1445
    invoke-virtual {v2, v4}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 1446
    :cond_5
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    int-to-long v6, v4

    .line 1447
    invoke-virtual {v2, v6, v7}, Lo/updatePriority;->onTransact(J)Lo/updatePriority;

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 1451
    :cond_6
    invoke-virtual {v2}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;II)I
    .locals 7

    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1203
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

    .line 1207
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

.method private static onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1388
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1389
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2403
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 2404
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x1f

    if-le v3, v5, :cond_3

    const/16 v5, 0x7f

    if-lt v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, " #%/:?@[\\]"

    .line 2414
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    return-object p0

    :catch_0
    return-object v0
.end method

.method private static onPostMessage(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1230
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

.method private static onRelationshipValidationResult(Ljava/lang/String;II)I
    .locals 8

    const/4 v0, -0x1

    :try_start_0
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1457
    invoke-static/range {v1 .. v7}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p0

    .line 1458
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

.method private static onTransact(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1260
    invoke-static {p0, p1, p2, v0}, Lo/fromCode;->extraCallback(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "["

    .line 1263
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lo/fromCode$ICustomTabsCallback;->extraCallback(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1266
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 1267
    array-length p1, p0

    const/16 p2, 0x10

    if-ne p1, p2, :cond_1

    invoke-static {p0}, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1268
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1271
    :cond_2
    invoke-static {p0}, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/fromCode;Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback$onNavigationEvent;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 954
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8, v1}, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v7

    .line 955
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8, v7, v1}, Lo/fromCode$ICustomTabsCallback;->extraCallback(Ljava/lang/String;II)I

    move-result v9

    .line 958
    invoke-static {v8, v7, v9}, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;II)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    const-string v4, "https:"

    move-object/from16 v1, p2

    move v3, v7

    .line 960
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https"

    .line 961
    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x6

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v4, "http:"

    move-object/from16 v1, p2

    move v3, v7

    .line 963
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http"

    .line 964
    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x5

    goto :goto_0

    .line 967
    :cond_1
    sget-object v1, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    return-object v1

    :cond_2
    if-eqz p1, :cond_13

    .line 970
    invoke-static/range {p1 .. p1}, Lo/fromCode;->extraCallback(Lo/fromCode;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 978
    :goto_0
    invoke-static {v8, v7, v9}, Lo/fromCode$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x2

    const/16 v11, 0x3f

    const/16 v12, 0x23

    const/4 v13, 0x1

    if-ge v1, v2, :cond_6

    if-eqz p1, :cond_6

    .line 979
    invoke-static/range {p1 .. p1}, Lo/fromCode;->extraCallback(Lo/fromCode;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 1042
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lo/fromCode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 1043
    invoke-virtual/range {p1 .. p1}, Lo/fromCode;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 1044
    invoke-static/range {p1 .. p1}, Lo/fromCode;->ICustomTabsCallback(Lo/fromCode;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1045
    invoke-static/range {p1 .. p1}, Lo/fromCode;->onNavigationEvent(Lo/fromCode;)I

    move-result v1

    iput v1, v0, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    .line 1046
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1047
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lo/fromCode;->asInterface()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v7, v9, :cond_4

    .line 1048
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_10

    .line 1049
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lo/fromCode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, " \"\'<>#"

    .line 1785
    invoke-static {v1, v2, v13, v13}, Lo/fromCode;->extraCallback(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1784
    invoke-static {v1}, Lo/fromCode;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    goto/16 :goto_6

    :cond_6
    :goto_2
    add-int/2addr v7, v1

    const/4 v1, 0x0

    move v2, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    const-string v1, "@/\\?#"

    .line 992
    invoke-static {v8, v2, v9, v1}, Lo/fromCode;->onPostMessage(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_7

    .line 994
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    :goto_4
    if-eq v1, v10, :cond_c

    if-eq v1, v12, :cond_c

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_c

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_c

    if-eq v1, v11, :cond_c

    const/16 v3, 0x40

    if-eq v1, v3, :cond_8

    goto :goto_3

    :cond_8
    const-string v6, "%40"

    if-nez v14, :cond_b

    const-string v1, ":"

    .line 1000
    invoke-static {v8, v2, v7, v1}, Lo/fromCode;->onPostMessage(Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v5

    move v13, v5

    move/from16 v5, v16

    move-object v12, v6

    move/from16 v6, v17

    move v11, v7

    move/from16 v7, v18

    .line 1002
    invoke-static/range {v1 .. v7}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v15, :cond_9

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lo/fromCode$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    if-eq v13, v11, :cond_a

    add-int/lit8 v2, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v11

    .line 1009
    invoke-static/range {v1 .. v7}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v14, 0x1

    :cond_a
    const/4 v15, 0x1

    goto :goto_5

    :cond_b
    move-object v12, v6

    move v11, v7

    .line 1014
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v11

    invoke-static/range {v1 .. v7}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    :goto_5
    add-int/lit8 v2, v11, 0x1

    const/16 v11, 0x3f

    const/16 v12, 0x23

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_c
    move v11, v7

    .line 1026
    invoke-static {v8, v2, v11}, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v11, :cond_d

    .line 1028
    invoke-static {v8, v2, v1}, Lo/fromCode$ICustomTabsCallback;->onTransact(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1029
    invoke-static {v8, v3, v11}, Lo/fromCode$ICustomTabsCallback;->onRelationshipValidationResult(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    if-ne v1, v10, :cond_e

    .line 1030
    sget-object v1, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    return-object v1

    .line 1032
    :cond_d
    invoke-static {v8, v2, v1}, Lo/fromCode$ICustomTabsCallback;->onTransact(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1033
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v1}, Lo/fromCode;->onNavigationEvent(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    .line 1035
    :cond_e
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_f

    sget-object v1, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->extraCallback:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    return-object v1

    :cond_f
    move v7, v11

    :cond_10
    :goto_6
    const-string v1, "?#"

    .line 1054
    invoke-static {v8, v7, v9, v1}, Lo/fromCode;->onPostMessage(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 1055
    invoke-direct {v0, v8, v7, v1}, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;II)V

    if-ge v1, v9, :cond_11

    .line 1059
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_11

    const-string v2, "#"

    .line 1060
    invoke-static {v8, v1, v9, v2}, Lo/fromCode;->onPostMessage(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v4, " \"\'<>#"

    move-object/from16 v1, p2

    move v3, v10

    .line 1061
    invoke-static/range {v1 .. v7}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/fromCode;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    move v1, v10

    :cond_11
    if-ge v1, v9, :cond_12

    .line 1067
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    add-int/2addr v2, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    move-object/from16 v1, p2

    move v3, v9

    .line 1068
    invoke-static/range {v1 .. v7}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    .line 1072
    :cond_12
    sget-object v1, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    return-object v1

    .line 972
    :cond_13
    sget-object v1, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    return-object v1
.end method

.method public final ICustomTabsCallback()Lo/fromCode;
    .locals 2

    .line 896
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 898
    new-instance v0, Lo/fromCode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/fromCode;-><init>(Lo/fromCode$ICustomTabsCallback;B)V

    return-object v0

    .line 897
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(I)Lo/fromCode$ICustomTabsCallback;
    .locals 2

    if-lez p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 712
    iput p1, p0, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    return-object p0

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unexpected port: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lo/fromCode$ICustomTabsCallback;->onTransact(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iput-object v0, p0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    return-object p0

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unexpected host: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback;
    .locals 2

    const-string v0, "http"

    .line 664
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    iput-object v0, p0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "https"

    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iput-object v0, p0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 669
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unexpected scheme: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 907
    :cond_0
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 909
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 910
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    .line 912
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 915
    :cond_2
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    const/16 v1, 0x5b

    .line 917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 919
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 921
    :cond_3
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    :goto_0
    iget v1, p0, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    if-eq v1, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v1}, Lo/fromCode;->onNavigationEvent(Ljava/lang/String;)I

    move-result v1

    .line 925
    :goto_1
    iget-object v3, p0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v3}, Lo/fromCode;->onNavigationEvent(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_5

    .line 926
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 930
    :cond_5
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-static {v0, v1}, Lo/fromCode;->onMessageChannelReady(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 932
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    if-eqz v1, :cond_6

    const/16 v1, 0x3f

    .line 933
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    invoke-static {v0, v1}, Lo/fromCode;->onNavigationEvent(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 937
    :cond_6
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    if-eqz v1, :cond_7

    const/16 v1, 0x23

    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 939
    iget-object v1, p0, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
