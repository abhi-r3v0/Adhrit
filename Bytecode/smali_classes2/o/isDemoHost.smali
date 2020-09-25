.class public Lo/isDemoHost;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 95
    instance-of v0, p0, Lo/isCacheableHost;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lo/getLocalRepo;

    if-nez v0, :cond_0

    const-string v0, "kotlin.collections.MutableIterable"

    .line 96
    invoke-static {p0, v0}, Lo/isDemoHost;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-static {p0}, Lo/isDemoHost;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 22
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be cast to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1026
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 2017
    const-class p0, Lo/isDemoHost;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo/access$3000;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    .line 1030
    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method private static ICustomTabsCallback$Stub(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 138
    :try_start_0
    check-cast p0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4017
    const-class v0, Lo/isDemoHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/access$3000;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    .line 3030
    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method private static asInterface(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 222
    :try_start_0
    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5017
    const-class v0, Lo/isDemoHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/access$3000;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    .line 4030
    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method public static extraCallback(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 123
    instance-of v0, p0, Lo/isCacheableHost;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lo/resumeInternal;

    if-nez v0, :cond_0

    const-string v0, "kotlin.collections.MutableCollection"

    .line 124
    invoke-static {p0, v0}, Lo/isDemoHost;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {p0}, Lo/isDemoHost;->ICustomTabsCallback$Stub(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 110
    :try_start_0
    check-cast p0, Ljava/lang/Iterable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3017
    const-class v0, Lo/isDemoHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/access$3000;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    .line 2030
    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method public static onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p0, :cond_19

    .line 5336
    instance-of v0, p0, Lo/onTokenChange;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 6258
    instance-of v0, p0, Lo/visitTree;

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 6259
    move-object v0, p0

    check-cast v0, Lo/visitTree;

    invoke-interface {v0}, Lo/visitTree;->asBinder()I

    move-result v0

    goto/16 :goto_0

    .line 6261
    :cond_0
    instance-of v0, p0, Lo/getServerTime;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 6264
    :cond_1
    instance-of v0, p0, Lo/onDisconnectSetValue;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6267
    :cond_2
    instance-of v0, p0, Lo/nextTransactionOrder;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 6270
    :cond_3
    instance-of v0, p0, Lo/rerunTransactionQueue;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 6273
    :cond_4
    instance-of v0, p0, Lo/rerunTransactions;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto/16 :goto_0

    .line 6276
    :cond_5
    instance-of v0, p0, Lo/getAncestorTransactionNode;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto/16 :goto_0

    .line 6279
    :cond_6
    instance-of v0, p0, Lo/buildTransactionQueue;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_0

    .line 6282
    :cond_7
    instance-of v0, p0, Lo/aggregateTransactionQueues;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto/16 :goto_0

    .line 6285
    :cond_8
    instance-of v0, p0, Lo/getServerSyncTree;

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto/16 :goto_0

    .line 6288
    :cond_9
    instance-of v0, p0, Lo/fromErrorCode;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    goto/16 :goto_0

    .line 6291
    :cond_a
    instance-of v0, p0, Lo/onDisconnectUpdate;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    .line 6294
    :cond_b
    instance-of v0, p0, Lo/updateInfo;

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    .line 6297
    :cond_c
    instance-of v0, p0, Lo/getConnection;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    .line 6300
    :cond_d
    instance-of v0, p0, Lo/addEventCallback;

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    goto :goto_0

    .line 6303
    :cond_e
    instance-of v0, p0, Lo/runOnDisconnectEvents;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    .line 6306
    :cond_f
    instance-of v0, p0, Lo/startTransaction;

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    goto :goto_0

    .line 6309
    :cond_10
    instance-of v0, p0, Lo/getNextWriteId;

    if-eqz v0, :cond_11

    const/16 v0, 0x10

    goto :goto_0

    .line 6312
    :cond_11
    instance-of v0, p0, Lo/getLatestState;

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    goto :goto_0

    .line 6315
    :cond_12
    instance-of v0, p0, Lo/warnIfWriteFailed;

    if-eqz v0, :cond_13

    const/16 v0, 0x12

    goto :goto_0

    .line 6318
    :cond_13
    instance-of v0, p0, Lo/sendTransactionQueue;

    if-eqz v0, :cond_14

    const/16 v0, 0x13

    goto :goto_0

    .line 6321
    :cond_14
    instance-of v0, p0, Lo/sendReadyTransactions;

    if-eqz v0, :cond_15

    const/16 v0, 0x14

    goto :goto_0

    .line 6324
    :cond_15
    instance-of v0, p0, Lo/pruneCompletedTransactions;

    if-eqz v0, :cond_16

    const/16 v0, 0x15

    goto :goto_0

    .line 6327
    :cond_16
    instance-of v0, p0, Lo/sendAllReadyTransactions;

    if-eqz v0, :cond_17

    const/16 v0, 0x16

    goto :goto_0

    :cond_17
    const/4 v0, -0x1

    :goto_0
    if-ne v0, v3, :cond_18

    goto :goto_1

    :cond_18
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_19

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kotlin.jvm.functions.Function2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/isDemoHost;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 207
    instance-of v0, p0, Lo/isCacheableHost;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lo/createLocalRepo;

    if-nez v0, :cond_0

    const-string v0, "kotlin.collections.MutableMap"

    .line 208
    invoke-static {p0, v0}, Lo/isDemoHost;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-static {p0}, Lo/isDemoHost;->asInterface(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
