.class public final Lo/zombifyForRemove$ICustomTabsCallback;
.super Lo/setAuthTokenProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zombifyForRemove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAuthTokenProvider<",
        "Lo/zombify;",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineDispatcher$Key;",
        "Lkotlin/coroutines/AbstractCoroutineContextKey;",
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "()V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    sget-object v0, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    check-cast v0, Lo/isZombied$extraCallback;

    .line 37
    sget-object v1, Lo/zombifyForRemove$ICustomTabsCallback$2;->onPostMessage:Lo/zombifyForRemove$ICustomTabsCallback$2;

    check-cast v1, Lo/onDisconnectSetValue;

    .line 35
    invoke-direct {p0, v0, v1}, Lo/setAuthTokenProvider;-><init>(Lo/isZombied$extraCallback;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/zombifyForRemove$ICustomTabsCallback;-><init>()V

    return-void
.end method
