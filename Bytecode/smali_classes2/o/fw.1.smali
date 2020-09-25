.class final Lo/fw;
.super Lo/fj;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lo/fj<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient ICustomTabsCallback:Lo/a$c$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a$c$1<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient onNavigationEvent:Lo/abort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/abort<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/abort;Lo/a$c$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/abort<",
            "TK;*>;",
            "Lo/a$c$1<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/fj;-><init>()V

    .line 2
    iput-object p1, p0, Lo/fw;->onNavigationEvent:Lo/abort;

    .line 3
    iput-object p2, p0, Lo/fw;->ICustomTabsCallback:Lo/a$c$1;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback([Ljava/lang/Object;I)I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/isClosed;->onNavigationEvent()Lo/a$c$1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/isClosed;->ICustomTabsCallback([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lo/fw;->onNavigationEvent:Lo/abort;

    invoke-virtual {v0, p1}, Lo/abort;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()Lo/ft;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ft<",
            "TK;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lo/isClosed;->onNavigationEvent()Lo/a$c$1;

    move-result-object v0

    invoke-virtual {v0}, Lo/isClosed;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo/ft;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/isClosed;->extraCallback()Lo/ft;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Lo/a$c$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/a$c$1<",
            "TK;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/fw;->ICustomTabsCallback:Lo/a$c$1;

    return-object v0
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 10
    iget-object v0, p0, Lo/fw;->onNavigationEvent:Lo/abort;

    invoke-virtual {v0}, Lo/abort;->size()I

    move-result v0

    return v0
.end method
