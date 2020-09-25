.class final Lo/compareInts$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/compareInts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Lo/isValidPathString;",
        "Lo/isZombied$onNavigationEvent;",
        "Lo/isValidPathString;",
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
        "<no name provided>",
        "Lkotlinx/coroutines/internal/ThreadState;",
        "state",
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
.field public static final onPostMessage:Lo/compareInts$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/compareInts$onMessageChannelReady;

    invoke-direct {v0}, Lo/compareInts$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/compareInts$onMessageChannelReady;->onPostMessage:Lo/compareInts$onMessageChannelReady;

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

    check-cast p1, Lo/isValidPathString;

    check-cast p2, Lo/isZombied$onNavigationEvent;

    .line 1054
    instance-of v0, p2, Lo/verifyCache;

    if-eqz v0, :cond_0

    .line 1055
    check-cast p2, Lo/verifyCache;

    .line 2019
    iget-object v0, p1, Lo/isValidPathString;->onPostMessage:[Ljava/lang/Object;

    iget v1, p1, Lo/isValidPathString;->extraCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lo/isValidPathString;->extraCallback:I

    aget-object v0, v0, v1

    .line 1055
    invoke-interface {p2, v0}, Lo/verifyCache;->ICustomTabsCallback(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
