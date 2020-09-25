.class final Lo/isMerge$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lo/addWrite<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
        "",
        "currentIndex",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/util/List;

.field private synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lo/isMerge$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    iput-boolean p2, p0, Lo/isMerge$extraCallback;->onPostMessage:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2170
    iget-object v0, p0, Lo/isMerge$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iget-boolean v7, p0, Lo/isMerge$extraCallback;->onPostMessage:Z

    const/4 v1, 0x0

    const/4 v8, 0x0

    if-nez v7, :cond_5

    .line 3897
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 3898
    check-cast v0, Ljava/lang/Iterable;

    const-string v2, "$this$single"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4530
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/util/List;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    .line 4549
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4550
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List has more than one element."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 4548
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "List is empty."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 4532
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4533
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4535
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4536
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 3898
    :goto_0
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    .line 3899
    invoke-static {p1, v0, p2, v1, v2}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-ltz p1, :cond_10

    .line 3900
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5043
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, p1, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 4537
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Collection has more than one element."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 4534
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection is empty."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    if-gez p2, :cond_6

    const/4 p2, 0x0

    .line 3903
    :cond_6
    new-instance v1, Lo/forEachTree;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lo/forEachTree;-><init>(II)V

    check-cast v1, Lo/canBeRepresentedAsLong;

    .line 3905
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 9087
    iget p2, v1, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 9092
    iget v9, v1, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    .line 9097
    iget v10, v1, Lo/canBeRepresentedAsLong;->onPostMessage:I

    if-ltz v10, :cond_7

    if-gt p2, v9, :cond_10

    goto :goto_1

    :cond_7
    if-lt p2, v9, :cond_10

    .line 3907
    :goto_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 4428
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 3907
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, p2

    move v6, v7

    invoke-static/range {v1 .. v6}, Lo/childWrites;->onPostMessage(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_9
    move-object v12, v8

    :goto_2
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 3909
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 10043
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, p1, v12}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    if-eq p2, v9, :cond_10

    add-int/2addr p2, v10

    goto :goto_1

    .line 10087
    :cond_b
    iget p2, v1, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 10092
    iget v2, v1, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    .line 10097
    iget v1, v1, Lo/canBeRepresentedAsLong;->onPostMessage:I

    if-ltz v1, :cond_c

    if-gt p2, v2, :cond_10

    goto :goto_3

    :cond_c
    if-lt p2, v2, :cond_10

    .line 3913
    :goto_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 4430
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 3913
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v6, p1, p2, v5, v7}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_4

    :cond_e
    move-object v4, v8

    :goto_4
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 3915
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 11043
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, p1, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_f
    if-eq p2, v2, :cond_10

    add-int/2addr p2, v1

    goto :goto_3

    :cond_10
    move-object p2, v8

    :goto_5
    if-eqz p2, :cond_11

    .line 12027
    iget-object p1, p2, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 12028
    iget-object p2, p2, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 2170
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 12043
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, p1, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_11
    return-object v8
.end method
