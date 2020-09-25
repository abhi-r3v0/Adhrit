.class public abstract Lo/br;
.super Lo/bn;
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
        "Lo/bn<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/setNotificationSound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNotificationSound<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 136
    new-instance v0, Lo/bq;

    sget-object v1, Lo/bp;->extraCallback:Lo/br;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/bq;-><init>(Lo/br;I)V

    sput-object v0, Lo/br;->onPostMessage:Lo/setNotificationSound;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/bn;-><init>()V

    return-void
.end method

.method public static asInterface()Lo/br;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/br<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/bp;->extraCallback:Lo/br;

    return-object v0
.end method

.method public static extraCallback(Ljava/util/Collection;)Lo/br;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lo/br<",
            "TE;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lo/bn;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Lo/bn;

    invoke-virtual {p0}, Lo/bn;->onRelationshipValidationResult()Lo/br;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lo/bn;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/bn;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 5
    array-length v0, p0

    if-nez v0, :cond_0

    .line 7
    sget-object p0, Lo/bp;->extraCallback:Lo/br;

    return-object p0

    .line 9
    :cond_0
    new-instance v1, Lo/bp;

    invoke-direct {v1, p0, v0}, Lo/bp;-><init>([Ljava/lang/Object;I)V

    return-object v1

    :cond_1
    return-object p0

    .line 11
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 15
    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const/16 v0, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "at index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_5

    .line 23
    sget-object p0, Lo/bp;->extraCallback:Lo/br;

    return-object p0

    .line 25
    :cond_5
    new-instance v1, Lo/bp;

    invoke-direct {v1, p0, v0}, Lo/bp;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method static onNavigationEvent([Ljava/lang/Object;)Lo/br;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lo/br<",
            "TE;>;"
        }
    .end annotation

    .line 27
    array-length v0, p0

    if-nez v0, :cond_0

    .line 29
    sget-object p0, Lo/bp;->extraCallback:Lo/br;

    return-object p0

    .line 31
    :cond_0
    new-instance v1, Lo/bp;

    invoke-direct {v1, p0, v0}, Lo/bp;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method


# virtual methods
.method ICustomTabsCallback([Ljava/lang/Object;I)I
    .locals 4

    .line 92
    invoke-virtual {p0}, Lo/br;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 94
    invoke-virtual {p0, v1}, Lo/br;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
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

    .line 89
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

    .line 87
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lo/br;->indexOf(Ljava/lang/Object;)I

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

    .line 98
    invoke-static {p0}, Lo/bZ;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 100
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 101
    check-cast p1, Ljava/util/List;

    .line 102
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 104
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 106
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/InterstitialActivity$3;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 109
    :cond_2
    move-object v0, p0

    check-cast v0, Lo/br;

    invoke-virtual {v0}, Lo/br;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 112
    invoke-virtual {v0, v4}, Lo/br;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 114
    invoke-static {v5, v6}, Lo/InterstitialActivity$3;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 116
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 119
    invoke-virtual {p0}, Lo/br;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 121
    invoke-virtual {p0, v2}, Lo/br;->get(I)Ljava/lang/Object;

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

    .line 36
    :cond_0
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_5

    .line 38
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    :goto_0
    if-ge v2, v1, :cond_4

    .line 41
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

    .line 45
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

    .line 50
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 51
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 52
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lo/InterstitialActivity$3;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 53
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lo/bn;->onMessageChannelReady()Lo/setNotificationInterceptionEnabled;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 57
    :cond_0
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    .line 60
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_4

    .line 61
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 65
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

    .line 70
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 71
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 72
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lo/InterstitialActivity$3;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lo/br;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lo/setNotificationSound;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lo/br;->size()I

    move-result v0

    invoke-static {p1, v0}, Lo/bZ;->onMessageChannelReady(II)I

    .line 129
    invoke-virtual {p0}, Lo/br;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object p1, Lo/br;->onPostMessage:Lo/setNotificationSound;

    return-object p1

    .line 131
    :cond_0
    new-instance v0, Lo/bq;

    invoke-direct {v0, p0, p1}, Lo/bq;-><init>(Lo/br;I)V

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/setNotificationInterceptionEnabled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setNotificationInterceptionEnabled<",
            "TE;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lo/br;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lo/setNotificationSound;

    return-object v0
.end method

.method public onPostMessage(II)Lo/br;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/br<",
            "TE;>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lo/br;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lo/bZ;->onPostMessage(III)V

    sub-int/2addr p2, p1

    .line 79
    invoke-virtual {p0}, Lo/br;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 82
    sget-object p1, Lo/bp;->extraCallback:Lo/br;

    return-object p1

    .line 85
    :cond_1
    new-instance v0, Lo/bt;

    invoke-direct {v0, p0, p1, p2}, Lo/bt;-><init>(Lo/br;II)V

    return-object v0
.end method

.method public final onRelationshipValidationResult()Lo/br;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/br<",
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

    .line 90
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

    .line 88
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lo/br;->onPostMessage(II)Lo/br;

    move-result-object p1

    return-object p1
.end method
