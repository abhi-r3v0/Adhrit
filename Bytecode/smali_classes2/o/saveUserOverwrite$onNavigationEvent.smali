.class final Lo/saveUserOverwrite$onNavigationEvent;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveUserOverwrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/16 v0, 0xa

    .line 410
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 411
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
