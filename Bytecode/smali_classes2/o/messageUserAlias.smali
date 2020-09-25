.class final Lo/messageUserAlias;
.super Lo/isMobileUserCommentsAllowed;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/isMobileUserCommentsAllowed<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/messageUserAlias;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/messageUserAlias<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lo/messageUserAlias;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lo/messageUserAlias;-><init>([Ljava/lang/Object;I)V

    .line 59
    sput-object v0, Lo/messageUserAlias;->onNavigationEvent:Lo/messageUserAlias;

    invoke-virtual {v0}, Lo/isMobileUserCommentsAllowed;->I_()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lo/messageUserAlias;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lo/isMobileUserCommentsAllowed;-><init>()V

    .line 5
    iput-object p1, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    .line 6
    iput p2, p0, Lo/messageUserAlias;->extraCallback:I

    return-void
.end method

.method public static onNavigationEvent()Lo/messageUserAlias;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/messageUserAlias<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/messageUserAlias;->onNavigationEvent:Lo/messageUserAlias;

    return-object v0
.end method

.method private final onNavigationEvent(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 48
    iget v0, p0, Lo/messageUserAlias;->extraCallback:I

    if-ge p1, v0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/messageUserAlias;->onPostMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final onPostMessage(I)Ljava/lang/String;
    .locals 3

    .line 51
    iget v0, p0, Lo/messageUserAlias;->extraCallback:I

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
.method public final synthetic ICustomTabsCallback(I)Lo/setClicked;
    .locals 2

    .line 53
    iget v0, p0, Lo/messageUserAlias;->extraCallback:I

    if-lt p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 56
    new-instance v0, Lo/messageUserAlias;

    iget v1, p0, Lo/messageUserAlias;->extraCallback:I

    invoke-direct {v0, p1, v1}, Lo/messageUserAlias;-><init>([Ljava/lang/Object;I)V

    return-object v0

    .line 54
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

    .line 16
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    if-ltz p1, :cond_1

    .line 17
    iget v0, p0, Lo/messageUserAlias;->extraCallback:I

    if-gt p1, v0, :cond_1

    .line 19
    iget-object v1, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 20
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 21
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 24
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget-object v1, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lo/messageUserAlias;->extraCallback:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iput-object v0, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    .line 27
    :goto_0
    iget-object v0, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 28
    iget p1, p0, Lo/messageUserAlias;->extraCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/messageUserAlias;->extraCallback:I

    .line 29
    iget p1, p0, Lo/messageUserAlias;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/messageUserAlias;->modCount:I

    return-void

    .line 18
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lo/messageUserAlias;->onPostMessage(I)Ljava/lang/String;

    move-result-object p1

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

    .line 8
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    .line 9
    iget v0, p0, Lo/messageUserAlias;->extraCallback:I

    iget-object v1, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x3

    .line 10
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 11
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    .line 13
    :cond_0
    iget-object v0, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/messageUserAlias;->extraCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/messageUserAlias;->extraCallback:I

    aput-object p1, v0, v1

    .line 14
    iget p1, p0, Lo/messageUserAlias;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/messageUserAlias;->modCount:I

    return v3
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lo/messageUserAlias;->onNavigationEvent(I)V

    .line 32
    iget-object v0, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    .line 34
    invoke-direct {p0, p1}, Lo/messageUserAlias;->onNavigationEvent(I)V

    .line 35
    iget-object v0, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 36
    iget v2, p0, Lo/messageUserAlias;->extraCallback:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 37
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    :cond_0
    iget p1, p0, Lo/messageUserAlias;->extraCallback:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/messageUserAlias;->extraCallback:I

    .line 39
    iget p1, p0, Lo/messageUserAlias;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/messageUserAlias;->modCount:I

    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    .line 42
    invoke-direct {p0, p1}, Lo/messageUserAlias;->onNavigationEvent(I)V

    .line 43
    iget-object v0, p0, Lo/messageUserAlias;->ICustomTabsCallback:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 44
    aput-object p2, v0, p1

    .line 45
    iget p1, p0, Lo/messageUserAlias;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/messageUserAlias;->modCount:I

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 47
    iget v0, p0, Lo/messageUserAlias;->extraCallback:I

    return v0
.end method
