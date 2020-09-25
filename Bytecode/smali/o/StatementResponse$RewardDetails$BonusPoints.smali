.class public final Lo/StatementResponse$RewardDetails$BonusPoints;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:I

.field private static final asBinder:I

.field private static final extraCallback:I

.field private static final onMessageChannelReady:I

.field private static final onNavigationEvent:I

.field private static final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ytmp"

    .line 39
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/StatementResponse$RewardDetails$BonusPoints;->extraCallback:I

    const-string v0, "mshp"

    .line 40
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/StatementResponse$RewardDetails$BonusPoints;->onPostMessage:I

    const-string v0, "raw "

    .line 41
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/StatementResponse$RewardDetails$BonusPoints;->ICustomTabsCallback:I

    const-string v0, "dfl8"

    .line 42
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/StatementResponse$RewardDetails$BonusPoints;->onMessageChannelReady:I

    const-string v0, "mesh"

    .line 43
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/StatementResponse$RewardDetails$BonusPoints;->onNavigationEvent:I

    const-string v0, "proj"

    .line 44
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/StatementResponse$RewardDetails$BonusPoints;->asBinder:I

    return-void
.end method

.method private static ICustomTabsCallback(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;)Z
    .locals 2

    const/4 v0, 0x4

    .line 88
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 89
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 91
    sget p0, Lo/StatementResponse$RewardDetails$BonusPoints;->asBinder:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private static extraCallback(Lo/DreamAppGlideModule;)Lo/getRewardPoints$onPostMessage;
    .locals 22

    .line 165
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_0

    return-object v1

    .line 169
    :cond_0
    new-array v2, v0, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 171
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->updateVisuals()F

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v4

    const/16 v5, 0x7d00

    if-le v4, v5, :cond_2

    return-object v1

    :cond_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 179
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    int-to-double v9, v0

    mul-double v9, v9, v5

    .line 180
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 182
    new-instance v10, Lo/PublisherException;

    move-object/from16 v11, p0

    iget-object v12, v11, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-direct {v10, v12}, Lo/PublisherException;-><init>([B)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v11

    shl-int/lit8 v11, v11, 0x3

    invoke-virtual {v10, v11}, Lo/PublisherException;->onMessageChannelReady(I)V

    mul-int/lit8 v11, v4, 0x5

    .line 184
    new-array v11, v11, [F

    const/4 v12, 0x5

    new-array v13, v12, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v4, :cond_6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_5

    .line 189
    aget v16, v13, v3

    .line 190
    invoke-virtual {v10, v9}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lo/StatementResponse$RewardDetails$BonusPoints;->ICustomTabsCallback(I)I

    move-result v17

    add-int v12, v16, v17

    if-ge v12, v0, :cond_4

    if-gez v12, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v16, v15, 0x1

    .line 194
    aget v17, v2, v12

    aput v17, v11, v15

    .line 195
    aput v12, v13, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v15, v16

    const/4 v12, 0x5

    goto :goto_2

    :cond_4
    :goto_3
    return-object v1

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x5

    goto :goto_1

    .line 200
    :cond_6
    invoke-virtual {v10}, Lo/PublisherException;->ICustomTabsCallback()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    invoke-virtual {v10, v0}, Lo/PublisherException;->onMessageChannelReady(I)V

    const/16 v0, 0x20

    .line 202
    invoke-virtual {v10, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 203
    new-array v3, v2, [Lo/getRewardPoints$extraCallback;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_b

    const/16 v12, 0x8

    .line 205
    invoke-virtual {v10, v12}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v13

    .line 206
    invoke-virtual {v10, v12}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v12

    .line 207
    invoke-virtual {v10, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v14

    const v15, 0x1f400

    if-le v14, v15, :cond_7

    return-object v1

    :cond_7
    int-to-double v0, v4

    mul-double v0, v0, v5

    .line 211
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v14, 0x3

    .line 213
    new-array v1, v1, [F

    shl-int/lit8 v5, v14, 0x1

    .line 214
    new-array v5, v5, [F

    const/4 v6, 0x0

    const/16 v18, 0x0

    :goto_5
    if-ge v6, v14, :cond_a

    .line 216
    invoke-virtual {v10, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lo/StatementResponse$RewardDetails$BonusPoints;->ICustomTabsCallback(I)I

    move-result v19

    add-int v15, v18, v19

    if-ltz v15, :cond_9

    if-lt v15, v4, :cond_8

    goto :goto_6

    :cond_8
    mul-int/lit8 v18, v6, 0x3

    mul-int/lit8 v19, v15, 0x5

    .line 220
    aget v20, v11, v19

    aput v20, v1, v18

    add-int/lit8 v20, v18, 0x1

    add-int/lit8 v21, v19, 0x1

    .line 221
    aget v21, v11, v21

    aput v21, v1, v20

    add-int/lit8 v18, v18, 0x2

    add-int/lit8 v20, v19, 0x2

    .line 222
    aget v20, v11, v20

    aput v20, v1, v18

    shl-int/lit8 v18, v6, 0x1

    add-int/lit8 v20, v19, 0x3

    .line 223
    aget v20, v11, v20

    aput v20, v5, v18

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v19, v19, 0x4

    .line 224
    aget v19, v11, v19

    aput v19, v5, v18

    add-int/lit8 v6, v6, 0x1

    move/from16 v18, v15

    goto :goto_5

    :cond_9
    :goto_6
    const/4 v0, 0x0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    .line 226
    new-instance v6, Lo/getRewardPoints$extraCallback;

    invoke-direct {v6, v13, v1, v5, v12}, Lo/getRewardPoints$extraCallback;-><init>(I[F[FI)V

    aput-object v6, v3, v9

    add-int/lit8 v9, v9, 0x1

    move-object v1, v0

    const/16 v0, 0x20

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    goto :goto_4

    .line 228
    :cond_b
    new-instance v0, Lo/getRewardPoints$onPostMessage;

    invoke-direct {v0, v3}, Lo/getRewardPoints$onPostMessage;-><init>([Lo/getRewardPoints$extraCallback;)V

    return-object v0
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            ")",
            "Ljava/util/ArrayList<",
            "Lo/getRewardPoints$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x7

    .line 120
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 121
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 122
    sget v2, Lo/StatementResponse$RewardDetails$BonusPoints;->onMessageChannelReady:I

    if-ne v0, v2, :cond_2

    .line 123
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    .line 124
    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 126
    :try_start_0
    invoke-static {p0, v0, v2}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Lo/DreamAppGlideModule;Lo/DreamAppGlideModule;Ljava/util/zip/Inflater;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 130
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    return-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 131
    throw p0

    .line 133
    :cond_2
    sget v2, Lo/StatementResponse$RewardDetails$BonusPoints;->ICustomTabsCallback:I

    if-eq v0, v2, :cond_3

    return-object v1

    .line 136
    :cond_3
    :goto_0
    invoke-static {p0}, Lo/StatementResponse$RewardDetails$BonusPoints;->onNavigationEvent(Lo/DreamAppGlideModule;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady([BI)Lo/getRewardPoints;
    .locals 5

    .line 62
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0, p0}, Lo/DreamAppGlideModule;-><init>([B)V

    const/4 p0, 0x0

    .line 67
    :try_start_0
    invoke-static {v0}, Lo/StatementResponse$RewardDetails$BonusPoints;->ICustomTabsCallback(Lo/DreamAppGlideModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo/StatementResponse$RewardDetails$BonusPoints;->onPostMessage(Lo/DreamAppGlideModule;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/StatementResponse$RewardDetails$BonusPoints;->onMessageChannelReady(Lo/DreamAppGlideModule;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p0

    :goto_0
    if-nez v0, :cond_1

    return-object p0

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    return-object p0

    .line 78
    :cond_2
    new-instance p0, Lo/getRewardPoints;

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getRewardPoints$onPostMessage;

    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRewardPoints$onPostMessage;

    invoke-direct {p0, v1, v0, p1}, Lo/getRewardPoints;-><init>(Lo/getRewardPoints$onPostMessage;Lo/getRewardPoints$onPostMessage;I)V

    return-object p0

    .line 76
    :cond_3
    new-instance p0, Lo/getRewardPoints;

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRewardPoints$onPostMessage;

    invoke-direct {p0, v0, p1}, Lo/getRewardPoints;-><init>(Lo/getRewardPoints$onPostMessage;I)V

    return-object p0
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            ")",
            "Ljava/util/ArrayList<",
            "Lo/getRewardPoints$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    .line 143
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 145
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    if-le v3, v1, :cond_3

    if-le v3, v2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 150
    sget v5, Lo/StatementResponse$RewardDetails$BonusPoints;->onNavigationEvent:I

    if-ne v1, v5, :cond_2

    .line 151
    invoke-static {p0}, Lo/StatementResponse$RewardDetails$BonusPoints;->extraCallback(Lo/DreamAppGlideModule;)Lo/getRewardPoints$onPostMessage;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v4

    .line 155
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    invoke-virtual {p0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    return-object v0
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            ")",
            "Ljava/util/ArrayList<",
            "Lo/getRewardPoints$onPostMessage;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 95
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 96
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 97
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 99
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v3

    add-int/2addr v3, v0

    if-le v3, v0, :cond_3

    if-le v3, v1, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 105
    sget v2, Lo/StatementResponse$RewardDetails$BonusPoints;->extraCallback:I

    if-eq v0, v2, :cond_2

    sget v2, Lo/StatementResponse$RewardDetails$BonusPoints;->onPostMessage:I

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    move v0, v3

    goto :goto_0

    .line 106
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 107
    invoke-static {p0}, Lo/StatementResponse$RewardDetails$BonusPoints;->onMessageChannelReady(Lo/DreamAppGlideModule;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    return-object v2
.end method
