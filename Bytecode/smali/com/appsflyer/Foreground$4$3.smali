.class final Lcom/appsflyer/Foreground$4$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/Foreground$4;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ǃ:Lcom/appsflyer/Foreground$4;

.field private synthetic Ι:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/Foreground$4;Landroid/app/Activity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/appsflyer/Foreground$4$3;->ǃ:Lcom/appsflyer/Foreground$4;

    iput-object p2, p0, Lcom/appsflyer/Foreground$4$3;->Ι:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/appsflyer/Foreground$4$3;->ǃ:Lcom/appsflyer/Foreground$4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsflyer/Foreground$4;->ɩ:Z

    .line 53
    iget-object v0, p0, Lcom/appsflyer/Foreground$4$3;->Ι:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/appsflyer/Foreground$4$3$3;

    invoke-direct {v2, p0, v0}, Lcom/appsflyer/Foreground$4$3$3;-><init>(Lcom/appsflyer/Foreground$4$3;Landroid/content/Context;)V

    sget-wide v3, Lcom/appsflyer/Foreground;->CHECK_DELAY:J

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Background task failed with a throwable: "

    .line 69
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
