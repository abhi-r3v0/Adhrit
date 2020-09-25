.class public final Lo/recycleView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\u0006\u001a\u0004\u0018\u0001H\u0007\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ:\u0010\u0006\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\t2\u0014\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0012\u0004\u0012\u00020\u000e0\u0010J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\tJ5\u0010\u0012\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0013\u001a\u0002H\u00072\u0006\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000bH\u0007\u00a2\u0006\u0002\u0010\u0015R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/CacheHelper;",
        "",
        "()V",
        "LEGAL_KEY_PATTERN",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "read",
        "T",
        "key",
        "",
        "responseType",
        "Ljava/lang/reflect/Type;",
        "serializerType",
        "(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "callback",
        "Lkotlin/Function1;",
        "validateKey",
        "write",
        "value",
        "type",
        "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;)V",
        "WriteData",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/regex/Pattern;

.field public static final onMessageChannelReady:Lo/recycleView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/recycleView;

    invoke-direct {v0}, Lo/recycleView;-><init>()V

    sput-object v0, Lo/recycleView;->onMessageChannelReady:Lo/recycleView;

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/recycleView;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Lo/setSessionPersistenceKey<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lo/setTrackedQueryKeys;->onPostMessage()Lo/zombifyForRemove;

    move-result-object v0

    check-cast v0, Lo/isZombied;

    new-instance v1, Lo/recycleView$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lo/recycleView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/setSessionPersistenceKey;)V

    check-cast v1, Lo/nextTransactionOrder;

    .line 3001
    invoke-static {v0, v1, p3}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isZombied;Lo/nextTransactionOrder;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lo/recycleView;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializerType"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lo/keepAll;->onMessageChannelReady:Lo/keepAll;

    check-cast v0, Lo/isFromUser;

    invoke-static {}, Lo/setTrackedQueryKeys;->onPostMessage()Lo/zombifyForRemove;

    move-result-object v1

    check-cast v1, Lo/isZombied;

    new-instance v8, Lo/recycleView$onPostMessage;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lo/recycleView$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Lo/setSessionPersistenceKey;)V

    check-cast v8, Lo/nextTransactionOrder;

    const/4 p0, 0x0

    const/4 p1, 0x2

    .line 1001
    invoke-static {v0, v1, p0, v8, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/onDisconnectSetValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Lo/onDisconnectSetValue<",
            "-TT;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializerType"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lo/keepAll;->onMessageChannelReady:Lo/keepAll;

    check-cast v0, Lo/isFromUser;

    new-instance v7, Lo/recycleView$extraCallback;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lo/recycleView$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/setSessionPersistenceKey;)V

    check-cast v7, Lo/nextTransactionOrder;

    const/4 p0, 0x0

    const/4 p1, 0x3

    .line 2001
    invoke-static {v0, p0, p0, v7, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void
.end method
