.class final Lo/fp;
.super Lo/fj;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/fj<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient extraCallback:I

.field private final transient onMessageChannelReady:I

.field private final transient onNavigationEvent:Lo/abort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/abort<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient onPostMessage:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/abort;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/abort<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/fj;-><init>()V

    .line 2
    iput-object p1, p0, Lo/fp;->onNavigationEvent:Lo/abort;

    .line 3
    iput-object p2, p0, Lo/fp;->onPostMessage:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lo/fp;->extraCallback:I

    .line 5
    iput p4, p0, Lo/fp;->onMessageChannelReady:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/fp;)I
    .locals 0

    .line 19
    iget p0, p0, Lo/fp;->onMessageChannelReady:I

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/fp;)[Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/fp;->onPostMessage:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback([Ljava/lang/Object;I)I
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/isClosed;->onNavigationEvent()Lo/a$c$1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/isClosed;->ICustomTabsCallback([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final asBinder()Lo/a$c$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/a$c$1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lo/fv;

    invoke-direct {v0, p0}, Lo/fv;-><init>(Lo/fp;)V

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 10
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    iget-object v2, p0, Lo/fp;->onNavigationEvent:Lo/abort;

    invoke-virtual {v2, v0}, Lo/abort;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final extraCallback()Lo/ft;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ft<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lo/isClosed;->onNavigationEvent()Lo/a$c$1;

    move-result-object v0

    invoke-virtual {v0}, Lo/isClosed;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo/ft;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/isClosed;->extraCallback()Lo/ft;

    move-result-object v0

    return-object v0
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 17
    iget v0, p0, Lo/fp;->onMessageChannelReady:I

    return v0
.end method
