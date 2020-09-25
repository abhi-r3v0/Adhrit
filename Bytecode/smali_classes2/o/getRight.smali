.class public final Lo/getRight;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRight$onNavigationEvent;,
        Lo/getRight$onPostMessage;,
        Lo/getRight$onRelationshipValidationResult;,
        Lo/getRight$extraCallback;,
        Lo/getRight$ICustomTabsCallback;,
        Lo/getRight$onMessageChannelReady;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final onNavigationEvent:Lo/inOrderTraversal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-static {}, Lo/inOrderTraversal;->onPostMessage()Lo/inOrderTraversal;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/getRight;-><init>(Lo/inOrderTraversal;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lo/inOrderTraversal;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 61
    check-cast p1, Lo/inOrderTraversal;

    iput-object p1, p0, Lo/getRight;->onNavigationEvent:Lo/inOrderTraversal;

    if-eqz p2, :cond_0

    .line 62
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lo/getRight;->ICustomTabsCallback:Ljava/lang/String;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "defaultPolicy"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "registry"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final extraCallback(Ljava/util/Map;Lo/saveTrackedQueryKeys;)Lo/reverseIteratorFrom$onPostMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lo/saveTrackedQueryKeys;",
            ")",
            "Lo/reverseIteratorFrom$onPostMessage;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3269
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "loadBalancingConfig"

    .line 3271
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3272
    invoke-static {p1, v2}, Lo/unlisten;->extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3275
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "loadBalancingPolicy"

    .line 3277
    invoke-static {p1, v2}, Lo/unlisten;->onTransact(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3280
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3281
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 3282
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3285
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 247
    invoke-static {p1}, Lo/onAuthRevoked;->extraCallback(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_7

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onAuthRevoked$ICustomTabsCallback;

    .line 3331
    iget-object v2, v1, Lo/onAuthRevoked$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 253
    iget-object v3, p0, Lo/getRight;->onNavigationEvent:Lo/inOrderTraversal;

    invoke-virtual {v3, v2}, Lo/inOrderTraversal;->onNavigationEvent(Ljava/lang/String;)Lo/iteratorFrom;

    move-result-object v3

    if-nez v3, :cond_3

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 258
    sget-object p1, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "{0} specified by Service Config are not available"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p2, p1, v2, v4}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_4
    invoke-virtual {v3}, Lo/iteratorFrom;->onPostMessage()Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p1

    .line 3898
    iget-object p2, p1, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    if-eqz p2, :cond_5

    return-object p1

    .line 267
    :cond_5
    new-instance p2, Lo/getRight$onRelationshipValidationResult;

    .line 4335
    iget-object v0, v1, Lo/onAuthRevoked$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/Map;

    .line 4890
    iget-object p1, p1, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    .line 269
    invoke-direct {p2, v3, v0, p1}, Lo/getRight$onRelationshipValidationResult;-><init>(Lo/iteratorFrom;Ljava/util/Map;Ljava/lang/Object;)V

    .line 267
    invoke-static {p2}, Lo/reverseIteratorFrom$onPostMessage;->onPostMessage(Ljava/lang/Object;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p1

    return-object p1

    .line 272
    :cond_6
    sget-object p1, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "None of "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " specified by Service Config are available."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 273
    invoke-virtual {p1, p2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 272
    invoke-static {p1}, Lo/reverseIteratorFrom$onPostMessage;->ICustomTabsCallback(Lo/emptyMap;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 278
    :goto_2
    sget-object p2, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    const-string v0, "can\'t parse load balancer configuration"

    .line 279
    invoke-virtual {p2, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 278
    invoke-static {p1}, Lo/reverseIteratorFrom$onPostMessage;->ICustomTabsCallback(Lo/emptyMap;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method
