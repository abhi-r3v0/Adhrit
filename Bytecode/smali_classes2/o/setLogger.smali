.class public final Lo/setLogger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isZombied;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setLogger$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001!B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0000H\u0002J\u0013\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J5\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J(\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018H\u0096\u0002\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0018H\u0016J\u0008\u0010\u001d\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/coroutines/CombinedContext;",
        "Lkotlin/coroutines/CoroutineContext;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "left",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V",
        "contains",
        "",
        "containsAll",
        "context",
        "equals",
        "other",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;",
        "hashCode",
        "",
        "minusKey",
        "size",
        "toString",
        "",
        "writeReplace",
        "Serialized",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/isZombied;

.field private final extraCallback:Lo/isZombied$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/isZombied;Lo/isZombied$onNavigationEvent;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    iput-object p2, p0, Lo/setLogger;->extraCallback:Lo/isZombied$onNavigationEvent;

    return-void
.end method

.method private final extraCallback()I
    .locals 3

    .line 144
    move-object v0, p0

    check-cast v0, Lo/setLogger;

    const/4 v1, 0x2

    .line 147
    :goto_0
    iget-object v0, v0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    instance-of v2, v0, Lo/setLogger;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/setLogger;

    if-nez v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 6

    .line 179
    invoke-direct {p0}, Lo/setLogger;->extraCallback()I

    move-result v0

    .line 180
    new-array v1, v0, [Lo/isZombied;

    .line 181
    new-instance v2, Lo/toDebugString$onPostMessage;

    invoke-direct {v2}, Lo/toDebugString$onPostMessage;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 182
    sget-object v4, Lo/addWrites;->onPostMessage:Lo/addWrites;

    new-instance v5, Lo/setLogger$ICustomTabsCallback;

    invoke-direct {v5, v1, v2}, Lo/setLogger$ICustomTabsCallback;-><init>([Lo/isZombied;Lo/toDebugString$onPostMessage;)V

    check-cast v5, Lo/nextTransactionOrder;

    invoke-virtual {p0, v4, v5}, Lo/setLogger;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    .line 183
    iget v2, v2, Lo/toDebugString$onPostMessage;->onPostMessage:I

    if-ne v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 185
    new-instance v0, Lo/setLogger$extraCallback;

    invoke-direct {v0, v1}, Lo/setLogger$extraCallback;-><init>([Lo/isZombied;)V

    return-object v0

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 169
    move-object v0, p0

    check-cast v0, Lo/setLogger;

    if-eq v0, p1, :cond_4

    instance-of v0, p1, Lo/setLogger;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lo/setLogger;

    invoke-direct {p1}, Lo/setLogger;->extraCallback()I

    move-result v0

    invoke-direct {p0}, Lo/setLogger;->extraCallback()I

    move-result v2

    if-ne v0, v2, :cond_3

    move-object v0, p0

    .line 1158
    :goto_0
    iget-object v2, v0, Lo/setLogger;->extraCallback:Lo/isZombied$onNavigationEvent;

    .line 2153
    invoke-interface {v2}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v3

    invoke-virtual {p1, v3}, Lo/setLogger;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v3

    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1159
    :cond_0
    iget-object v0, v0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    .line 1160
    instance-of v2, v0, Lo/setLogger;

    if-eqz v2, :cond_1

    .line 1161
    check-cast v0, Lo/setLogger;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1163
    check-cast v0, Lo/isZombied$onNavigationEvent;

    .line 3153
    invoke-interface {v0}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/setLogger;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    .line 1163
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return v1

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/nextTransactionOrder<",
            "-TR;-",
            "Lo/isZombied$onNavigationEvent;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    invoke-interface {v0, p1, p2}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lo/setLogger;->extraCallback:Lo/isZombied$onNavigationEvent;

    invoke-interface {p2, p1, v0}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/isZombied$onNavigationEvent;",
            ">(",
            "Lo/isZombied$extraCallback<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    move-object v0, p0

    check-cast v0, Lo/setLogger;

    .line 120
    :goto_0
    iget-object v1, v0, Lo/setLogger;->extraCallback:Lo/isZombied$onNavigationEvent;

    invoke-interface {v1, p1}, Lo/isZombied$onNavigationEvent;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 121
    :cond_0
    iget-object v0, v0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    .line 122
    instance-of v1, v0, Lo/setLogger;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Lo/setLogger;

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v0, p1}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 171
    iget-object v0, p0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/setLogger;->extraCallback:Lo/isZombied$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final minusKey(Lo/isZombied$extraCallback;)Lo/isZombied;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied$extraCallback<",
            "*>;)",
            "Lo/isZombied;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lo/setLogger;->extraCallback:Lo/isZombied$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/isZombied$onNavigationEvent;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    return-object p1

    .line 135
    :cond_0
    iget-object v0, p0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    invoke-interface {v0, p1}, Lo/isZombied;->minusKey(Lo/isZombied$extraCallback;)Lo/isZombied;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lo/setLogger;->ICustomTabsCallback:Lo/isZombied;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    check-cast p1, Lo/isZombied;

    return-object p1

    .line 138
    :cond_1
    sget-object v0, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lo/setLogger;->extraCallback:Lo/isZombied$onNavigationEvent;

    check-cast p1, Lo/isZombied;

    return-object p1

    .line 139
    :cond_2
    new-instance v0, Lo/setLogger;

    iget-object v1, p0, Lo/setLogger;->extraCallback:Lo/isZombied$onNavigationEvent;

    invoke-direct {v0, p1, v1}, Lo/setLogger;-><init>(Lo/isZombied;Lo/isZombied$onNavigationEvent;)V

    check-cast v0, Lo/isZombied;

    return-object v0
.end method

.method public final plus(Lo/isZombied;)Lo/isZombied;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4031
    sget-object v0, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4032
    :cond_0
    sget-object v0, Lo/isZombied$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/isZombied$onPostMessage$onMessageChannelReady;

    check-cast v0, Lo/nextTransactionOrder;

    invoke-interface {p1, p0, v0}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isZombied;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo/setLogger$onMessageChannelReady;->onNavigationEvent:Lo/setLogger$onMessageChannelReady;

    check-cast v1, Lo/nextTransactionOrder;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lo/setLogger;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
