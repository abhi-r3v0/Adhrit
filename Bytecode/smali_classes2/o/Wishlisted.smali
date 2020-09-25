.class public final Lo/Wishlisted;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/ReferralBottomSheetResponseJsonAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/WishlistedJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lo/ReferralBottomSheetResponseJsonAdapter;

    check-cast p2, Lo/ReferralBottomSheetResponseJsonAdapter;

    invoke-virtual {p1}, Lo/ReferralBottomSheetResponseJsonAdapter;->ICustomTabsCallback()F

    move-result v0

    invoke-virtual {p2}, Lo/ReferralBottomSheetResponseJsonAdapter;->ICustomTabsCallback()F

    move-result v1

    const/4 v2, -0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lo/ReferralBottomSheetResponseJsonAdapter;->ICustomTabsCallback()F

    move-result v0

    invoke-virtual {p2}, Lo/ReferralBottomSheetResponseJsonAdapter;->ICustomTabsCallback()F

    move-result v1

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Lo/ReferralBottomSheetResponseJsonAdapter;->onNavigationEvent()F

    move-result v0

    invoke-virtual {p2}, Lo/ReferralBottomSheetResponseJsonAdapter;->onNavigationEvent()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lo/ReferralBottomSheetResponseJsonAdapter;->onNavigationEvent()F

    move-result v0

    invoke-virtual {p2}, Lo/ReferralBottomSheetResponseJsonAdapter;->onNavigationEvent()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Lo/ReferralBottomSheetResponseJsonAdapter;->extraCallback()F

    move-result v0

    invoke-virtual {p1}, Lo/ReferralBottomSheetResponseJsonAdapter;->ICustomTabsCallback()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lo/ReferralBottomSheetResponseJsonAdapter;->onPostMessage()F

    move-result v1

    invoke-virtual {p1}, Lo/ReferralBottomSheetResponseJsonAdapter;->onNavigationEvent()F

    move-result p1

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    invoke-virtual {p2}, Lo/ReferralBottomSheetResponseJsonAdapter;->extraCallback()F

    move-result p1

    invoke-virtual {p2}, Lo/ReferralBottomSheetResponseJsonAdapter;->ICustomTabsCallback()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {p2}, Lo/ReferralBottomSheetResponseJsonAdapter;->onPostMessage()F

    move-result v1

    invoke-virtual {p2}, Lo/ReferralBottomSheetResponseJsonAdapter;->onNavigationEvent()F

    move-result p2

    sub-float/2addr v1, p2

    mul-float p1, p1, v1

    cmpl-float p2, v0, p1

    if-lez p2, :cond_4

    return v2

    :cond_4
    cmpg-float p1, v0, p1

    if-gez p1, :cond_5

    return v3

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
