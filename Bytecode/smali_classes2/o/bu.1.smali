.class final Lo/bu;
.super Lo/bx;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/bx<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient ICustomTabsCallback:I

.field private final transient extraCallback:I

.field private final transient onMessageChannelReady:Lo/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/bs<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient onNavigationEvent:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/bs;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bs<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/bx;-><init>()V

    .line 2
    iput-object p1, p0, Lo/bu;->onMessageChannelReady:Lo/bs;

    .line 3
    iput-object p2, p0, Lo/bu;->onNavigationEvent:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lo/bu;->extraCallback:I

    .line 5
    iput p4, p0, Lo/bu;->ICustomTabsCallback:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/bu;)[Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/bu;->onNavigationEvent:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/bu;)I
    .locals 0

    .line 19
    iget p0, p0, Lo/bu;->ICustomTabsCallback:I

    return p0
.end method


# virtual methods
.method final ICustomTabsCallback([Ljava/lang/Object;I)I
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/bn;->onRelationshipValidationResult()Lo/br;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/bn;->ICustomTabsCallback([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final asInterface()Lo/br;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/br<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lo/bw;

    invoke-direct {v0, p0}, Lo/bw;-><init>(Lo/bu;)V

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
    iget-object v2, p0, Lo/bu;->onMessageChannelReady:Lo/bs;

    invoke-virtual {v2, v0}, Lo/bs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/bn;->onMessageChannelReady()Lo/setNotificationInterceptionEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/setNotificationInterceptionEnabled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setNotificationInterceptionEnabled<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lo/bn;->onRelationshipValidationResult()Lo/br;

    move-result-object v0

    invoke-virtual {v0}, Lo/bn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo/setNotificationInterceptionEnabled;

    return-object v0
.end method

.method final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 17
    iget v0, p0, Lo/bu;->ICustomTabsCallback:I

    return v0
.end method
