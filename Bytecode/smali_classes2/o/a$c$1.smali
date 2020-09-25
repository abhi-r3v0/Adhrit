.class public abstract Lo/a$c$1;
.super Lo/isClosed;
.source ""

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/isClosed<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fn<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 118
    new-instance v0, Lo/ff;

    sget-object v1, Lo/fx;->onMessageChannelReady:Lo/a$c$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ff;-><init>(Lo/a$c$1;I)V

    sput-object v0, Lo/a$c$1;->onNavigationEvent:Lo/fn;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/isClosed;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback([Ljava/lang/Object;)Lo/a$c$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation

    .line 10
    array-length v0, p0

    invoke-static {p0, v0}, Lo/a$c$1;->onNavigationEvent([Ljava/lang/Object;I)Lo/a$c$1;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/Object;)Lo/a$c$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    :goto_0
    if-gtz p0, :cond_0

    .line 5
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Lo/clearCache;->onNavigationEvent(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1, v0}, Lo/a$c$1;->onNavigationEvent([Ljava/lang/Object;I)Lo/a$c$1;

    move-result-object p0

    return-object p0
.end method

.method static onNavigationEvent([Ljava/lang/Object;I)Lo/a$c$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 12
    sget-object p0, Lo/fx;->onMessageChannelReady:Lo/a$c$1;

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lo/fx;

    invoke-direct {v0, p0, p1}, Lo/fx;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static onPostMessage()Lo/a$c$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/fx;->onMessageChannelReady:Lo/a$c$1;

    return-object v0
.end method


# virtual methods
.method ICustomTabsCallback([Ljava/lang/Object;I)I
    .locals 4

    .line 74
    invoke-virtual {p0}, Lo/a$c$1;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 76
    invoke-virtual {p0, v1}, Lo/a$c$1;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public ICustomTabsCallback(II)Lo/a$c$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lo/a$c$1;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lo/dq;->onNavigationEvent(III)V

    sub-int/2addr p2, p1

    .line 61
    invoke-virtual {p0}, Lo/a$c$1;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 64
    sget-object p1, Lo/fx;->onMessageChannelReady:Lo/a$c$1;

    return-object p1

    .line 67
    :cond_1
    new-instance v0, Lo/fg;

    invoke-direct {v0, p0, p1, p2}, Lo/fg;-><init>(Lo/a$c$1;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lo/a$c$1;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 80
    invoke-static {p0}, Lo/dq;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 82
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 83
    check-cast p1, Ljava/util/List;

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 86
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 88
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 91
    :cond_2
    move-object v0, p0

    check-cast v0, Lo/a$c$1;

    invoke-virtual {v0}, Lo/a$c$1;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 94
    invoke-virtual {v0, v4}, Lo/a$c$1;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 96
    invoke-static {v5, v6}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 98
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final extraCallback()Lo/ft;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ft<",
            "TE;>;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lo/a$c$1;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lo/fn;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 101
    invoke-virtual {p0}, Lo/a$c$1;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 103
    invoke-virtual {p0, v2}, Lo/a$c$1;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_5

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    :goto_0
    if-ge v2, v1, :cond_4

    .line 23
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_4

    .line 27
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0

    .line 32
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 33
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 34
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 35
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lo/isClosed;->extraCallback()Lo/ft;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_4

    .line 43
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 47
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    return v0

    .line 52
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 53
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 54
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lo/a$c$1;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lo/fn;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lo/a$c$1;->size()I

    move-result v0

    invoke-static {p1, v0}, Lo/dq;->onNavigationEvent(II)I

    .line 111
    invoke-virtual {p0}, Lo/a$c$1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object p1, Lo/a$c$1;->onNavigationEvent:Lo/fn;

    return-object p1

    .line 113
    :cond_0
    new-instance v0, Lo/ff;

    invoke-direct {v0, p0, p1}, Lo/ff;-><init>(Lo/a$c$1;I)V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/a$c$1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 108
    invoke-virtual {p0, p1, p2}, Lo/a$c$1;->ICustomTabsCallback(II)Lo/a$c$1;

    move-result-object p1

    return-object p1
.end method
