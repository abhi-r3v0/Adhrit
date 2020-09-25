.class final Lo/CrashFilesManager$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field volatile ICustomTabsCallback:Z

.field final synthetic onPostMessage:Lo/CrashFilesManager;


# direct methods
.method public constructor <init>(Lo/CrashFilesManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/CrashFilesManager$extraCallback;->onPostMessage:Lo/CrashFilesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lo/CrashFilesManager$extraCallback;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lo/CrashFilesManager$extraCallback;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lo/CrashFilesManager$extraCallback;->onPostMessage:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lo/CrashFilesManager$extraCallback;->onPostMessage:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    :cond_0
    iget-object v0, p0, Lo/CrashFilesManager$extraCallback;->onPostMessage:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
