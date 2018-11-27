.class public Landroid/support/v7/util/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/SortedList$BatchedCallback;,
        Landroid/support/v7/util/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

.field private mCallback:Landroid/support/v7/util/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mMergedSize:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/support/v7/util/SortedList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xa

    .line 82
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/support/v7/util/SortedList$Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    .line 94
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 392
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 395
    :cond_0
    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge v0, v2, :cond_2

    .line 396
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 397
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p2, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 400
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, p2, v0

    return v0

    .line 403
    :cond_1
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 404
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    return v0

    .line 409
    :cond_2
    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/support/v7/util/SortedList;->addToData(ILjava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 411
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    :cond_3
    return v0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 194
    :cond_1
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 195
    iput v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 196
    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iput v2, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    .line 198
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 200
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->deduplicate([Ljava/lang/Object;)I

    move-result v2

    .line 201
    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v3, :cond_2

    .line 202
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 203
    iput v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 204
    iput v2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 205
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_1

    .line 207
    :cond_2
    invoke-direct {p0, p1, v2}, Landroid/support/v7/util/SortedList;->merge([Ljava/lang/Object;I)V

    :goto_1
    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    :cond_3
    return-void
.end method

.method private addToData(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 643
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-le p1, v0, :cond_0

    .line 644
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot add item to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because size is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 647
    :cond_0
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 649
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 650
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 651
    aput-object p2, v0, p1

    .line 652
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v2, p1

    invoke-static {p2, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    goto :goto_0

    .line 656
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 659
    :goto_0
    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    return-void
.end method

.method private deduplicate([Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 224
    array-length v0, p1

    if-nez v0, :cond_0

    .line 225
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input array must be non-empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 233
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_6

    .line 234
    aget-object v3, p1, v1

    .line 236
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 238
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input must be sorted in ascending order."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez v4, :cond_4

    .line 243
    invoke-direct {p0, v3, p1, v0, v2}, Landroid/support/v7/util/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 246
    aput-object v3, p1, v4

    goto :goto_1

    :cond_2
    if-eq v2, v1, :cond_3

    .line 250
    aput-object v3, p1, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eq v2, v1, :cond_5

    .line 257
    aput-object v3, p1, v2

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_5

    add-int v2, p3, p4

    .line 594
    div-int/lit8 v2, v2, 0x2

    .line 595
    aget-object v3, p2, v2

    .line 596
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, v3, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move p3, v2

    goto :goto_0

    :cond_0
    if-nez v4, :cond_4

    .line 600
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p2, v3, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    .line 603
    :cond_1
    invoke-direct {p0, p1, v2, p3, p4}, Landroid/support/v7/util/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result p1

    if-ne p5, v1, :cond_3

    if-ne p1, v0, :cond_2

    move p1, v2

    :cond_2
    return p1

    :cond_3
    return p1

    :cond_4
    move p4, v2

    goto :goto_0

    :cond_5
    if-ne p5, v1, :cond_6

    goto :goto_1

    :cond_6
    move p3, v0

    :goto_1
    return p3
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    :goto_0
    if-ge p3, p4, :cond_1

    .line 268
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    aget-object v1, p2, p3

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p3, :cond_2

    .line 620
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 621
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 625
    :cond_0
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p4, :cond_4

    .line 630
    iget-object p3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object p3, p3, p2

    .line 631
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p3, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 635
    :cond_3
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p3, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return p2

    :cond_4
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method private merge([Ljava/lang/Object;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 279
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0xa

    .line 280
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 281
    iput v0, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 284
    :cond_0
    :goto_0
    iget v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v2, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-lt v1, v2, :cond_1

    if-ge v0, p2, :cond_3

    .line 285
    :cond_1
    iget v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v2, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-ne v1, v2, :cond_2

    sub-int/2addr p2, v0

    .line 288
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget p1, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 290
    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 291
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v0, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_1

    :cond_2
    if-ne v0, p2, :cond_4

    .line 297
    iget p1, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    iget p2, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int/2addr p1, p2

    .line 298
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v0, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    invoke-static {p2, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget p2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    :cond_3
    :goto_1
    return-void

    .line 303
    :cond_4
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    aget-object v1, v1, v2

    .line 304
    aget-object v2, p1, v0

    .line 305
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_5

    .line 308
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    aput-object v2, v1, v3

    .line 309
    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v1, v4

    iput v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    .line 311
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    .line 312
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 314
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    aput-object v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    .line 316
    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 317
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    goto/16 :goto_0

    .line 323
    :cond_6
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    aput-object v1, v2, v3

    .line 324
    iget v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v1, v4

    iput v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    goto/16 :goto_0
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 443
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 447
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private removeItemAtIndex(IZ)V
    .locals 5

    .line 452
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 454
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    if-eqz p2, :cond_0

    .line 456
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p2, p1, v4}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    :cond_0
    return-void
.end method

.method private throwIfMerging()V
    .locals 2

    .line 330
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method from within addAll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 185
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 152
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 156
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 159
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    invoke-direct {p0, p2}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public beginBatchedUpdates()V
    .locals 2

    .line 368
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 369
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v0, :cond_0

    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {v0, v1}, Landroid/support/v7/util/SortedList$BatchedCallback;-><init>(Landroid/support/v7/util/SortedList$Callback;)V

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    .line 375
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    return-void
.end method

.method public clear()V
    .locals 4

    .line 666
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 667
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 671
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 672
    iput v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 673
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v1, v3, v0}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    return-void
.end method

.method public endBatchedUpdates()V
    .locals 2

    .line 382
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 383
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    check-cast v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 386
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    iget-object v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 555
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 562
    iget v0, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    if-lt p1, v0, :cond_1

    .line 563
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1

    .line 566
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 556
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to get item at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 579
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 583
    :cond_0
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v6, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 585
    iget v0, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    return v1

    .line 589
    :cond_2
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result p1

    return p1
.end method

.method public recalculatePositionOfItemAt(I)V
    .locals 2

    .line 535
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 537
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 538
    invoke-direct {p0, p1, v1}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 539
    invoke-direct {p0, v0, v1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 541
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    const/4 v0, 0x1

    .line 425
    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 436
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 437
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 438
    invoke-direct {p0, p1, v1}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 481
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 482
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_1

    .line 484
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eq v0, p2, :cond_3

    .line 487
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_3

    .line 489
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    if-eqz v3, :cond_2

    .line 491
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p2, p1, v1}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    :cond_2
    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 497
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    .line 500
    :cond_4
    invoke-direct {p0, p1, v2}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 501
    invoke-direct {p0, p2, v2}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result p2

    if-eq p1, p2, :cond_5

    .line 503
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    :cond_5
    return-void
.end method
