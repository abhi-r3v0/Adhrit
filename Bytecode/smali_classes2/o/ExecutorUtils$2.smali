.class public Lo/ExecutorUtils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/LogFileManager;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lo/ExecutorUtils$2;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_PATH:Lo/ExecutorUtils$2;


# instance fields
.field private final end:I

.field private final pieces:[Lo/LogFileManager;

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lo/ExecutorUtils$2;

    const-string v1, ""

    invoke-direct {v0, v1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ExecutorUtils$2;->EMPTY_PATH:Lo/ExecutorUtils$2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    const/4 v1, -0x1

    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    new-array v0, v3, [Lo/LogFileManager;

    iput-object v0, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    .line 80
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    .line 81
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 82
    iget-object v5, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v4}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v4

    aput-object v4, v5, v3

    move v3, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_3
    iput v1, p0, Lo/ExecutorUtils$2;->start:I

    .line 86
    iget-object p1, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    array-length p1, p1

    iput p1, p0, Lo/ExecutorUtils$2;->end:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lo/LogFileManager;

    iput-object v0, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    iget-object v4, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v3

    aput-object v3, v4, v2

    move v2, v5

    goto :goto_0

    .line 66
    :cond_0
    iput v1, p0, Lo/ExecutorUtils$2;->start:I

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lo/ExecutorUtils$2;->end:I

    return-void
.end method

.method public varargs constructor <init>([Lo/LogFileManager;)V
    .locals 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/LogFileManager;

    iput-object v0, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lo/ExecutorUtils$2;->start:I

    .line 54
    array-length v1, p1

    iput v1, p0, Lo/ExecutorUtils$2;->end:I

    .line 55
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Can\'t construct a path with a null value!"

    .line 56
    invoke-static {v3, v4}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>([Lo/LogFileManager;II)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    .line 91
    iput p2, p0, Lo/ExecutorUtils$2;->start:I

    .line 92
    iput p3, p0, Lo/ExecutorUtils$2;->end:I

    return-void
.end method

.method static synthetic access$000(Lo/ExecutorUtils$2;)I
    .locals 0

    .line 27
    iget p0, p0, Lo/ExecutorUtils$2;->start:I

    return p0
.end method

.method static synthetic access$100(Lo/ExecutorUtils$2;)I
    .locals 0

    .line 27
    iget p0, p0, Lo/ExecutorUtils$2;->end:I

    return p0
.end method

.method static synthetic access$200(Lo/ExecutorUtils$2;)[Lo/LogFileManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    return-object p0
.end method

.method public static getEmptyPath()Lo/ExecutorUtils$2;
    .locals 1

    .line 48
    sget-object v0, Lo/ExecutorUtils$2;->EMPTY_PATH:Lo/ExecutorUtils$2;

    return-object v0
.end method

.method public static getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;
    .locals 3

    .line 30
    :goto_0
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v1

    if-nez v0, :cond_0

    return-object p1

    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p0

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INTERNAL ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not contained in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lo/ExecutorUtils$2;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    .line 143
    invoke-virtual {v2}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;
    .locals 6

    .line 96
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->size()I

    move-result v0

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    new-array v1, v0, [Lo/LogFileManager;

    .line 98
    iget-object v2, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    iget v3, p0, Lo/ExecutorUtils$2;->start:I

    invoke-virtual {p0}, Lo/ExecutorUtils$2;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v2, p1, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    iget v3, p1, Lo/ExecutorUtils$2;->start:I

    invoke-virtual {p0}, Lo/ExecutorUtils$2;->size()I

    move-result v4

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result p1

    invoke-static {v2, v3, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    new-instance p1, Lo/ExecutorUtils$2;

    invoke-direct {p1, v1, v5, v0}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;II)V

    return-object p1
.end method

.method public child(Lo/LogFileManager;)Lo/ExecutorUtils$2;
    .locals 6

    .line 104
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 105
    new-array v2, v1, [Lo/LogFileManager;

    .line 106
    iget-object v3, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    iget v4, p0, Lo/ExecutorUtils$2;->start:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    aput-object p1, v2, v0

    .line 108
    new-instance p1, Lo/ExecutorUtils$2;

    invoke-direct {p1, v2, v5, v1}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;II)V

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lo/ExecutorUtils$2;

    invoke-virtual {p0, p1}, Lo/ExecutorUtils$2;->compareTo(Lo/ExecutorUtils$2;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/ExecutorUtils$2;)I
    .locals 4

    .line 265
    iget v0, p0, Lo/ExecutorUtils$2;->start:I

    iget v1, p1, Lo/ExecutorUtils$2;->start:I

    :goto_0
    iget v2, p0, Lo/ExecutorUtils$2;->end:I

    if-ge v0, v2, :cond_1

    iget v2, p1, Lo/ExecutorUtils$2;->end:I

    if-ge v1, v2, :cond_1

    .line 266
    iget-object v2, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v2, v2, v0

    iget-object v3, p1, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lo/LogFileManager;->compareTo(Lo/LogFileManager;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_1
    iget v2, p0, Lo/ExecutorUtils$2;->end:I

    if-ne v0, v2, :cond_2

    iget p1, p1, Lo/ExecutorUtils$2;->end:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 273
    :cond_2
    iget p1, p0, Lo/ExecutorUtils$2;->end:I

    if-ne v0, p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public contains(Lo/ExecutorUtils$2;)Z
    .locals 5

    .line 216
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->size()I

    move-result v0

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 220
    :cond_0
    iget v0, p0, Lo/ExecutorUtils$2;->start:I

    .line 221
    iget v1, p1, Lo/ExecutorUtils$2;->start:I

    .line 222
    :goto_0
    iget v3, p0, Lo/ExecutorUtils$2;->end:I

    if-ge v0, v3, :cond_2

    .line 223
    iget-object v3, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v3, v3, v0

    iget-object v4, p1, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 235
    instance-of v0, p1, Lo/ExecutorUtils$2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 241
    :cond_1
    check-cast p1, Lo/ExecutorUtils$2;

    .line 242
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->size()I

    move-result v2

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 245
    :cond_2
    iget v2, p0, Lo/ExecutorUtils$2;->start:I

    iget v3, p1, Lo/ExecutorUtils$2;->start:I

    :goto_0
    iget v4, p0, Lo/ExecutorUtils$2;->end:I

    if-ge v2, v4, :cond_4

    iget v4, p1, Lo/ExecutorUtils$2;->end:I

    if-ge v3, v4, :cond_4

    .line 246
    iget-object v4, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v4, v4, v2

    iget-object v5, p1, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getBack()Lo/LogFileManager;
    .locals 2

    .line 173
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    iget v1, p0, Lo/ExecutorUtils$2;->end:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFront()Lo/LogFileManager;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    iget v1, p0, Lo/ExecutorUtils$2;->start:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getParent()Lo/ExecutorUtils$2;
    .locals 4

    .line 165
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Lo/ExecutorUtils$2;

    iget-object v1, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    iget v2, p0, Lo/ExecutorUtils$2;->start:I

    iget v3, p0, Lo/ExecutorUtils$2;->end:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;II)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 256
    iget v0, p0, Lo/ExecutorUtils$2;->start:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lo/ExecutorUtils$2;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x25

    .line 257
    iget-object v2, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 181
    iget v0, p0, Lo/ExecutorUtils$2;->start:I

    iget v1, p0, Lo/ExecutorUtils$2;->end:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/LogFileManager;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Lo/ExecutorUtils$2$5;

    invoke-direct {v0, p0}, Lo/ExecutorUtils$2$5;-><init>(Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method public popFront()Lo/ExecutorUtils$2;
    .locals 4

    .line 157
    iget v0, p0, Lo/ExecutorUtils$2;->start:I

    .line 158
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_0
    new-instance v1, Lo/ExecutorUtils$2;

    iget-object v2, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    iget v3, p0, Lo/ExecutorUtils$2;->end:I

    invoke-direct {v1, v2, v0, v3}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;II)V

    return-object v1
.end method

.method public size()I
    .locals 2

    .line 185
    iget v0, p0, Lo/ExecutorUtils$2;->end:I

    iget v1, p0, Lo/ExecutorUtils$2;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 113
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    return-object v1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    iget v2, p0, Lo/ExecutorUtils$2;->start:I

    :goto_0
    iget v3, p0, Lo/ExecutorUtils$2;->end:I

    if-ge v2, v3, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v3, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 4

    .line 126
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    return-object v1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    iget v2, p0, Lo/ExecutorUtils$2;->start:I

    :goto_0
    iget v3, p0, Lo/ExecutorUtils$2;->end:I

    if-ge v2, v3, :cond_2

    .line 131
    iget v3, p0, Lo/ExecutorUtils$2;->start:I

    if-le v2, v3, :cond_1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_1
    iget-object v3, p0, Lo/ExecutorUtils$2;->pieces:[Lo/LogFileManager;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
