.class final Lo/DefaultSettingsSpiCall;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DefaultSettingsSpiCall$ICustomTabsCallback;,
        Lo/DefaultSettingsSpiCall$onMessageChannelReady;
    }
.end annotation


# instance fields
.field final onMessageChannelReady:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/DefaultSettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    return-void
.end method
