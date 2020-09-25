.class public Lretrofit2/HttpException;
.super Ljava/lang/RuntimeException;
.source ""


# instance fields
.field public final ICustomTabsCallback:I


# direct methods
.method public constructor <init>(Lo/getMinNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMinNode<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "response == null"

    .line 1023
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1107
    iget-object v1, p1, Lo/getMinNode;->extraCallback:Lo/childAddedChange;

    .line 2098
    iget v1, v1, Lo/childAddedChange;->onNavigationEvent:I

    .line 1024
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    iget-object v1, p1, Lo/getMinNode;->extraCallback:Lo/childAddedChange;

    .line 3111
    iget-object v1, v1, Lo/childAddedChange;->extraCallback:Ljava/lang/String;

    .line 1024
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4107
    iget-object p1, p1, Lo/getMinNode;->extraCallback:Lo/childAddedChange;

    .line 5098
    iget p1, p1, Lo/childAddedChange;->onNavigationEvent:I

    .line 33
    iput p1, p0, Lretrofit2/HttpException;->ICustomTabsCallback:I

    return-void
.end method
