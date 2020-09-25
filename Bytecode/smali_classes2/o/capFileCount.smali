.class public Lo/capFileCount;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final eventTarget:Lo/formatId;

.field private final logger:Lo/FileLogStore;


# direct methods
.method public constructor <init>(Lo/getNamedThreadFactory;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lo/getNamedThreadFactory;->getEventTarget()Lo/formatId;

    move-result-object v0

    iput-object v0, p0, Lo/capFileCount;->eventTarget:Lo/formatId;

    const-string v0, "EventRaiser"

    .line 38
    invoke-virtual {p1, v0}, Lo/getNamedThreadFactory;->getLogger(Ljava/lang/String;)Lo/FileLogStore;

    move-result-object p1

    iput-object p1, p0, Lo/capFileCount;->logger:Lo/FileLogStore;

    return-void
.end method

.method static synthetic access$000(Lo/capFileCount;)Lo/FileLogStore;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/capFileCount;->logger:Lo/FileLogStore;

    return-object p0
.end method


# virtual methods
.method public raiseEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/capFileCount;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lo/capFileCount;->logger:Lo/FileLogStore;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Raising "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    iget-object p1, p0, Lo/capFileCount;->eventTarget:Lo/formatId;

    new-instance v1, Lo/capFileCount$4;

    invoke-direct {v1, p0, v0}, Lo/capFileCount$4;-><init>(Lo/capFileCount;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Lo/formatId;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method
