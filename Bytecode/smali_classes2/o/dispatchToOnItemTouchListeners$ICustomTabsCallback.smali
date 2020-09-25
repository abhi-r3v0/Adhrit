.class public final Lo/dispatchToOnItemTouchListeners$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchToOnItemTouchListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreCardAdapter$Companion;",
        "",
        "()V",
        "TYPE_GRID_CARD",
        "",
        "TYPE_IMAGE_CARD",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getMinidumpFile;

.field private synthetic onPostMessage:Lo/getBinaryImagesFile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getBinaryImagesFile;Lo/getMinidumpFile;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lo/dispatchToOnItemTouchListeners$ICustomTabsCallback;->onPostMessage:Lo/getBinaryImagesFile;

    iput-object p2, p0, Lo/dispatchToOnItemTouchListeners$ICustomTabsCallback;->extraCallback:Lo/getMinidumpFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/dispatchToOnItemTouchListeners$ICustomTabsCallback;->onPostMessage:Lo/getBinaryImagesFile;

    .line 3000
    iget-object v0, v0, Lo/getBinaryImagesFile;->onNavigationEvent:Ljava/lang/Object;

    .line 2000
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/dispatchToOnItemTouchListeners$ICustomTabsCallback;->onPostMessage:Lo/getBinaryImagesFile;

    .line 4000
    iget-object v1, v1, Lo/getBinaryImagesFile;->extraCallback:Lo/getLogger;

    if-eqz v1, :cond_0

    .line 2000
    iget-object v1, p0, Lo/dispatchToOnItemTouchListeners$ICustomTabsCallback;->onPostMessage:Lo/getBinaryImagesFile;

    .line 5000
    iget-object v1, v1, Lo/getBinaryImagesFile;->extraCallback:Lo/getLogger;

    .line 2000
    iget-object v2, p0, Lo/dispatchToOnItemTouchListeners$ICustomTabsCallback;->extraCallback:Lo/getMinidumpFile;

    invoke-virtual {v2}, Lo/getMinidumpFile;->ICustomTabsCallback()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/getLogger;->extraCallback(Ljava/lang/Exception;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
