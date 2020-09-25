.class public final Lo/UrgencyJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setAspectRatio;


# instance fields
.field private ICustomTabsCallback:I

.field private final onMessageChannelReady:F

.field private onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lo/UrgencyJsonAdapter;-><init>(IIF)V

    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9c4

    iput p1, p0, Lo/UrgencyJsonAdapter;->ICustomTabsCallback:I

    const/4 p1, 0x1

    iput p1, p0, Lo/UrgencyJsonAdapter;->onPostMessage:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lo/UrgencyJsonAdapter;->onMessageChannelReady:F

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/UrgencyJsonAdapter;->ICustomTabsCallback:I

    return v0
.end method

.method public final ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzae;
        }
    .end annotation

    iget v0, p0, Lo/UrgencyJsonAdapter;->onNavigationEvent:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/UrgencyJsonAdapter;->onNavigationEvent:I

    iget v2, p0, Lo/UrgencyJsonAdapter;->ICustomTabsCallback:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget v4, p0, Lo/UrgencyJsonAdapter;->onMessageChannelReady:F

    mul-float v2, v2, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, p0, Lo/UrgencyJsonAdapter;->ICustomTabsCallback:I

    iget v2, p0, Lo/UrgencyJsonAdapter;->onPostMessage:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    throw p1
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/UrgencyJsonAdapter;->onNavigationEvent:I

    return v0
.end method
