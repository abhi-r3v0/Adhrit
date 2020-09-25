.class final Lo/isPresent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isPresent;->updateChildrenInternal(Ljava/util/Map;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/isPresent;

.field final synthetic val$bouncedUpdate:Ljava/util/Map;

.field final synthetic val$merge:Lo/ExecutorUtils$1$1;

.field final synthetic val$wrapped:Lo/getSortedCustomAttributes;


# direct methods
.method constructor <init>(Lo/isPresent;Lo/ExecutorUtils$1$1;Lo/getSortedCustomAttributes;Ljava/util/Map;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lo/isPresent$4;->this$0:Lo/isPresent;

    iput-object p2, p0, Lo/isPresent$4;->val$merge:Lo/ExecutorUtils$1$1;

    iput-object p3, p0, Lo/isPresent$4;->val$wrapped:Lo/getSortedCustomAttributes;

    iput-object p4, p0, Lo/isPresent$4;->val$bouncedUpdate:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 422
    iget-object v0, p0, Lo/isPresent$4;->this$0:Lo/isPresent;

    iget-object v0, v0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/isPresent$4;->this$0:Lo/isPresent;

    invoke-virtual {v1}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    iget-object v2, p0, Lo/isPresent$4;->val$merge:Lo/ExecutorUtils$1$1;

    iget-object v3, p0, Lo/isPresent$4;->val$wrapped:Lo/getSortedCustomAttributes;

    invoke-virtual {v3}, Lo/getSortedCustomAttributes;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isPresent$onPostMessage;

    iget-object v4, p0, Lo/isPresent$4;->val$bouncedUpdate:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/getCrashlyticsInstallId;->updateChildren(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/isPresent$onPostMessage;Ljava/util/Map;)V

    return-void
.end method
