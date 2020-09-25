.class final Lo/zombifyForRemove$ICustomTabsCallback$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/zombifyForRemove$ICustomTabsCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/isZombied$onNavigationEvent;",
        "Lo/zombifyForRemove;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "it",
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
.field public static final onPostMessage:Lo/zombifyForRemove$ICustomTabsCallback$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/zombifyForRemove$ICustomTabsCallback$2;

    invoke-direct {v0}, Lo/zombifyForRemove$ICustomTabsCallback$2;-><init>()V

    sput-object v0, Lo/zombifyForRemove$ICustomTabsCallback$2;->onPostMessage:Lo/zombifyForRemove$ICustomTabsCallback$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 35
    check-cast p1, Lo/isZombied$onNavigationEvent;

    .line 1037
    instance-of v0, p1, Lo/zombifyForRemove;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/zombifyForRemove;

    return-object p1
.end method
