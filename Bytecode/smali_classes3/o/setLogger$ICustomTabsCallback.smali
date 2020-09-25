.class final Lo/setLogger$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLogger;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Lo/addWrites;",
        "Lo/isZombied$onNavigationEvent;",
        "Lo/addWrites;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "invoke",
        "(Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:[Lo/isZombied;

.field private synthetic onNavigationEvent:Lo/toDebugString$onPostMessage;


# direct methods
.method constructor <init>([Lo/isZombied;Lo/toDebugString$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/setLogger$ICustomTabsCallback;->extraCallback:[Lo/isZombied;

    iput-object p2, p0, Lo/setLogger$ICustomTabsCallback;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 112
    check-cast p1, Lo/addWrites;

    check-cast p2, Lo/isZombied$onNavigationEvent;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    iget-object p1, p0, Lo/setLogger$ICustomTabsCallback;->extraCallback:[Lo/isZombied;

    iget-object v0, p0, Lo/setLogger$ICustomTabsCallback;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    iget v1, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    check-cast p2, Lo/isZombied;

    aput-object p2, p1, v1

    .line 112
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
