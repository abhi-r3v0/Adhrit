.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/isAirplaneModeOn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$5;)V
    .locals 0

    .line 861
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method private static extraCallback(Lo/isAirplaneModeOn;)I
    .locals 1

    .line 868
    iget-object p0, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 861
    check-cast p1, Lo/isAirplaneModeOn;

    check-cast p2, Lo/isAirplaneModeOn;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ICustomTabsCallback;->onNavigationEvent(Lo/isAirplaneModeOn;Lo/isAirplaneModeOn;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/isAirplaneModeOn;Lo/isAirplaneModeOn;)I
    .locals 0

    .line 864
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ICustomTabsCallback;->extraCallback(Lo/isAirplaneModeOn;)I

    move-result p1

    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ICustomTabsCallback;->extraCallback(Lo/isAirplaneModeOn;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
