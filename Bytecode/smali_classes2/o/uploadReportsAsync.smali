.class final Lo/uploadReportsAsync;
.super Lo/writeRawVarint32;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/writeRawVarint32<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/uploadReportsAsync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/uploadReportsAsync<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private onMessageChannelReady:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lo/uploadReportsAsync;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lo/uploadReportsAsync;-><init>([Ljava/lang/Object;I)V

    .line 44
    sput-object v0, Lo/uploadReportsAsync;->ICustomTabsCallback:Lo/uploadReportsAsync;

    invoke-virtual {v0}, Lo/uploadReportsAsync;->extraCallback()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/uploadReportsAsync;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lo/writeRawVarint32;-><init>()V

    .line 61
    iput-object p1, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    .line 62
    iput p2, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    return-void
.end method

.method public static onNavigationEvent()Lo/uploadReportsAsync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/uploadReportsAsync<",
            "TE;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lo/uploadReportsAsync;->ICustomTabsCallback:Lo/uploadReportsAsync;

    return-object v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;
    .locals 2

    .line 5067
    iget v0, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    if-lt p1, v0, :cond_0

    .line 5071
    iget-object v0, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 5073
    new-instance v0, Lo/uploadReportsAsync;

    iget v1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    invoke-direct {v0, p1, v1}, Lo/uploadReportsAsync;-><init>([Ljava/lang/Object;I)V

    return-object v0

    .line 5068
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lo/uploadReportsAsync;->onMessageChannelReady()V

    if-ltz p1, :cond_1

    .line 98
    iget v0, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    if-gt p1, v0, :cond_1

    .line 102
    iget-object v1, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 104
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 107
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 2163
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 111
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget-object v1, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iput-object v0, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    .line 118
    :goto_0
    iget-object v0, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 119
    iget p1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    .line 120
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 99
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lo/uploadReportsAsync;->onMessageChannelReady()V

    .line 80
    iget v0, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    iget-object v1, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x3

    .line 82
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 83
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 85
    iput-object v0, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    .line 88
    :cond_0
    iget-object v0, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    iget v1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    aput-object p1, v0, v1

    .line 89
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v3
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 2167
    iget v0, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 2168
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 2173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2168
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lo/uploadReportsAsync;->onMessageChannelReady()V

    if-ltz p1, :cond_1

    .line 3167
    iget v0, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    if-ge p1, v0, :cond_1

    .line 134
    iget-object v1, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v2, v1, p1

    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 136
    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_0
    iget p1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    .line 140
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v2

    .line 3168
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 3173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3168
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lo/uploadReportsAsync;->onMessageChannelReady()V

    if-ltz p1, :cond_0

    .line 4167
    iget v0, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    if-ge p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lo/uploadReportsAsync;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 150
    aput-object p2, v0, p1

    .line 152
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1

    .line 4168
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 4173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4168
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final size()I
    .locals 1

    .line 158
    iget v0, p0, Lo/uploadReportsAsync;->onNavigationEvent:I

    return v0
.end method
