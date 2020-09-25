.class final Lo/CrashlyticsLifecycleEvents$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsLifecycleEvents$4;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/CrashlyticsLifecycleEvents;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lo/CrashlyticsLifecycleEvents$4;


# direct methods
.method constructor <init>(Lo/CrashlyticsLifecycleEvents$4;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lo/CrashlyticsLifecycleEvents$4$1;->this$1:Lo/CrashlyticsLifecycleEvents$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents$4$1;->this$1:Lo/CrashlyticsLifecycleEvents$4;

    iget-object v0, v0, Lo/CrashlyticsLifecycleEvents$4;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lo/CrashlyticsLifecycleEvents$4$1;->next()Lo/CrashlyticsLifecycleEvents;

    move-result-object v0

    return-object v0
.end method

.method public final next()Lo/CrashlyticsLifecycleEvents;
    .locals 4

    .line 282
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents$4$1;->this$1:Lo/CrashlyticsLifecycleEvents$4;

    iget-object v0, v0, Lo/CrashlyticsLifecycleEvents$4;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QueueFile;

    .line 283
    new-instance v1, Lo/CrashlyticsLifecycleEvents;

    iget-object v2, p0, Lo/CrashlyticsLifecycleEvents$4$1;->this$1:Lo/CrashlyticsLifecycleEvents$4;

    iget-object v2, v2, Lo/CrashlyticsLifecycleEvents$4;->this$0:Lo/CrashlyticsLifecycleEvents;

    .line 284
    invoke-static {v2}, Lo/CrashlyticsLifecycleEvents;->access$000(Lo/CrashlyticsLifecycleEvents;)Lo/isPresent;

    move-result-object v2

    invoke-virtual {v0}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v3

    invoke-virtual {v3}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/isPresent;->child(Ljava/lang/String;)Lo/isPresent;

    move-result-object v2

    invoke-virtual {v0}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-static {v0}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lo/CrashlyticsLifecycleEvents;-><init>(Lo/isPresent;Lo/discardOldLogFiles;)V

    return-object v1
.end method

.method public final remove()V
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
