.class final Lo/X;
.super Lo/W;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private asBinder:I

.field private asInterface:I

.field private final extraCallback:Z

.field private final onMessageChannelReady:[B

.field private onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lo/W;-><init>(Lo/Z;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lo/X;->asInterface:I

    .line 3
    iput-object p1, p0, Lo/X;->onMessageChannelReady:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lo/X;->onNavigationEvent:I

    .line 5
    iput p2, p0, Lo/X;->ICustomTabsCallback:I

    .line 6
    iput p2, p0, Lo/X;->asBinder:I

    .line 7
    iput-boolean p4, p0, Lo/X;->extraCallback:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLo/Z;)V
    .locals 0

    const/4 p2, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3, p2}, Lo/X;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 26
    iget v0, p0, Lo/X;->ICustomTabsCallback:I

    iget v1, p0, Lo/X;->asBinder:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-perf/zzfx;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lo/W;->extraCallback()I

    move-result v0

    add-int/2addr p1, v0

    .line 13
    iget v0, p0, Lo/X;->asInterface:I

    if-gt p1, v0, :cond_1

    .line 17
    iput p1, p0, Lo/X;->asInterface:I

    .line 19
    iget v1, p0, Lo/X;->onNavigationEvent:I

    iget v2, p0, Lo/X;->onPostMessage:I

    add-int/2addr v1, v2

    iput v1, p0, Lo/X;->onNavigationEvent:I

    .line 20
    iget v2, p0, Lo/X;->asBinder:I

    sub-int v2, v1, v2

    if-le v2, p1, :cond_0

    sub-int/2addr v2, p1

    .line 22
    iput v2, p0, Lo/X;->onPostMessage:I

    sub-int/2addr v1, v2

    .line 23
    iput v1, p0, Lo/X;->onNavigationEvent:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lo/X;->onPostMessage:I

    :goto_0
    return v0

    .line 15
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzfx;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzfx;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1

    .line 10
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzfx;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzfx;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
.end method
