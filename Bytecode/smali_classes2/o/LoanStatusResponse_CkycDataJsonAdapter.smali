.class final Lo/LoanStatusResponse_CkycDataJsonAdapter;
.super Lo/LoanStatusResponse$Detail;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse$Detail<",
        "Ljava/lang/Float;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/LoanStatusResponse_CkycDataJsonAdapter;


# instance fields
.field private onMessageChannelReady:[F

.field private onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    invoke-direct {v0}, Lo/LoanStatusResponse_CkycDataJsonAdapter;-><init>()V

    sput-object v0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_CkycDataJsonAdapter;

    invoke-virtual {v0}, Lo/LoanStatusResponse$Detail;->onPostMessage()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;-><init>([FI)V

    return-void
.end method

.method private constructor <init>([FI)V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse$Detail;-><init>()V

    iput-object p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    iput p2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final ICustomTabsCallback(IF)V
    .locals 4

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    if-ltz p1, :cond_1

    iget v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    if-gt p1, v0, :cond_1

    iget-object v1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    :goto_0
    iget-object v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    aput p2, v0, p1

    iget p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    iget p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final onNavigationEvent(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

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
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->ICustomTabsCallback(IF)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    invoke-static {p1}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lo/LoanStatusResponse$Detail;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    check-cast p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    iget v0, p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    iget v3, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    iget-object v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    array-length v2, v0

    if-le v3, v2, :cond_2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    :cond_2
    iget-object v0, p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    iget-object v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    iget v4, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    iget p1, p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    iget p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    return v0

    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lo/LoanStatusResponse$Detail;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    iget v1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    iget v2, p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    aget v2, v2, v1

    aget v4, p1, v1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic onPostMessage(I)Lo/LoanStatusResponse_MandateDetailsJsonAdapter;
    .locals 2

    iget v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    if-lt p1, v0, :cond_0

    new-instance v0, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    iget-object v1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget v1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    invoke-direct {v0, p1, v1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;-><init>([FI)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final onPostMessage(F)V
    .locals 1

    iget v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    invoke-direct {p0, v0, p1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->ICustomTabsCallback(IF)V

    return-void
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    invoke-direct {p0, p1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    aget v1, v0, p1

    iget v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    iget p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    iget p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    iget v1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    iget p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->modCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    invoke-direct {p0, p1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onMessageChannelReady:[F

    aget v1, v0, p1

    aput p2, v0, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onNavigationEvent:I

    return v0
.end method
