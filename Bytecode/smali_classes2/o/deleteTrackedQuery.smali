.class public final Lo/deleteTrackedQuery;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/deleteTrackedQuery$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/deleteTrackedQuery;


# instance fields
.field public ICustomTabsCallback:Lo/saveNode;

.field public ICustomTabsCallback$Stub:Ljava/lang/Integer;

.field private ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

.field public asBinder:Ljava/lang/Boolean;

.field public asInterface:Ljava/lang/String;

.field public extraCallback:Ljava/util/concurrent/Executor;

.field public onMessageChannelReady:Lo/loadTrackedQueries;

.field public onNavigationEvent:Ljava/lang/String;

.field public onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/beginTransaction$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public onTransact:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lo/deleteTrackedQuery;

    invoke-direct {v0}, Lo/deleteTrackedQuery;-><init>()V

    sput-object v0, Lo/deleteTrackedQuery;->onPostMessage:Lo/deleteTrackedQuery;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 64
    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>(Lo/deleteTrackedQuery;)V
    .locals 2

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 64
    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    .line 425
    iget-object v0, p1, Lo/deleteTrackedQuery;->ICustomTabsCallback:Lo/saveNode;

    iput-object v0, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback:Lo/saveNode;

    .line 426
    iget-object v0, p1, Lo/deleteTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/deleteTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    .line 427
    iget-object v0, p1, Lo/deleteTrackedQuery;->onMessageChannelReady:Lo/loadTrackedQueries;

    iput-object v0, p0, Lo/deleteTrackedQuery;->onMessageChannelReady:Lo/loadTrackedQueries;

    .line 428
    iget-object v0, p1, Lo/deleteTrackedQuery;->extraCallback:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lo/deleteTrackedQuery;->extraCallback:Ljava/util/concurrent/Executor;

    .line 429
    iget-object v0, p1, Lo/deleteTrackedQuery;->asInterface:Ljava/lang/String;

    iput-object v0, p0, Lo/deleteTrackedQuery;->asInterface:Ljava/lang/String;

    .line 430
    iget-object v0, p1, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    iput-object v0, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    .line 431
    iget-object v0, p1, Lo/deleteTrackedQuery;->asBinder:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/deleteTrackedQuery;->asBinder:Ljava/lang/Boolean;

    .line 432
    iget-object v0, p1, Lo/deleteTrackedQuery;->onTransact:Ljava/lang/Integer;

    iput-object v0, p0, Lo/deleteTrackedQuery;->onTransact:Ljava/lang/Integer;

    .line 433
    iget-object v0, p1, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    iput-object v0, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 434
    iget-object p1, p1, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    iput-object p1, p0, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method


# virtual methods
.method public final onMessageChannelReady(I)Lo/deleteTrackedQuery;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 387
    new-instance v0, Lo/deleteTrackedQuery;

    invoke-direct {v0, p0}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    .line 388
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lo/deleteTrackedQuery;->onTransact:Ljava/lang/Integer;

    return-object v0

    .line 5190
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "invalid maxsize %s"

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final onNavigationEvent(I)Lo/deleteTrackedQuery;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 398
    new-instance v0, Lo/deleteTrackedQuery;

    invoke-direct {v0, p0}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    return-object v0

    .line 6190
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "invalid maxsize %s"

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/deleteTrackedQuery$onMessageChannelReady<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 351
    :goto_0
    iget-object v2, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 352
    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget-object p1, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    aget-object p1, p1, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 3910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/beginTransaction$onNavigationEvent;)Lo/deleteTrackedQuery;
    .locals 3

    .line 222
    new-instance v0, Lo/deleteTrackedQuery;

    invoke-direct {v0, p0}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    .line 224
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    iget-object v2, p0, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 226
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    return-object v0
.end method

.method public final onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;Ljava/lang/Object;)Lo/deleteTrackedQuery;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/deleteTrackedQuery$onMessageChannelReady<",
            "TT;>;TT;)",
            "Lo/deleteTrackedQuery;"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 320
    new-instance v0, Lo/deleteTrackedQuery;

    invoke-direct {v0, p0}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 322
    :goto_0
    iget-object v3, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    .line 323
    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 329
    :goto_1
    iget-object v3, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v2, v5, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v3, v6

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v6, v7, v4

    aput v3, v7, v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    iput-object v3, v0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    .line 330
    iget-object v7, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    array-length v8, v7

    invoke-static {v7, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v2, v5, :cond_3

    .line 334
    iget-object v2, v0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    iget-object v3, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    array-length v3, v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    aput-object v5, v2, v3

    goto :goto_3

    .line 337
    :cond_3
    iget-object v3, v0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    aput-object v5, v3, v2

    :goto_3
    return-object v0

    .line 2910
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 7105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 439
    iget-object v1, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback:Lo/saveNode;

    const-string v2, "deadline"

    .line 440
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "authority"

    .line 441
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteTrackedQuery;->onMessageChannelReady:Lo/loadTrackedQueries;

    const-string v2, "callCredentials"

    .line 442
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lo/deleteTrackedQuery;->extraCallback:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "executor"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteTrackedQuery;->asInterface:Ljava/lang/String;

    const-string v2, "compressorName"

    .line 444
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub$Proxy:[[Ljava/lang/Object;

    .line 445
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 7373
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lo/deleteTrackedQuery;->asBinder:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "waitForReady"

    .line 446
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Z)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteTrackedQuery;->onTransact:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    .line 447
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    .line 448
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteTrackedQuery;->onRelationshipValidationResult:Ljava/util/List;

    const-string v2, "streamTracerFactories"

    .line 449
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
