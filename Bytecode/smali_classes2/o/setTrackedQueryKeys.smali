.class public final Lo/setTrackedQueryKeys;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u0007R\u001a\u0010\u000b\u001a\u00020\u000c8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u001a\u0004\u0008\u0012\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/coroutines/Dispatchers;",
        "",
        "()V",
        "Default",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Default$annotations",
        "getDefault",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "IO",
        "IO$annotations",
        "getIO",
        "Main",
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "Main$annotations",
        "getMain",
        "()Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "Unconfined",
        "Unconfined$annotations",
        "getUnconfined",
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
.field private static final extraCallback:Lo/zombifyForRemove;

.field private static final onPostMessage:Lo/zombifyForRemove;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lo/operationForChild;->onPostMessage()Lo/zombifyForRemove;

    move-result-object v0

    sput-object v0, Lo/setTrackedQueryKeys;->onPostMessage:Lo/zombifyForRemove;

    .line 94
    sget-object v0, Lo/filteredQueryIdsAtPath;->onNavigationEvent:Lo/filteredQueryIdsAtPath;

    .line 114
    sget-object v0, Lo/validateWritableObject;->onNavigationEvent:Lo/validateWritableObject;

    invoke-static {}, Lo/validateWritableObject;->extraCallback()Lo/zombifyForRemove;

    move-result-object v0

    sput-object v0, Lo/setTrackedQueryKeys;->extraCallback:Lo/zombifyForRemove;

    return-void
.end method

.method public static final ICustomTabsCallback()Lo/getKnownCompleteChildren;
    .locals 1

    .line 58
    sget-object v0, Lo/sha1HexDigest;->onMessageChannelReady:Lo/getKnownCompleteChildren;

    return-object v0
.end method

.method public static final extraCallback()Lo/zombifyForRemove;
    .locals 1

    .line 33
    sget-object v0, Lo/setTrackedQueryKeys;->onPostMessage:Lo/zombifyForRemove;

    return-object v0
.end method

.method public static final onPostMessage()Lo/zombifyForRemove;
    .locals 1

    .line 114
    sget-object v0, Lo/setTrackedQueryKeys;->extraCallback:Lo/zombifyForRemove;

    return-object v0
.end method
