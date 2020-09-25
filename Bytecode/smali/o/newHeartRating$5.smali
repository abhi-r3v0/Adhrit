.class final Lo/newHeartRating$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/newHeartRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/newHeartRating;

.field final synthetic onMessageChannelReady:Lo/newHeartRating$onNavigationEvent;

.field final synthetic onNavigationEvent:Landroid/os/Handler;

.field final synthetic onPostMessage:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lo/newHeartRating;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lo/newHeartRating$onNavigationEvent;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lo/newHeartRating$5;->ICustomTabsCallback:Lo/newHeartRating;

    iput-object p2, p0, Lo/newHeartRating$5;->onPostMessage:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lo/newHeartRating$5;->onNavigationEvent:Landroid/os/Handler;

    iput-object p4, p0, Lo/newHeartRating$5;->onMessageChannelReady:Lo/newHeartRating$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 142
    :try_start_0
    iget-object v0, p0, Lo/newHeartRating$5;->onPostMessage:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    iget-object v1, p0, Lo/newHeartRating$5;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/newHeartRating$5$3;

    invoke-direct {v2, p0, v0}, Lo/newHeartRating$5$3;-><init>(Lo/newHeartRating$5;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
