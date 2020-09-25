.class public Lo/onVolumeChanged;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/supportShouldUpRecreateTask;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0014\u0010\u0006\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0003\"\u0014\u0010\u0008\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0003\u00a8\u0006\n"
    }
    d2 = {
        "SETUP_UPI_CHANGE_SIM",
        "",
        "getSETUP_UPI_CHANGE_SIM",
        "()I",
        "SETUP_UPI_NORMAL",
        "getSETUP_UPI_NORMAL",
        "SETUP_UPI_REQUEST_FAILED",
        "getSETUP_UPI_REQUEST_FAILED",
        "SETUP_UPI_TIMEDOUT",
        "getSETUP_UPI_TIMEDOUT",
        "credpayui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/onSupportActionModeFinished;

.field private final extraCallback:Ljava/util/concurrent/Executor;

.field final onMessageChannelReady:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/onVolumeChanged;->onMessageChannelReady:Landroid/os/Handler;

    .line 1045
    iput-object p0, p0, Lo/onVolumeChanged;->extraCallback:Ljava/util/concurrent/Executor;

    .line 1040
    new-instance v0, Lo/onSupportActionModeFinished;

    invoke-direct {v0, p1}, Lo/onSupportActionModeFinished;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lo/onVolumeChanged;->ICustomTabsCallback:Lo/onSupportActionModeFinished;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 2054
    iget-object v0, p0, Lo/onVolumeChanged;->onMessageChannelReady:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public extraCallback()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1059
    iget-object v0, p0, Lo/onVolumeChanged;->extraCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public onMessageChannelReady()Lo/onSupportActionModeFinished;
    .locals 1

    .line 1070
    iget-object v0, p0, Lo/onVolumeChanged;->ICustomTabsCallback:Lo/onSupportActionModeFinished;

    return-object v0
.end method

.method public onNavigationEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 1064
    iget-object v0, p0, Lo/onVolumeChanged;->ICustomTabsCallback:Lo/onSupportActionModeFinished;

    invoke-virtual {v0, p1}, Lo/onSupportActionModeFinished;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
