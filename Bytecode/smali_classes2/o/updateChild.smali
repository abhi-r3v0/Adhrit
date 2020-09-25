.class public final Lo/updateChild;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "ANDROID_DETECTED",
        "",
        "getANDROID_DETECTED",
        "()Z",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    :try_start_0
    sget-object v0, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    const-string v1, "exception"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    new-instance v1, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 17
    invoke-static {v1}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lo/emptyWrite;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lo/updateChild;->onNavigationEvent:Z

    return-void
.end method

.method public static final onPostMessage()Z
    .locals 1

    .line 17
    sget-boolean v0, Lo/updateChild;->onNavigationEvent:Z

    return v0
.end method
