.class final Lo/ExecutorUtils$1$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistFatalEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExecutorUtils$1$1;->addWrites(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)Lo/ExecutorUtils$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/persistFatalEvent$onNavigationEvent<",
        "Lo/LogFileManager$DirectoryProvider;",
        "Lo/ExecutorUtils$1$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/ExecutorUtils$1$1;

.field final synthetic val$path:Lo/ExecutorUtils$2;


# direct methods
.method constructor <init>(Lo/ExecutorUtils$1$1;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/ExecutorUtils$1$1$4;->this$0:Lo/ExecutorUtils$1$1;

    iput-object p2, p0, Lo/ExecutorUtils$1$1$4;->val$path:Lo/ExecutorUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p2, Lo/LogFileManager$DirectoryProvider;

    check-cast p3, Lo/ExecutorUtils$1$1;

    invoke-virtual {p0, p1, p2, p3}, Lo/ExecutorUtils$1$1$4;->onNodeValue(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$1$1;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    return-object p1
.end method

.method public final onNodeValue(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$1$1;)Lo/ExecutorUtils$1$1;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/ExecutorUtils$1$1$4;->val$path:Lo/ExecutorUtils$2;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lo/ExecutorUtils$1$1;->addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    return-object p1
.end method
