.class public final Lo/setActiveConvFetchBackoffRatio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private extraCallback:Z

.field private onMessageChannelReady:I

.field private onPostMessage:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lo/setActiveConvFetchBackoffRatio;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lo/setActiveConvFetchBackoffRatio;->onPostMessage:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lo/setActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    .line 6
    iput-boolean p1, p0, Lo/setActiveConvFetchBackoffRatio;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setSessionTimeoutInterval;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setSessionTimeoutInterval<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lo/setActiveConvFetchBackoffRatio;->extraCallback:Z

    .line 28
    iget v0, p0, Lo/setActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    iget-object v1, p0, Lo/setActiveConvFetchBackoffRatio;->onPostMessage:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lo/getActiveConvFetchBackoffRatio;->onMessageChannelReady(I[Ljava/lang/Object;)Lo/getActiveConvFetchBackoffRatio;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Lo/setActiveConvFetchBackoffRatio;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lo/setActiveConvFetchBackoffRatio<",
            "TK;TV;>;"
        }
    .end annotation

    .line 8
    iget v0, p0, Lo/setActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 9
    iget-object v1, p0, Lo/setActiveConvFetchBackoffRatio;->onPostMessage:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_3

    .line 10
    array-length v2, v1

    if-ltz v0, :cond_2

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v2, v0, 0x1

    :cond_0
    if-gez v2, :cond_1

    const v2, 0x7fffffff

    .line 20
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/setActiveConvFetchBackoffRatio;->onPostMessage:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lo/setActiveConvFetchBackoffRatio;->extraCallback:Z

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "cannot store more than MAX_VALUE elements"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 22
    :cond_3
    :goto_0
    invoke-static {p1, p2}, Lo/cc;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lo/setActiveConvFetchBackoffRatio;->onPostMessage:[Ljava/lang/Object;

    iget v1, p0, Lo/setActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 24
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 25
    iput v1, p0, Lo/setActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    return-object p0
.end method
