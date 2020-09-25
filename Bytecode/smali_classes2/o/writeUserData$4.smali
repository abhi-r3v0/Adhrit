.class final Lo/writeUserData$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onReportSendComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/writeUserData;->calcCompleteEventCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/util/List;Z)Lo/LogFileManager$DirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onReportSendComplete<",
        "Lo/loadInstallerPackageName;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/writeUserData;

.field final synthetic val$includeHiddenWrites:Z

.field final synthetic val$treePath:Lo/ExecutorUtils$2;

.field final synthetic val$writeIdsToExclude:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/writeUserData;ZLjava/util/List;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lo/writeUserData$4;->this$0:Lo/writeUserData;

    iput-boolean p2, p0, Lo/writeUserData$4;->val$includeHiddenWrites:Z

    iput-object p3, p0, Lo/writeUserData$4;->val$writeIdsToExclude:Ljava/util/List;

    iput-object p4, p0, Lo/writeUserData$4;->val$treePath:Lo/ExecutorUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 234
    check-cast p1, Lo/loadInstallerPackageName;

    invoke-virtual {p0, p1}, Lo/writeUserData$4;->evaluate(Lo/loadInstallerPackageName;)Z

    move-result p1

    return p1
.end method

.method public final evaluate(Lo/loadInstallerPackageName;)Z
    .locals 3

    .line 237
    invoke-virtual {p1}, Lo/loadInstallerPackageName;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/writeUserData$4;->val$includeHiddenWrites:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lo/writeUserData$4;->val$writeIdsToExclude:Ljava/util/List;

    .line 238
    invoke-virtual {p1}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-virtual {p1}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    iget-object v1, p0, Lo/writeUserData$4;->val$treePath:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/writeUserData$4;->val$treePath:Lo/ExecutorUtils$2;

    invoke-virtual {p1}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
