.class final Lo/isPresent$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isPresent;->setValueInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/isPresent;

.field final synthetic val$node:Lo/LogFileManager$DirectoryProvider;

.field final synthetic val$wrapped:Lo/getSortedCustomAttributes;


# direct methods
.method constructor <init>(Lo/isPresent;Lo/LogFileManager$DirectoryProvider;Lo/getSortedCustomAttributes;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lo/isPresent$5;->this$0:Lo/isPresent;

    iput-object p2, p0, Lo/isPresent$5;->val$node:Lo/LogFileManager$DirectoryProvider;

    iput-object p3, p0, Lo/isPresent$5;->val$wrapped:Lo/getSortedCustomAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 290
    iget-object v0, p0, Lo/isPresent$5;->this$0:Lo/isPresent;

    iget-object v0, v0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/isPresent$5;->this$0:Lo/isPresent;

    invoke-virtual {v1}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    iget-object v2, p0, Lo/isPresent$5;->val$node:Lo/LogFileManager$DirectoryProvider;

    iget-object v3, p0, Lo/isPresent$5;->val$wrapped:Lo/getSortedCustomAttributes;

    invoke-virtual {v3}, Lo/getSortedCustomAttributes;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isPresent$onPostMessage;

    invoke-virtual {v0, v1, v2, v3}, Lo/getCrashlyticsInstallId;->setValue(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)V

    return-void
.end method
