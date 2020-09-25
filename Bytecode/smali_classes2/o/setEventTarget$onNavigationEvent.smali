.class final Lo/setEventTarget$onNavigationEvent;
.super Lo/getFront;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEventTarget;->extraCallback(Ljava/util/Iterator;IIZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getFront;",
        "Lo/nextTransactionOrder<",
        "Lo/applyTaggedQueryOverwrite<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub:I

.field private synthetic ICustomTabsCallback$Stub$Proxy:Z

.field private asBinder:I

.field private synthetic asInterface:Ljava/util/Iterator;

.field private extraCallback:I

.field private synthetic newSession:Z

.field private onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:Lo/applyTaggedQueryOverwrite;

.field private onPostMessage:Ljava/lang/Object;

.field private synthetic onRelationshipValidationResult:I

.field private synthetic onTransact:I


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLo/setSessionPersistenceKey;)V
    .locals 0

    iput p1, p0, Lo/setEventTarget$onNavigationEvent;->onRelationshipValidationResult:I

    iput p2, p0, Lo/setEventTarget$onNavigationEvent;->onTransact:I

    iput-object p3, p0, Lo/setEventTarget$onNavigationEvent;->asInterface:Ljava/util/Iterator;

    iput-boolean p4, p0, Lo/setEventTarget$onNavigationEvent;->newSession:Z

    iput-boolean p5, p0, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-direct {p0, p6}, Lo/getFront;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1054
    sget-object v2, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 24
    iget v3, v0, Lo/setEventTarget$onNavigationEvent;->asBinder:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_a

    if-eq v3, v9, :cond_8

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    .line 8126
    instance-of v2, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v2, :cond_0

    goto/16 :goto_d

    :cond_0
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_2
    iget-object v3, v0, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v3, Lo/lambda$wrapAuthTokenProvider$0;

    iget v6, v0, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v7, v0, Lo/setEventTarget$onNavigationEvent;->extraCallback:I

    iget-object v8, v0, Lo/setEventTarget$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    check-cast v8, Lo/applyTaggedQueryOverwrite;

    .line 7126
    instance-of v10, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v10, :cond_3

    move-object v1, v0

    goto/16 :goto_c

    :cond_3
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 24
    :cond_4
    iget-object v3, v0, Lo/setEventTarget$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v7, v0, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v7, Lo/lambda$wrapAuthTokenProvider$0;

    iget v10, v0, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v11, v0, Lo/setEventTarget$onNavigationEvent;->extraCallback:I

    iget-object v12, v0, Lo/setEventTarget$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    check-cast v12, Lo/applyTaggedQueryOverwrite;

    .line 6126
    instance-of v13, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v13, :cond_5

    move-object v1, v0

    goto/16 :goto_9

    :cond_5
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 3126
    :cond_6
    instance-of v2, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v2, :cond_7

    goto/16 :goto_d

    :cond_7
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 24
    :cond_8
    iget-object v3, v0, Lo/setEventTarget$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, v0, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget v5, v0, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v6, v0, Lo/setEventTarget$onNavigationEvent;->extraCallback:I

    iget-object v8, v0, Lo/setEventTarget$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    check-cast v8, Lo/applyTaggedQueryOverwrite;

    .line 2126
    instance-of v10, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v10, :cond_9

    move-object v10, v0

    goto :goto_1

    :cond_9
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 1126
    :cond_a
    instance-of v3, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v3, :cond_21

    .line 24
    iget-object v1, v0, Lo/setEventTarget$onNavigationEvent;->onNavigationEvent:Lo/applyTaggedQueryOverwrite;

    .line 25
    iget v3, v0, Lo/setEventTarget$onNavigationEvent;->onRelationshipValidationResult:I

    const/16 v10, 0x400

    if-le v3, v10, :cond_b

    const/16 v3, 0x400

    .line 26
    :cond_b
    iget v10, v0, Lo/setEventTarget$onNavigationEvent;->onTransact:I

    iget v11, v0, Lo/setEventTarget$onNavigationEvent;->onRelationshipValidationResult:I

    sub-int/2addr v10, v11

    if-ltz v10, :cond_12

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    iget-object v5, v0, Lo/setEventTarget$onNavigationEvent;->asInterface:Ljava/util/Iterator;

    move v6, v3

    move-object v3, v5

    move v5, v10

    move-object v10, v0

    :cond_c
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    if-lez v8, :cond_d

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 32
    :cond_d
    invoke-virtual {v4, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    iget v12, v10, Lo/setEventTarget$onNavigationEvent;->onRelationshipValidationResult:I

    if-ne v11, v12, :cond_c

    .line 34
    iput-object v1, v10, Lo/setEventTarget$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    iput v6, v10, Lo/setEventTarget$onNavigationEvent;->extraCallback:I

    iput v5, v10, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iput-object v4, v10, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object v3, v10, Lo/setEventTarget$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Object;

    iput v9, v10, Lo/setEventTarget$onNavigationEvent;->asBinder:I

    invoke-virtual {v1, v4, v10}, Lo/applyTaggedQueryOverwrite;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_e

    return-object v2

    :cond_e
    move-object v8, v1

    .line 35
    :goto_1
    iget-boolean v1, v10, Lo/setEventTarget$onNavigationEvent;->newSession:Z

    if-eqz v1, :cond_f

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->clear()V

    goto :goto_2

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    iget v4, v10, Lo/setEventTarget$onNavigationEvent;->onRelationshipValidationResult:I

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v1

    :goto_2
    move-object v1, v8

    move v8, v5

    goto :goto_0

    .line 39
    :cond_10
    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v9

    if-eqz v3, :cond_20

    .line 40
    iget-boolean v3, v10, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v3, :cond_11

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    iget v8, v10, Lo/setEventTarget$onNavigationEvent;->onRelationshipValidationResult:I

    if-ne v3, v8, :cond_20

    :cond_11
    iput-object v1, v10, Lo/setEventTarget$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    iput v6, v10, Lo/setEventTarget$onNavigationEvent;->extraCallback:I

    iput v5, v10, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iput-object v4, v10, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    iput v7, v10, Lo/setEventTarget$onNavigationEvent;->asBinder:I

    invoke-virtual {v1, v4, v10}, Lo/applyTaggedQueryOverwrite;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_20

    return-object v2

    .line 43
    :cond_12
    new-instance v7, Lo/lambda$wrapAuthTokenProvider$0;

    invoke-direct {v7, v3}, Lo/lambda$wrapAuthTokenProvider$0;-><init>(I)V

    .line 44
    iget-object v11, v0, Lo/setEventTarget$onNavigationEvent;->asInterface:Ljava/util/Iterator;

    move-object v12, v1

    move-object v1, v0

    move-object/from16 v17, v11

    move v11, v3

    move-object/from16 v3, v17

    :cond_13
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 4109
    invoke-virtual {v7}, Lo/rootWrite;->size()I

    move-result v14

    iget v15, v7, Lo/lambda$wrapAuthTokenProvider$0;->onPostMessage:I

    if-ne v14, v15, :cond_14

    const/4 v14, 0x1

    goto :goto_4

    :cond_14
    const/4 v14, 0x0

    :goto_4
    if-nez v14, :cond_1b

    .line 3176
    iget-object v14, v7, Lo/lambda$wrapAuthTokenProvider$0;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v15, v7, Lo/lambda$wrapAuthTokenProvider$0;->extraCallback:I

    invoke-virtual {v7}, Lo/rootWrite;->size()I

    move-result v16

    add-int v15, v15, v16

    .line 3209
    invoke-static {v7}, Lo/lambda$wrapAuthTokenProvider$0;->onNavigationEvent(Lo/lambda$wrapAuthTokenProvider$0;)I

    move-result v16

    rem-int v15, v15, v16

    aput-object v13, v14, v15

    .line 3177
    invoke-virtual {v7}, Lo/rootWrite;->size()I

    move-result v13

    add-int/2addr v13, v9

    iput v13, v7, Lo/lambda$wrapAuthTokenProvider$0;->onNavigationEvent:I

    .line 5109
    invoke-virtual {v7}, Lo/rootWrite;->size()I

    move-result v13

    iget v14, v7, Lo/lambda$wrapAuthTokenProvider$0;->onPostMessage:I

    if-ne v13, v14, :cond_15

    const/4 v13, 0x1

    goto :goto_5

    :cond_15
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_13

    .line 47
    invoke-virtual {v7}, Lo/rootWrite;->size()I

    move-result v13

    iget v14, v1, Lo/setEventTarget$onNavigationEvent;->onRelationshipValidationResult:I

    if-ge v13, v14, :cond_18

    .line 5163
    iget v13, v7, Lo/lambda$wrapAuthTokenProvider$0;->onPostMessage:I

    iget v15, v7, Lo/lambda$wrapAuthTokenProvider$0;->onPostMessage:I

    shr-int/2addr v15, v9

    add-int/2addr v13, v15

    add-int/2addr v13, v9

    if-le v13, v14, :cond_16

    goto :goto_6

    :cond_16
    move v14, v13

    .line 5164
    :goto_6
    iget v13, v7, Lo/lambda$wrapAuthTokenProvider$0;->extraCallback:I

    if-nez v13, :cond_17

    iget-object v13, v7, Lo/lambda$wrapAuthTokenProvider$0;->ICustomTabsCallback:[Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    const-string v14, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v13, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_17
    new-array v13, v14, [Ljava/lang/Object;

    invoke-virtual {v7, v13}, Lo/rootWrite;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .line 5165
    :goto_7
    new-instance v14, Lo/lambda$wrapAuthTokenProvider$0;

    invoke-virtual {v7}, Lo/rootWrite;->size()I

    move-result v7

    invoke-direct {v14, v13, v7}, Lo/lambda$wrapAuthTokenProvider$0;-><init>([Ljava/lang/Object;I)V

    move-object v7, v14

    goto :goto_3

    .line 49
    :cond_18
    iget-boolean v13, v1, Lo/setEventTarget$onNavigationEvent;->newSession:Z

    if-eqz v13, :cond_19

    move-object v13, v7

    check-cast v13, Ljava/util/List;

    goto :goto_8

    :cond_19
    new-instance v13, Ljava/util/ArrayList;

    move-object v14, v7

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v13, Ljava/util/List;

    :goto_8
    iput-object v12, v1, Lo/setEventTarget$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    iput v11, v1, Lo/setEventTarget$onNavigationEvent;->extraCallback:I

    iput v10, v1, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iput-object v7, v1, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object v3, v1, Lo/setEventTarget$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Object;

    iput v6, v1, Lo/setEventTarget$onNavigationEvent;->asBinder:I

    invoke-virtual {v12, v13, v1}, Lo/applyTaggedQueryOverwrite;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_1a

    return-object v2

    .line 50
    :cond_1a
    :goto_9
    iget v13, v1, Lo/setEventTarget$onNavigationEvent;->onTransact:I

    invoke-virtual {v7, v13}, Lo/lambda$wrapAuthTokenProvider$0;->onMessageChannelReady(I)V

    goto/16 :goto_3

    .line 3173
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ring buffer is full"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 53
    :cond_1c
    iget-boolean v3, v1, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v3, :cond_20

    move-object v3, v7

    move v6, v10

    move v7, v11

    move-object v8, v12

    .line 54
    :goto_a
    invoke-virtual {v3}, Lo/rootWrite;->size()I

    move-result v10

    iget v11, v1, Lo/setEventTarget$onNavigationEvent;->onTransact:I

    if-le v10, v11, :cond_1f

    .line 55
    iget-boolean v10, v1, Lo/setEventTarget$onNavigationEvent;->newSession:Z

    if-eqz v10, :cond_1d

    move-object v10, v3

    check-cast v10, Ljava/util/List;

    goto :goto_b

    :cond_1d
    new-instance v10, Ljava/util/ArrayList;

    move-object v11, v3

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v10, Ljava/util/List;

    :goto_b
    iput-object v8, v1, Lo/setEventTarget$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    iput v7, v1, Lo/setEventTarget$onNavigationEvent;->extraCallback:I

    iput v6, v1, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iput-object v3, v1, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    iput v5, v1, Lo/setEventTarget$onNavigationEvent;->asBinder:I

    invoke-virtual {v8, v10, v1}, Lo/applyTaggedQueryOverwrite;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_1e

    return-object v2

    .line 56
    :cond_1e
    :goto_c
    iget v10, v1, Lo/setEventTarget$onNavigationEvent;->onTransact:I

    invoke-virtual {v3, v10}, Lo/lambda$wrapAuthTokenProvider$0;->onMessageChannelReady(I)V

    goto :goto_a

    .line 58
    :cond_1f
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v9

    if-eqz v5, :cond_20

    iput-object v8, v1, Lo/setEventTarget$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    iput v7, v1, Lo/setEventTarget$onNavigationEvent;->extraCallback:I

    iput v6, v1, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iput-object v3, v1, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    iput v4, v1, Lo/setEventTarget$onNavigationEvent;->asBinder:I

    invoke-virtual {v8, v3, v1}, Lo/applyTaggedQueryOverwrite;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_20

    return-object v2

    .line 61
    :cond_20
    :goto_d
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1

    .line 1126
    :cond_21
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/setEventTarget$onNavigationEvent;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/setEventTarget$onNavigationEvent;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/setEventTarget$onNavigationEvent;

    iget v2, p0, Lo/setEventTarget$onNavigationEvent;->onRelationshipValidationResult:I

    iget v3, p0, Lo/setEventTarget$onNavigationEvent;->onTransact:I

    iget-object v4, p0, Lo/setEventTarget$onNavigationEvent;->asInterface:Ljava/util/Iterator;

    iget-boolean v5, p0, Lo/setEventTarget$onNavigationEvent;->newSession:Z

    iget-boolean v6, p0, Lo/setEventTarget$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lo/setEventTarget$onNavigationEvent;-><init>(IILjava/util/Iterator;ZZLo/setSessionPersistenceKey;)V

    check-cast p1, Lo/applyTaggedQueryOverwrite;

    iput-object p1, v0, Lo/setEventTarget$onNavigationEvent;->onNavigationEvent:Lo/applyTaggedQueryOverwrite;

    return-object v0
.end method
