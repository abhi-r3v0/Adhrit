.class final Lo/gz;
.super Lo/shouldSkipField;
.source ""

# interfaces
.implements Lo/fb;
.implements Lo/getJSONArray;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/shouldSkipField<",
        "Ljava/lang/Long;",
        ">;",
        "Lo/fb;",
        "Lo/getJSONArray;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/gz;


# instance fields
.field private extraCallback:I

.field private onMessageChannelReady:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 130
    new-instance v0, Lo/gz;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lo/gz;-><init>([JI)V

    .line 131
    sput-object v0, Lo/gz;->ICustomTabsCallback:Lo/gz;

    invoke-virtual {v0}, Lo/shouldSkipField;->onPostMessage()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lo/gz;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/shouldSkipField;-><init>()V

    .line 5
    iput-object p1, p0, Lo/gz;->onMessageChannelReady:[J

    .line 6
    iput p2, p0, Lo/gz;->extraCallback:I

    return-void
.end method

.method private final extraCallback(I)Ljava/lang/String;
    .locals 3

    .line 86
    iget v0, p0, Lo/gz;->extraCallback:I

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

.method public static onMessageChannelReady()Lo/gz;
    .locals 1

    .line 1
    sget-object v0, Lo/gz;->ICustomTabsCallback:Lo/gz;

    return-object v0
.end method

.method private final onPostMessage(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 83
    iget v0, p0, Lo/gz;->extraCallback:I

    if-ge p1, v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/gz;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)J
    .locals 3

    .line 36
    invoke-direct {p0, p1}, Lo/gz;->onPostMessage(I)V

    .line 37
    iget-object v0, p0, Lo/gz;->onMessageChannelReady:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final ICustomTabsCallback(J)V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lo/shouldSkipField;->J_()V

    .line 50
    iget v0, p0, Lo/gz;->extraCallback:I

    iget-object v1, p0, Lo/gz;->onMessageChannelReady:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    .line 51
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 52
    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 53
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iput-object v2, p0, Lo/gz;->onMessageChannelReady:[J

    .line 55
    :cond_0
    iget-object v0, p0, Lo/gz;->onMessageChannelReady:[J

    iget v1, p0, Lo/gz;->extraCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/gz;->extraCallback:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 5

    .line 106
    check-cast p2, Ljava/lang/Long;

    .line 107
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 108
    invoke-virtual {p0}, Lo/shouldSkipField;->J_()V

    if-ltz p1, :cond_1

    .line 109
    iget p2, p0, Lo/gz;->extraCallback:I

    if-gt p1, p2, :cond_1

    .line 111
    iget-object v2, p0, Lo/gz;->onMessageChannelReady:[J

    array-length v3, v2

    if-ge p2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    .line 112
    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x3

    .line 113
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 114
    new-array p2, p2, [J

    const/4 v3, 0x0

    .line 115
    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v2, p0, Lo/gz;->onMessageChannelReady:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lo/gz;->extraCallback:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object p2, p0, Lo/gz;->onMessageChannelReady:[J

    .line 118
    :goto_0
    iget-object p2, p0, Lo/gz;->onMessageChannelReady:[J

    aput-wide v0, p2, p1

    .line 119
    iget p1, p0, Lo/gz;->extraCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/gz;->extraCallback:I

    .line 120
    iget p1, p0, Lo/gz;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/gz;->modCount:I

    return-void

    .line 110
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/gz;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 2

    .line 122
    check-cast p1, Ljava/lang/Long;

    .line 123
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/gz;->ICustomTabsCallback(J)V

    const/4 p1, 0x1

    return p1
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

    .line 57
    invoke-virtual {p0}, Lo/shouldSkipField;->J_()V

    .line 58
    invoke-static {p1}, Lo/fG;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    instance-of v0, p1, Lo/gz;

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Lo/shouldSkipField;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 61
    :cond_0
    check-cast p1, Lo/gz;

    .line 62
    iget v0, p1, Lo/gz;->extraCallback:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 64
    iget v3, p0, Lo/gz;->extraCallback:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 68
    iget-object v0, p0, Lo/gz;->onMessageChannelReady:[J

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 69
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lo/gz;->onMessageChannelReady:[J

    .line 70
    :cond_2
    iget-object v0, p1, Lo/gz;->onMessageChannelReady:[J

    iget-object v2, p0, Lo/gz;->onMessageChannelReady:[J

    iget v4, p0, Lo/gz;->extraCallback:I

    iget p1, p1, Lo/gz;->extraCallback:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput v3, p0, Lo/gz;->extraCallback:I

    .line 72
    iget p1, p0, Lo/gz;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/gz;->modCount:I

    return v0

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lo/gz;->indexOf(Ljava/lang/Object;)I

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

    .line 17
    :cond_0
    instance-of v1, p1, Lo/gz;

    if-nez v1, :cond_1

    .line 18
    invoke-super {p0, p1}, Lo/shouldSkipField;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :cond_1
    check-cast p1, Lo/gz;

    .line 20
    iget v1, p0, Lo/gz;->extraCallback:I

    iget v2, p1, Lo/gz;->extraCallback:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 22
    :cond_2
    iget-object p1, p1, Lo/gz;->onMessageChannelReady:[J

    const/4 v1, 0x0

    .line 23
    :goto_0
    iget v2, p0, Lo/gz;->extraCallback:I

    if-ge v1, v2, :cond_4

    .line 24
    iget-object v2, p0, Lo/gz;->onMessageChannelReady:[J

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

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 128
    invoke-virtual {p0, p1}, Lo/gz;->ICustomTabsCallback(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget v2, p0, Lo/gz;->extraCallback:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v2, p0, Lo/gz;->onMessageChannelReady:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lo/fG;->onNavigationEvent(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 7

    .line 38
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 41
    invoke-virtual {p0}, Lo/gz;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 43
    iget-object v4, p0, Lo/gz;->onMessageChannelReady:[J

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

.method public final onMessageChannelReady(I)Lo/fb;
    .locals 2

    .line 33
    iget v0, p0, Lo/gz;->extraCallback:I

    if-lt p1, v0, :cond_0

    .line 35
    new-instance v0, Lo/gz;

    iget-object v1, p0, Lo/gz;->onMessageChannelReady:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lo/gz;->extraCallback:I

    invoke-direct {v0, p1, v1}, Lo/gz;-><init>([JI)V

    return-object v0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final synthetic onNavigationEvent(I)Lo/ay$1;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lo/gz;->onMessageChannelReady(I)Lo/fb;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .line 97
    invoke-virtual {p0}, Lo/shouldSkipField;->J_()V

    .line 98
    invoke-direct {p0, p1}, Lo/gz;->onPostMessage(I)V

    .line 99
    iget-object v0, p0, Lo/gz;->onMessageChannelReady:[J

    aget-wide v1, v0, p1

    .line 100
    iget v3, p0, Lo/gz;->extraCallback:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 101
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_0
    iget p1, p0, Lo/gz;->extraCallback:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/gz;->extraCallback:I

    .line 103
    iget p1, p0, Lo/gz;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/gz;->modCount:I

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .line 74
    invoke-virtual {p0}, Lo/shouldSkipField;->J_()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget v2, p0, Lo/gz;->extraCallback:I

    if-ge v1, v2, :cond_1

    .line 76
    iget-object v2, p0, Lo/gz;->onMessageChannelReady:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object p1, p0, Lo/gz;->onMessageChannelReady:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lo/gz;->extraCallback:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget p1, p0, Lo/gz;->extraCallback:I

    sub-int/2addr p1, v3

    iput p1, p0, Lo/gz;->extraCallback:I

    .line 79
    iget p1, p0, Lo/gz;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/gz;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lo/shouldSkipField;->J_()V

    if-lt p2, p1, :cond_0

    .line 11
    iget-object v0, p0, Lo/gz;->onMessageChannelReady:[J

    iget v1, p0, Lo/gz;->extraCallback:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lo/gz;->extraCallback:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lo/gz;->extraCallback:I

    .line 13
    iget p1, p0, Lo/gz;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/gz;->modCount:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 87
    check-cast p2, Ljava/lang/Long;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 89
    invoke-virtual {p0}, Lo/shouldSkipField;->J_()V

    .line 90
    invoke-direct {p0, p1}, Lo/gz;->onPostMessage(I)V

    .line 91
    iget-object p2, p0, Lo/gz;->onMessageChannelReady:[J

    aget-wide v2, p2, p1

    .line 92
    aput-wide v0, p2, p1

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 48
    iget v0, p0, Lo/gz;->extraCallback:I

    return v0
.end method
