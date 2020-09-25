.class public final Lo/getAffectedTree;
.super Lo/setRunLoop;
.source ""

# interfaces
.implements Lo/verifyCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getAffectedTree$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setRunLoop;",
        "Lo/verifyCache<",
        "Ljava/lang/String;",
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0080\u0008\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0018B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineId;",
        "Lkotlinx/coroutines/ThreadContextElement;",
        "",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "id",
        "",
        "(J)V",
        "getId",
        "()J",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "restoreThreadContext",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "oldState",
        "toString",
        "updateThreadContext",
        "Key",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/getAffectedTree$onNavigationEvent;


# instance fields
.field final onMessageChannelReady:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getAffectedTree$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getAffectedTree$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/getAffectedTree;->onNavigationEvent:Lo/getAffectedTree$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 62
    sget-object v0, Lo/getAffectedTree;->onNavigationEvent:Lo/getAffectedTree$onNavigationEvent;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-direct {p0, v0}, Lo/setRunLoop;-><init>(Lo/isZombied$extraCallback;)V

    iput-wide p1, p0, Lo/getAffectedTree;->onMessageChannelReady:J

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 1

    .line 60
    check-cast p1, Ljava/lang/String;

    .line 3083
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/getAffectedTree;

    if-eqz v0, :cond_0

    check-cast p1, Lo/getAffectedTree;

    iget-wide v0, p0, Lo/getAffectedTree;->onMessageChannelReady:J

    iget-wide v2, p1, Lo/getAffectedTree;->onMessageChannelReady:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;
    .locals 2
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

    .line 4000
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "operation"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4070
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

    .line 5000
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "key"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5067
    invoke-interface {v0}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v1

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lo/getAffectedTree;->onMessageChannelReady:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
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

    .line 6000
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "key"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6073
    invoke-interface {v0}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v1

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    check-cast p1, Lo/isZombied;

    return-object p1

    :cond_0
    check-cast v0, Lo/isZombied;

    return-object v0
.end method

.method public final synthetic onMessageChannelReady(Lo/isZombied;)Ljava/lang/Object;
    .locals 6

    .line 1067
    sget-object v0, Lo/isFromServer;->onPostMessage:Lo/isFromServer$extraCallback;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-interface {p1, v0}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    .line 1068
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    .line 1069
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1070
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "$this$lastIndex"

    .line 2035
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2317
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const-string v4, " @"

    .line 2035
    invoke-static {v1, v4, v2, v3}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-gez v1, :cond_0

    .line 1071
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v2, v1, 0x9

    add-int/lit8 v2, v2, 0xa

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "coroutine"

    .line 1075
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    .line 1076
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1077
    iget-wide v1, p0, Lo/getAffectedTree;->onMessageChannelReady:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0

    .line 1073
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final plus(Lo/isZombied;)Lo/isZombied;
    .locals 2

    .line 7000
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "context"

    .line 8000
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/isZombied;

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8031
    sget-object v1, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    if-ne p1, v1, :cond_0

    return-object v0

    .line 8032
    :cond_0
    sget-object v1, Lo/isZombied$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/isZombied$onPostMessage$onMessageChannelReady;

    check-cast v1, Lo/nextTransactionOrder;

    invoke-interface {p1, v0, v1}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isZombied;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoroutineId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/getAffectedTree;->onMessageChannelReady:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
