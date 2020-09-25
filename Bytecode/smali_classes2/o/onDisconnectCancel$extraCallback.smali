.class final Lo/onDisconnectCancel$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onDisconnectCancel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/sendUnlisten;

.field final asInterface:Lo/getSslCacheDirectory;

.field final extraCallback:Ljava/lang/Integer;

.field final onMessageChannelReady:Ljava/lang/Long;

.field final onNavigationEvent:Ljava/lang/Integer;

.field final onPostMessage:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/util/Map;ZII)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "timeout"

    .line 1225
    invoke-static {v1, v2}, Lo/unlisten;->asBinder(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 204
    iput-object v2, v0, Lo/onDisconnectCancel$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    const-string v2, "waitForReady"

    .line 1230
    invoke-static {v1, v2}, Lo/unlisten;->onRelationshipValidationResult(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 205
    iput-object v2, v0, Lo/onDisconnectCancel$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    const-string v2, "maxResponseMessageBytes"

    .line 1240
    invoke-static {v1, v2}, Lo/unlisten;->asInterface(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 207
    iput-object v2, v0, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2217
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v5, v2, v3

    const-string v3, "maxInboundMessageSize %s exceeds bounds"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const-string v2, "maxRequestMessageBytes"

    .line 2235
    invoke-static {v1, v2}, Lo/unlisten;->asInterface(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 214
    iput-object v2, v0, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 217
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget-object v5, v0, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    goto :goto_3

    .line 3217
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v5, v2, v3

    const-string v3, "maxOutboundMessageSize %s exceeds bounds"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    const-string v5, "retryPolicy"

    .line 4204
    invoke-static {v1, v5}, Lo/unlisten;->onNavigationEvent(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    const-string v6, "%s must not contain OK"

    const-string v7, "maxAttempts must be greater than 1: %s"

    const/4 v8, 0x2

    const-string v9, "maxAttempts cannot be empty"

    const-string v10, "maxAttempts"

    const-wide/16 v11, 0x0

    if-nez v5, :cond_7

    .line 224
    sget-object v5, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    goto/16 :goto_b

    .line 5111
    :cond_7
    invoke-static {v5, v10}, Lo/unlisten;->asInterface(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_23

    .line 4270
    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-lt v13, v8, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_22

    move/from16 v14, p3

    .line 4274
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    const-string v13, "initialBackoff"

    .line 7116
    invoke-static {v5, v13}, Lo/unlisten;->asBinder(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_21

    .line 4276
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    cmp-long v13, v16, v11

    if-lez v13, :cond_9

    const/4 v13, 0x1

    goto :goto_6

    :cond_9
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_20

    const-string v13, "maxBackoff"

    .line 9121
    invoke-static {v5, v13}, Lo/unlisten;->asBinder(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_1f

    .line 4284
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    cmp-long v13, v18, v11

    if-lez v13, :cond_a

    const/4 v13, 0x1

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_1e

    const-string v13, "backoffMultiplier"

    .line 11126
    invoke-static {v5, v13}, Lo/unlisten;->onMessageChannelReady(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_1d

    .line 4290
    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    const-wide/16 v13, 0x0

    cmpl-double v22, v20, v13

    if-lez v22, :cond_b

    const/4 v13, 0x1

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    .line 4296
    :goto_8
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    if-eqz v13, :cond_1c

    .line 4298
    new-instance v13, Lo/sendUnlisten;

    const-string v14, "retryableStatusCodes"

    .line 14130
    invoke-static {v5, v14}, Lo/unlisten;->onPostMessage(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_c

    const/4 v5, 0x0

    goto :goto_9

    .line 14134
    :cond_c
    invoke-static {v5}, Lo/onAuthRevoked;->onPostMessage(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    :goto_9
    if-eqz v5, :cond_d

    const/16 v22, 0x1

    goto :goto_a

    :cond_d
    const/16 v22, 0x0

    :goto_a
    if-eqz v22, :cond_1b

    .line 13167
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_1a

    .line 13168
    sget-object v2, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_19

    move-object v14, v13

    move-object/from16 v22, v5

    .line 4300
    invoke-direct/range {v14 .. v22}, Lo/sendUnlisten;-><init>(IJJDLjava/util/Set;)V

    move-object v5, v13

    .line 224
    :goto_b
    iput-object v5, v0, Lo/onDisconnectCancel$extraCallback;->ICustomTabsCallback:Lo/sendUnlisten;

    if-eqz p2, :cond_e

    const-string v2, "hedgingPolicy"

    .line 16209
    invoke-static {v1, v2}, Lo/unlisten;->onNavigationEvent(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    :goto_c
    if-nez v1, :cond_f

    .line 229
    sget-object v1, Lo/getSslCacheDirectory;->extraCallback:Lo/getSslCacheDirectory;

    goto :goto_11

    .line 17174
    :cond_f
    invoke-static {v1, v10}, Lo/unlisten;->asInterface(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 16305
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lt v2, v8, :cond_10

    const/4 v5, 0x1

    goto :goto_d

    :cond_10
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_17

    move/from16 v5, p4

    .line 16309
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v5, "hedgingDelay"

    .line 19179
    invoke-static {v1, v5}, Lo/unlisten;->asBinder(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 16311
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, v11

    if-ltz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_e

    :cond_11
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_15

    .line 16317
    new-instance v5, Lo/getSslCacheDirectory;

    const-string v9, "nonFatalStatusCodes"

    .line 22130
    invoke-static {v1, v9}, Lo/unlisten;->onPostMessage(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_f

    .line 22134
    :cond_12
    invoke-static {v1}, Lo/onAuthRevoked;->onPostMessage(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    :goto_f
    if-nez v1, :cond_13

    .line 21186
    const-class v1, Lo/emptyMap$onPostMessage;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_10

    .line 21188
    :cond_13
    sget-object v10, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v4

    if-eqz v10, :cond_14

    .line 16319
    :goto_10
    invoke-direct {v5, v2, v7, v8, v1}, Lo/getSslCacheDirectory;-><init>(IJLjava/util/Set;)V

    move-object v1, v5

    .line 229
    :goto_11
    iput-object v1, v0, Lo/onDisconnectCancel$extraCallback;->asInterface:Lo/getSslCacheDirectory;

    return-void

    .line 22183
    :cond_14
    new-instance v1, Lcom/google/common/base/VerifyException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v9, v2, v3

    invoke-static {v6, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20203
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "hedgingDelay must not be negative: %s"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19910
    :cond_16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "hedgingDelay cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18190
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v7, v4}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17910
    :cond_18
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16183
    :cond_19
    new-instance v1, Lcom/google/common/base/VerifyException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v14, v2, v3

    invoke-static {v6, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15183
    :cond_1a
    new-instance v1, Lcom/google/common/base/VerifyException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v14, v2, v3

    const-string v3, "%s must not be empty"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14183
    :cond_1b
    new-instance v1, Lcom/google/common/base/VerifyException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v14, v2, v3

    const-string v3, "%s is required in retry policy"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12217
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v14, v2, v3

    const-string v3, "backoffMultiplier must be greater than 0: %s"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11910
    :cond_1d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "backoffMultiplier cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10203
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "maxBackoff must be greater than 0: %s"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9910
    :cond_1f
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "maxBackoff cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8203
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "initialBackoffNanos must be greater than 0: %s"

    invoke-static {v3, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7910
    :cond_21
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "initialBackoff cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6190
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v7, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5910
    :cond_23
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 245
    instance-of v0, p1, Lo/onDisconnectCancel$extraCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 248
    :cond_0
    check-cast p1, Lo/onDisconnectCancel$extraCallback;

    .line 249
    iget-object v0, p0, Lo/onDisconnectCancel$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    iget-object v2, p1, Lo/onDisconnectCancel$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 24052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_d

    .line 249
    iget-object v0, p0, Lo/onDisconnectCancel$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    iget-object v2, p1, Lo/onDisconnectCancel$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    .line 25052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_d

    .line 250
    iget-object v0, p0, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    iget-object v2, p1, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_5

    .line 26052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_d

    .line 251
    iget-object v0, p0, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    iget-object v2, p1, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    if-eq v0, v2, :cond_8

    if-eqz v0, :cond_7

    .line 27052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_d

    .line 252
    iget-object v0, p0, Lo/onDisconnectCancel$extraCallback;->ICustomTabsCallback:Lo/sendUnlisten;

    iget-object v2, p1, Lo/onDisconnectCancel$extraCallback;->ICustomTabsCallback:Lo/sendUnlisten;

    if-eq v0, v2, :cond_a

    if-eqz v0, :cond_9

    .line 28052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_d

    .line 253
    iget-object v0, p0, Lo/onDisconnectCancel$extraCallback;->asInterface:Lo/getSslCacheDirectory;

    iget-object p1, p1, Lo/onDisconnectCancel$extraCallback;->asInterface:Lo/getSslCacheDirectory;

    if-eq v0, p1, :cond_c

    if-eqz v0, :cond_b

    .line 29052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_a

    :cond_b
    const/4 p1, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 p1, 0x1

    :goto_b
    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->ICustomTabsCallback:Lo/sendUnlisten;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->asInterface:Lo/getSslCacheDirectory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 23077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 29105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 259
    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    const-string v2, "timeoutNanos"

    .line 260
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    const-string v2, "waitForReady"

    .line 261
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    .line 262
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    .line 263
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->ICustomTabsCallback:Lo/sendUnlisten;

    const-string v2, "retryPolicy"

    .line 264
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onDisconnectCancel$extraCallback;->asInterface:Lo/getSslCacheDirectory;

    const-string v2, "hedgingPolicy"

    .line 265
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
