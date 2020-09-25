.class final Lo/n$1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static synthetic ICustomTabsCallback(BBB[CI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lo/n$1;->onPostMessage(BBB[CI)V

    return-void
.end method

.method private static ICustomTabsCallback(B[CI)V
    .locals 0

    int-to-char p0, p0

    .line 4
    aput-char p0, p1, p2

    return-void
.end method

.method static synthetic ICustomTabsCallback(B)Z
    .locals 0

    .line 44
    invoke-static {p0}, Lo/n$1;->asBinder(B)Z

    move-result p0

    return p0
.end method

.method private static asBinder(B)Z
    .locals 1

    const/16 v0, -0x10

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic extraCallback(BBBB[CI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 46
    invoke-static/range {p0 .. p5}, Lo/n$1;->onMessageChannelReady(BBBB[CI)V

    return-void
.end method

.method private static extraCallback(B)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onMessageChannelReady(BBBB[CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lo/n$1;->onRelationshipValidationResult(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_0

    .line 22
    invoke-static {p2}, Lo/n$1;->onRelationshipValidationResult(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {p3}, Lo/n$1;->onRelationshipValidationResult(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x3f

    or-int/2addr p0, p1

    const p1, 0xd7c0

    ushr-int/lit8 p2, p0, 0xa

    add-int/2addr p2, p1

    int-to-char p1, p2

    .line 34
    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    const p1, 0xdc00

    and-int/lit16 p0, p0, 0x3ff

    add-int/2addr p0, p1

    int-to-char p0, p0

    .line 37
    aput-char p0, p4, p5

    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onRelationshipValidationResult()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p0

    throw p0
.end method

.method private static onMessageChannelReady(BB[CI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    .line 6
    invoke-static {p1}, Lo/n$1;->onRelationshipValidationResult(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    .line 10
    aput-char p0, p2, p3

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onRelationshipValidationResult()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p0

    throw p0
.end method

.method static synthetic onMessageChannelReady(B)Z
    .locals 0

    .line 40
    invoke-static {p0}, Lo/n$1;->extraCallback(B)Z

    move-result p0

    return p0
.end method

.method static synthetic onNavigationEvent(B[CI)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lo/n$1;->ICustomTabsCallback(B[CI)V

    return-void
.end method

.method private static onNavigationEvent(B)Z
    .locals 1

    const/16 v0, -0x20

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onPostMessage(BBB[CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lo/n$1;->onRelationshipValidationResult(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    .line 13
    :cond_1
    invoke-static {p2}, Lo/n$1;->onRelationshipValidationResult(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    .line 19
    aput-char p0, p3, p4

    return-void

    .line 14
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onRelationshipValidationResult()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p0

    throw p0
.end method

.method static synthetic onPostMessage(BB[CI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2, p3}, Lo/n$1;->onMessageChannelReady(BB[CI)V

    return-void
.end method

.method static synthetic onPostMessage(B)Z
    .locals 0

    .line 42
    invoke-static {p0}, Lo/n$1;->onNavigationEvent(B)Z

    move-result p0

    return p0
.end method

.method private static onRelationshipValidationResult(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
