.class final Lo/populateSessionData$4$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateSessionData$4;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/populateSessionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lo/populateSessionData$4;


# direct methods
.method constructor <init>(Lo/populateSessionData$4;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/populateSessionData$4$4;->this$1:Lo/populateSessionData$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lo/populateSessionData$4$4;->this$1:Lo/populateSessionData$4;

    iget-object v0, v0, Lo/populateSessionData$4;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lo/populateSessionData$4$4;->next()Lo/populateSessionData;

    move-result-object v0

    return-object v0
.end method

.method public final next()Lo/populateSessionData;
    .locals 4

    .line 142
    iget-object v0, p0, Lo/populateSessionData$4$4;->this$1:Lo/populateSessionData$4;

    iget-object v0, v0, Lo/populateSessionData$4;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QueueFile;

    .line 143
    new-instance v1, Lo/populateSessionData;

    iget-object v2, p0, Lo/populateSessionData$4$4;->this$1:Lo/populateSessionData$4;

    iget-object v2, v2, Lo/populateSessionData$4;->this$0:Lo/populateSessionData;

    invoke-static {v2}, Lo/populateSessionData;->access$000(Lo/populateSessionData;)Lo/getAppIdentifier;

    move-result-object v2

    iget-object v3, p0, Lo/populateSessionData$4$4;->this$1:Lo/populateSessionData$4;

    iget-object v3, v3, Lo/populateSessionData$4;->this$0:Lo/populateSessionData;

    invoke-static {v3}, Lo/populateSessionData;->access$100(Lo/populateSessionData;)Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-virtual {v0}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lo/populateSessionData;-><init>(Lo/getAppIdentifier;Lo/ExecutorUtils$2;Lo/populateSessionData$1;)V

    return-object v1
.end method

.method public final remove()V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
