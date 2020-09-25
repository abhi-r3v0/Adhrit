.class final Lo/ExecutorUtils$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistFatalEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExecutorUtils$1$1;->getValue(Z)Ljava/util/Map;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/ExecutorUtils$1$1;

.field final synthetic val$exportFormat:Z

.field final synthetic val$writes:Ljava/util/Map;


# direct methods
.method constructor <init>(Lo/ExecutorUtils$1$1;Ljava/util/Map;Z)V
    .locals 0

    .line 266
    iput-object p1, p0, Lo/ExecutorUtils$1$1$1;->this$0:Lo/ExecutorUtils$1$1;

    iput-object p2, p0, Lo/ExecutorUtils$1$1$1;->val$writes:Ljava/util/Map;

    iput-boolean p3, p0, Lo/ExecutorUtils$1$1$1;->val$exportFormat:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 266
    check-cast p2, Lo/LogFileManager$DirectoryProvider;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lo/ExecutorUtils$1$1$1;->onNodeValue(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final onNodeValue(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 269
    iget-object p3, p0, Lo/ExecutorUtils$1$1$1;->val$writes:Ljava/util/Map;

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->wireFormat()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lo/ExecutorUtils$1$1$1;->val$exportFormat:Z

    invoke-interface {p2, v0}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
