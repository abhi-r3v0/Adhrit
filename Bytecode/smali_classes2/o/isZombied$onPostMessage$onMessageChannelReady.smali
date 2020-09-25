.class public final Lo/isZombied$onPostMessage$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isZombied$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Lo/isZombied;",
        "Lo/isZombied$onNavigationEvent;",
        "Lo/isZombied;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/coroutines/CoroutineContext;",
        "acc",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/isZombied$onPostMessage$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/isZombied$onPostMessage$onMessageChannelReady;

    invoke-direct {v0}, Lo/isZombied$onPostMessage$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/isZombied$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/isZombied$onPostMessage$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 14
    check-cast p1, Lo/isZombied;

    check-cast p2, Lo/isZombied$onNavigationEvent;

    const-string v0, "acc"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    invoke-interface {p2}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/isZombied;->minusKey(Lo/isZombied$extraCallback;)Lo/isZombied;

    move-result-object p1

    .line 1034
    sget-object v0, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1036
    :cond_0
    sget-object v0, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-interface {p1, v0}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/zombify;

    if-nez v0, :cond_1

    .line 1037
    new-instance v0, Lo/setLogger;

    invoke-direct {v0, p1, p2}, Lo/setLogger;-><init>(Lo/isZombied;Lo/isZombied$onNavigationEvent;)V

    move-object p2, v0

    goto :goto_0

    .line 1038
    :cond_1
    sget-object v1, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    check-cast v1, Lo/isZombied$extraCallback;

    invoke-interface {p1, v1}, Lo/isZombied;->minusKey(Lo/isZombied$extraCallback;)Lo/isZombied;

    move-result-object p1

    .line 1039
    sget-object v1, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    if-ne p1, v1, :cond_2

    new-instance p1, Lo/setLogger;

    check-cast p2, Lo/isZombied;

    check-cast v0, Lo/isZombied$onNavigationEvent;

    invoke-direct {p1, p2, v0}, Lo/setLogger;-><init>(Lo/isZombied;Lo/isZombied$onNavigationEvent;)V

    move-object p2, p1

    goto :goto_0

    .line 1040
    :cond_2
    new-instance v1, Lo/setLogger;

    new-instance v2, Lo/setLogger;

    invoke-direct {v2, p1, p2}, Lo/setLogger;-><init>(Lo/isZombied;Lo/isZombied$onNavigationEvent;)V

    check-cast v2, Lo/isZombied;

    check-cast v0, Lo/isZombied$onNavigationEvent;

    invoke-direct {v1, v2, v0}, Lo/setLogger;-><init>(Lo/isZombied;Lo/isZombied$onNavigationEvent;)V

    move-object p2, v1

    .line 1037
    :goto_0
    check-cast p2, Lo/isZombied;

    return-object p2
.end method
