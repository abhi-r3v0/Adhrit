.class final Lo/ExecutorUtils$2$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExecutorUtils$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/LogFileManager;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lo/ExecutorUtils$2;


# direct methods
.method constructor <init>(Lo/ExecutorUtils$2;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lo/ExecutorUtils$2$5;->this$0:Lo/ExecutorUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iget-object p1, p0, Lo/ExecutorUtils$2$5;->this$0:Lo/ExecutorUtils$2;

    invoke-static {p1}, Lo/ExecutorUtils$2;->access$000(Lo/ExecutorUtils$2;)I

    move-result p1

    iput p1, p0, Lo/ExecutorUtils$2$5;->offset:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 195
    iget v0, p0, Lo/ExecutorUtils$2$5;->offset:I

    iget-object v1, p0, Lo/ExecutorUtils$2$5;->this$0:Lo/ExecutorUtils$2;

    invoke-static {v1}, Lo/ExecutorUtils$2;->access$100(Lo/ExecutorUtils$2;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lo/ExecutorUtils$2$5;->next()Lo/LogFileManager;

    move-result-object v0

    return-object v0
.end method

.method public final next()Lo/LogFileManager;
    .locals 2

    .line 200
    invoke-virtual {p0}, Lo/ExecutorUtils$2$5;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lo/ExecutorUtils$2$5;->this$0:Lo/ExecutorUtils$2;

    invoke-static {v0}, Lo/ExecutorUtils$2;->access$200(Lo/ExecutorUtils$2;)[Lo/LogFileManager;

    move-result-object v0

    iget v1, p0, Lo/ExecutorUtils$2$5;->offset:I

    aget-object v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 204
    iput v1, p0, Lo/ExecutorUtils$2$5;->offset:I

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove component from immutable Path!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
