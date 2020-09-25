.class final Landroidx/work/Worker$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/Worker;->ICustomTabsCallback()Lo/getBatteryLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Landroidx/work/Worker;


# direct methods
.method constructor <init>(Landroidx/work/Worker;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/work/Worker$5;->onNavigationEvent:Landroidx/work/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 85
    :try_start_0
    iget-object v0, p0, Landroidx/work/Worker$5;->onNavigationEvent:Landroidx/work/Worker;

    invoke-virtual {v0}, Landroidx/work/Worker;->extraCallback()Landroidx/work/ListenableWorker$ICustomTabsCallback;

    move-result-object v0

    .line 86
    iget-object v1, p0, Landroidx/work/Worker$5;->onNavigationEvent:Landroidx/work/Worker;

    iget-object v1, v1, Landroidx/work/Worker;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    invoke-virtual {v1, v0}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 88
    iget-object v1, p0, Landroidx/work/Worker$5;->onNavigationEvent:Landroidx/work/Worker;

    iget-object v1, v1, Landroidx/work/Worker;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    invoke-virtual {v1, v0}, Lo/getSupportParentActivityIntent;->onMessageChannelReady(Ljava/lang/Throwable;)Z

    return-void
.end method
