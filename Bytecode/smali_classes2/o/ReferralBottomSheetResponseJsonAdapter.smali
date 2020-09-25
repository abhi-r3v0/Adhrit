.class public final Lo/ReferralBottomSheetResponseJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:F

.field private final extraCallback:I

.field private final onMessageChannelReady:F

.field private final onNavigationEvent:F

.field private final onPostMessage:F


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->onMessageChannelReady:F

    iput p2, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->onNavigationEvent:F

    add-float/2addr p1, p3

    iput p1, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->onPostMessage:F

    add-float/2addr p2, p4

    iput p2, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->ICustomTabsCallback:F

    iput p5, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->extraCallback:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()F
    .locals 1

    iget v0, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->onNavigationEvent:F

    return v0
.end method

.method final extraCallback()F
    .locals 1

    iget v0, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->ICustomTabsCallback:F

    return v0
.end method

.method final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->extraCallback:I

    return v0
.end method

.method final onNavigationEvent()F
    .locals 1

    iget v0, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->onMessageChannelReady:F

    return v0
.end method

.method final onPostMessage()F
    .locals 1

    iget v0, p0, Lo/ReferralBottomSheetResponseJsonAdapter;->onPostMessage:F

    return v0
.end method
