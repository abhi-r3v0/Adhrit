.class final Lo/nativeHasTransparency;
.super Lo/nativeGetTransparentPixelColor;


# instance fields
.field private final ICustomTabsCallback:Z

.field private asBinder:I

.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:[B

.field private onRelationshipValidationResult:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/nativeGetTransparentPixelColor;-><init>(Lo/nativeFinalize;)V

    const v0, 0x7fffffff

    iput v0, p0, Lo/nativeHasTransparency;->asBinder:I

    iput-object p1, p0, Lo/nativeHasTransparency;->onPostMessage:[B

    add-int/2addr p3, p2

    iput p3, p0, Lo/nativeHasTransparency;->extraCallback:I

    iput p2, p0, Lo/nativeHasTransparency;->onMessageChannelReady:I

    iput p2, p0, Lo/nativeHasTransparency;->onRelationshipValidationResult:I

    iput-boolean p4, p0, Lo/nativeHasTransparency;->ICustomTabsCallback:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLo/nativeFinalize;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/nativeHasTransparency;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/clearcut/zzco;
        }
    .end annotation

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lo/nativeGetTransparentPixelColor;->onMessageChannelReady()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lo/nativeHasTransparency;->asBinder:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lo/nativeHasTransparency;->asBinder:I

    iget v1, p0, Lo/nativeHasTransparency;->extraCallback:I

    iget v2, p0, Lo/nativeHasTransparency;->onNavigationEvent:I

    add-int/2addr v1, v2

    iput v1, p0, Lo/nativeHasTransparency;->extraCallback:I

    iget v2, p0, Lo/nativeHasTransparency;->onRelationshipValidationResult:I

    sub-int v2, v1, v2

    if-le v2, p1, :cond_0

    sub-int/2addr v2, p1

    iput v2, p0, Lo/nativeHasTransparency;->onNavigationEvent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lo/nativeHasTransparency;->extraCallback:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lo/nativeHasTransparency;->onNavigationEvent:I

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->onMessageChannelReady()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzco;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/clearcut/zzco;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady()I
    .locals 2

    iget v0, p0, Lo/nativeHasTransparency;->onMessageChannelReady:I

    iget v1, p0, Lo/nativeHasTransparency;->onRelationshipValidationResult:I

    sub-int/2addr v0, v1

    return v0
.end method
