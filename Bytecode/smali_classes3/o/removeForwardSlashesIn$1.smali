.class final Lo/removeForwardSlashesIn$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistFatalEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->setupListener(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/callTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/persistFatalEvent$onNavigationEvent<",
        "Lo/getModelName;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/removeForwardSlashesIn;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lo/removeForwardSlashesIn$1;->this$0:Lo/removeForwardSlashesIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 808
    check-cast p2, Lo/getModelName;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lo/removeForwardSlashesIn$1;->onNodeValue(Lo/ExecutorUtils$2;Lo/getModelName;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final onNodeValue(Lo/ExecutorUtils$2;Lo/getModelName;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 811
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lo/getModelName;->hasCompleteView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p2}, Lo/getModelName;->getCompleteView()Lo/callTask;

    move-result-object p1

    invoke-virtual {p1}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    .line 813
    iget-object p2, p0, Lo/removeForwardSlashesIn$1;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {p2}, Lo/removeForwardSlashesIn;->access$1500(Lo/removeForwardSlashesIn;)Lo/removeForwardSlashesIn$onPostMessage;

    move-result-object p2

    iget-object p3, p0, Lo/removeForwardSlashesIn$1;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {p3, p1}, Lo/removeForwardSlashesIn;->access$1300(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p3

    iget-object v0, p0, Lo/removeForwardSlashesIn$1;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0, p1}, Lo/removeForwardSlashesIn;->access$000(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lo/removeForwardSlashesIn$onPostMessage;->stopListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;)V

    goto :goto_1

    .line 816
    :cond_0
    invoke-virtual {p2}, Lo/getModelName;->getQueryViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/callTask;

    .line 817
    invoke-virtual {p2}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p2

    .line 818
    iget-object p3, p0, Lo/removeForwardSlashesIn$1;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {p3}, Lo/removeForwardSlashesIn;->access$1500(Lo/removeForwardSlashesIn;)Lo/removeForwardSlashesIn$onPostMessage;

    move-result-object p3

    iget-object v0, p0, Lo/removeForwardSlashesIn$1;->this$0:Lo/removeForwardSlashesIn;

    .line 819
    invoke-static {v0, p2}, Lo/removeForwardSlashesIn;->access$1300(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    iget-object v1, p0, Lo/removeForwardSlashesIn$1;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v1, p2}, Lo/removeForwardSlashesIn;->access$000(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/InstallerPackageNameProvider;

    move-result-object p2

    .line 818
    invoke-interface {p3, v0, p2}, Lo/removeForwardSlashesIn$onPostMessage;->stopListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
