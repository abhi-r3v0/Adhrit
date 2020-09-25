.class Lo/setExecution;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setArch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setExecution$onPostMessage;
    }
.end annotation


# instance fields
.field private final collectionParentsIndex:Lo/setExecution$onPostMessage;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lo/setExecution$onPostMessage;

    invoke-direct {v0}, Lo/setExecution$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/setExecution;->collectionParentsIndex:Lo/setExecution$onPostMessage;

    return-void
.end method


# virtual methods
.method public addToCollectionParentIndex(Lo/setJailbroken;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lo/setExecution;->collectionParentsIndex:Lo/setExecution$onPostMessage;

    invoke-virtual {v0, p1}, Lo/setExecution$onPostMessage;->add(Lo/setJailbroken;)Z

    return-void
.end method

.method public getCollectionParents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/setJailbroken;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/setExecution;->collectionParentsIndex:Lo/setExecution$onPostMessage;

    invoke-virtual {v0, p1}, Lo/setExecution$onPostMessage;->getEntries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
