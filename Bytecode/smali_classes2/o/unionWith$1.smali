.class final Lo/unionWith$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unionWith;->extraCallback(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/unionWith$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/Runnable;

.field private synthetic onNavigationEvent:Lo/unionWith;

.field private synthetic onPostMessage:Lo/unionWith$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/unionWith;Lo/unionWith$ICustomTabsCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/unionWith$1;->onNavigationEvent:Lo/unionWith;

    iput-object p2, p0, Lo/unionWith$1;->onPostMessage:Lo/unionWith$ICustomTabsCallback;

    iput-object p3, p0, Lo/unionWith$1;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lo/unionWith$1;->onNavigationEvent:Lo/unionWith;

    iget-object v1, p0, Lo/unionWith$1;->onPostMessage:Lo/unionWith$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/unionWith$1;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(scheduled in SynchronizationContext)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
