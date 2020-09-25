.class final Lo/CrashFilesManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UpdateAppSpiCall$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashFilesManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/Settings;Lo/UpdateAppSpiCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/CrashFilesManager;


# direct methods
.method constructor <init>(Lo/CrashFilesManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/CrashFilesManager$3;->extraCallback:Lo/CrashFilesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/CrashFilesManager$3;->extraCallback:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lo/CrashFilesManager$3;->extraCallback:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
