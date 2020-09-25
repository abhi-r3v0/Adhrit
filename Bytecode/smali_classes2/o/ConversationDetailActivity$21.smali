.class final Lo/ConversationDetailActivity$21;
.super Lo/I;
.source ""

# interfaces
.implements Lo/PictureAttachmentActivity$1;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/I<",
        "Ljava/lang/Long;",
        ">;",
        "Lo/PictureAttachmentActivity$1;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/ConversationDetailActivity$21;


# instance fields
.field private ICustomTabsCallback:I

.field private onMessageChannelReady:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 129
    new-instance v0, Lo/ConversationDetailActivity$21;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lo/ConversationDetailActivity$21;-><init>([JI)V

    .line 130
    sput-object v0, Lo/ConversationDetailActivity$21;->onPostMessage:Lo/ConversationDetailActivity$21;

    invoke-virtual {v0}, Lo/I;->onMessageChannelReady()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lo/ConversationDetailActivity$21;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/I;-><init>()V

    .line 4
    iput-object p1, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    .line 5
    iput p2, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    return-void
.end method

.method private final onMessageChannelReady(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 71
    iget v0, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    if-ge p1, v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$21;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final onNavigationEvent(I)Ljava/lang/String;
    .locals 3

    .line 74
    iget v0, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(I)Lo/ConversationDetailActivity$12;
    .locals 2

    .line 122
    iget v0, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    if-lt p1, v0, :cond_0

    .line 124
    new-instance v0, Lo/ConversationDetailActivity$21;

    iget-object v1, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    invoke-direct {v0, p1, v1}, Lo/ConversationDetailActivity$21;-><init>([JI)V

    return-object v0

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 5

    .line 94
    check-cast p2, Ljava/lang/Long;

    .line 95
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 96
    invoke-virtual {p0}, Lo/I;->G_()V

    if-ltz p1, :cond_1

    .line 97
    iget p2, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    if-gt p1, p2, :cond_1

    .line 99
    iget-object v2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    array-length v3, v2

    if-ge p2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    .line 100
    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x3

    .line 101
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 102
    new-array p2, p2, [J

    const/4 v3, 0x0

    .line 103
    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object p2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    .line 106
    :goto_0
    iget-object p2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    aput-wide v0, p2, p1

    .line 107
    iget p1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    .line 108
    iget p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    return-void

    .line 98
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$21;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 6

    .line 110
    check-cast p1, Ljava/lang/Long;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 112
    invoke-virtual {p0}, Lo/I;->G_()V

    .line 113
    iget p1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    iget-object v2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    mul-int/lit8 v3, p1, 0x3

    .line 114
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    .line 115
    new-array v3, v3, [J

    const/4 v5, 0x0

    .line 116
    invoke-static {v2, v5, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object v3, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    .line 118
    :cond_0
    iget-object p1, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    iget v2, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    aput-wide v0, p1, v2

    return v4
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lo/I;->G_()V

    .line 46
    invoke-static {p1}, Lo/aw;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    instance-of v0, p1, Lo/ConversationDetailActivity$21;

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Lo/I;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 49
    :cond_0
    check-cast p1, Lo/ConversationDetailActivity$21;

    .line 50
    iget v0, p1, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 52
    iget v3, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 56
    iget-object v0, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 57
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    .line 58
    :cond_2
    iget-object v0, p1, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    iget-object v2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    iget v4, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    iget p1, p1, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput v3, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    .line 60
    iget p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    return v0

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lo/ConversationDetailActivity$21;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lo/ConversationDetailActivity$21;

    if-nez v1, :cond_1

    .line 17
    invoke-super {p0, p1}, Lo/I;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_1
    check-cast p1, Lo/ConversationDetailActivity$21;

    .line 19
    iget v1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    iget v2, p1, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 21
    :cond_2
    iget-object p1, p1, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    const/4 v1, 0x0

    .line 22
    :goto_0
    iget v2, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_4

    .line 23
    iget-object v2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final extraCallback(I)J
    .locals 3

    .line 32
    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$21;->onMessageChannelReady(I)V

    .line 33
    iget-object v0, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 127
    invoke-virtual {p0, p1}, Lo/ConversationDetailActivity$21;->extraCallback(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget v2, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 7

    .line 34
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 37
    invoke-virtual {p0}, Lo/ConversationDetailActivity$21;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 39
    iget-object v4, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    aget-wide v5, v4, v0

    cmp-long v4, v5, v2

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .line 85
    invoke-virtual {p0}, Lo/I;->G_()V

    .line 86
    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$21;->onMessageChannelReady(I)V

    .line 87
    iget-object v0, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    aget-wide v1, v0, p1

    .line 88
    iget v3, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 89
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :cond_0
    iget p1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    .line 91
    iget p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .line 62
    invoke-virtual {p0}, Lo/I;->G_()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget v2, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_1

    .line 64
    iget-object v2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object p1, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget p1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    sub-int/2addr p1, v3

    iput p1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    .line 67
    iget p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lo/I;->G_()V

    if-lt p2, p1, :cond_0

    .line 10
    iget-object v0, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    iget v1, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    .line 12
    iget p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ConversationDetailActivity$21;->modCount:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 75
    check-cast p2, Ljava/lang/Long;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 77
    invoke-virtual {p0}, Lo/I;->G_()V

    .line 78
    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$21;->onMessageChannelReady(I)V

    .line 79
    iget-object p2, p0, Lo/ConversationDetailActivity$21;->onMessageChannelReady:[J

    aget-wide v2, p2, p1

    .line 80
    aput-wide v0, p2, p1

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 44
    iget v0, p0, Lo/ConversationDetailActivity$21;->ICustomTabsCallback:I

    return v0
.end method
