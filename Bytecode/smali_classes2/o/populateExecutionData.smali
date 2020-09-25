.class public final Lo/populateExecutionData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/populateExecutionData$onMessageChannelReady;,
        Lo/populateExecutionData$onPostMessage;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/parseEventFrame;

.field private final arg$2:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/parseEventFrame;Landroid/os/Bundle;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/populateExecutionData;->arg$1:Lo/parseEventFrame;

    iput-object p2, p0, Lo/populateExecutionData;->arg$2:Landroid/os/Bundle;

    return-void
.end method

.method public static abort()Lo/populateExecutionData$onPostMessage;
    .locals 3

    .line 114
    new-instance v0, Lo/populateExecutionData$onPostMessage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lo/populateExecutionData$onPostMessage;-><init>(ZLo/LogFileManager$DirectoryProvider;Lo/populateExecutionData$3;)V

    return-object v0
.end method

.method public static success(Lo/populateSessionData;)Lo/populateExecutionData$onPostMessage;
    .locals 3

    .line 123
    new-instance v0, Lo/populateExecutionData$onPostMessage;

    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lo/populateExecutionData$onPostMessage;-><init>(ZLo/LogFileManager$DirectoryProvider;Lo/populateExecutionData$3;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/populateExecutionData;->arg$1:Lo/parseEventFrame;

    iget-object v1, p0, Lo/populateExecutionData;->arg$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lo/parseEventFrame;->lambda$registerRpcViaIntent$2$Rpc(Landroid/os/Bundle;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
