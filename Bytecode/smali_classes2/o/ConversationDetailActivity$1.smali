.class final Lo/ConversationDetailActivity$1;
.super Lo/I;
.source ""

# interfaces
.implements Lo/ConversationDetailActivity$10;
.implements Lo/PictureAttachmentActivity$1;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/I<",
        "Ljava/lang/Integer;",
        ">;",
        "Lo/ConversationDetailActivity$10;",
        "Lo/PictureAttachmentActivity$1;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/ConversationDetailActivity$1;


# instance fields
.field private onMessageChannelReady:[I

.field private onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 130
    new-instance v0, Lo/ConversationDetailActivity$1;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2, v1}, Lo/ConversationDetailActivity$1;-><init>([II)V

    .line 131
    sput-object v0, Lo/ConversationDetailActivity$1;->ICustomTabsCallback:Lo/ConversationDetailActivity$1;

    invoke-virtual {v0}, Lo/I;->onMessageChannelReady()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lo/ConversationDetailActivity$1;-><init>([II)V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/I;-><init>()V

    .line 5
    iput-object p1, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    .line 6
    iput p2, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    return-void
.end method

.method public static onNavigationEvent()Lo/ConversationDetailActivity$1;
    .locals 1

    .line 1
    sget-object v0, Lo/ConversationDetailActivity$1;->ICustomTabsCallback:Lo/ConversationDetailActivity$1;

    return-object v0
.end method

.method private final onPostMessage(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 83
    iget v0, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    if-ge p1, v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$1;->onRelationshipValidationResult(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final onRelationshipValidationResult(I)Ljava/lang/String;
    .locals 3

    .line 86
    iget v0, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

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
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lo/ConversationDetailActivity$1;->onNavigationEvent(I)Lo/ConversationDetailActivity$10;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 4

    .line 106
    check-cast p2, Ljava/lang/Integer;

    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 108
    invoke-virtual {p0}, Lo/I;->G_()V

    if-ltz p1, :cond_1

    .line 109
    iget v0, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    if-gt p1, v0, :cond_1

    .line 111
    iget-object v1, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 112
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 113
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 114
    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 115
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v1, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    .line 118
    :goto_0
    iget-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    aput p2, v0, p1

    .line 119
    iget p1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    .line 120
    iget p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

    return-void

    .line 110
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$1;->onRelationshipValidationResult(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 122
    check-cast p1, Ljava/lang/Integer;

    .line 123
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/ConversationDetailActivity$1;->onMessageChannelReady(I)V

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
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lo/I;->G_()V

    .line 58
    invoke-static {p1}, Lo/aw;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    instance-of v0, p1, Lo/ConversationDetailActivity$1;

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Lo/I;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 61
    :cond_0
    check-cast p1, Lo/ConversationDetailActivity$1;

    .line 62
    iget v0, p1, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 64
    iget v3, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 68
    iget-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 69
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    .line 70
    :cond_2
    iget-object v0, p1, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    iget-object v2, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    iget v4, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    iget p1, p1, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput v3, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    .line 72
    iget p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

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
    invoke-virtual {p0, p1}, Lo/ConversationDetailActivity$1;->indexOf(Ljava/lang/Object;)I

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
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lo/ConversationDetailActivity$1;

    if-nez v1, :cond_1

    .line 18
    invoke-super {p0, p1}, Lo/I;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :cond_1
    check-cast p1, Lo/ConversationDetailActivity$1;

    .line 20
    iget v1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    iget v2, p1, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 22
    :cond_2
    iget-object p1, p1, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    const/4 v1, 0x0

    .line 23
    :goto_0
    iget v2, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    if-ge v1, v2, :cond_4

    .line 24
    iget-object v2, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final extraCallback(I)I
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$1;->onPostMessage(I)V

    .line 37
    iget-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    aget p1, v0, p1

    return p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lo/ConversationDetailActivity$1;->extraCallback(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget v2, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v2, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 38
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 41
    invoke-virtual {p0}, Lo/ConversationDetailActivity$1;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 43
    iget-object v3, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final onMessageChannelReady(I)V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lo/I;->G_()V

    .line 50
    iget v0, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    iget-object v1, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    .line 51
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 52
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 53
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iput-object v2, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    .line 55
    :cond_0
    iget-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    iget v1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    aput p1, v0, v1

    return-void
.end method

.method public final onNavigationEvent(I)Lo/ConversationDetailActivity$10;
    .locals 2

    .line 33
    iget v0, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    if-lt p1, v0, :cond_0

    .line 35
    new-instance v0, Lo/ConversationDetailActivity$1;

    iget-object v1, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    invoke-direct {v0, p1, v1}, Lo/ConversationDetailActivity$1;-><init>([II)V

    return-object v0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lo/I;->G_()V

    .line 98
    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$1;->onPostMessage(I)V

    .line 99
    iget-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    aget v1, v0, p1

    .line 100
    iget v2, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 101
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_0
    iget p1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    .line 103
    iget p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .line 74
    invoke-virtual {p0}, Lo/I;->G_()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget v2, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    if-ge v1, v2, :cond_1

    .line 76
    iget-object v2, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object p1, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget p1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    sub-int/2addr p1, v3

    iput p1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    .line 79
    iget p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

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
    invoke-virtual {p0}, Lo/I;->G_()V

    if-lt p2, p1, :cond_0

    .line 11
    iget-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    iget v1, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    .line 13
    iget p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ConversationDetailActivity$1;->modCount:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 87
    check-cast p2, Ljava/lang/Integer;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 89
    invoke-virtual {p0}, Lo/I;->G_()V

    .line 90
    invoke-direct {p0, p1}, Lo/ConversationDetailActivity$1;->onPostMessage(I)V

    .line 91
    iget-object v0, p0, Lo/ConversationDetailActivity$1;->onMessageChannelReady:[I

    aget v1, v0, p1

    .line 92
    aput p2, v0, p1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 48
    iget v0, p0, Lo/ConversationDetailActivity$1;->onNavigationEvent:I

    return v0
.end method
