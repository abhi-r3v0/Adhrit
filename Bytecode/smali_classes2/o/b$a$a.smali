.class public Lo/b$a$a;
.super Lo/a$2;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/a$2<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final transient onNavigationEvent:I

.field private final transient onPostMessage:Lo/abort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/abort<",
            "TK;+",
            "Lo/isClosed<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/abort;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/abort<",
            "TK;+",
            "Lo/isClosed<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/a$2;-><init>()V

    .line 2
    iput-object p1, p0, Lo/b$a$a;->onPostMessage:Lo/abort;

    .line 3
    iput p2, p0, Lo/b$a$a;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lo/a$2;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 8
    invoke-super {p0}, Lo/a$2;->hashCode()I

    move-result v0

    return v0
.end method

.method final onNavigationEvent()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    invoke-super {p0, p1}, Lo/a$2;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic onPostMessage()Ljava/util/Map;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/b$a$a;->onPostMessage:Lo/abort;

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 7
    invoke-super {p0}, Lo/a$2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
