.class final Lo/drawSelectorCompat$onNavigationEvent;
.super Lo/drawSelectorCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/drawSelectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lo/drawSelectorCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(IIII)Lo/drawSelectorCompat$extraCallback;
    .locals 0

    .line 162
    sget-boolean p1, Lo/drawSelectorCompat$onNavigationEvent;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    .line 163
    sget-object p1, Lo/drawSelectorCompat$extraCallback;->onPostMessage:Lo/drawSelectorCompat$extraCallback;

    return-object p1

    .line 168
    :cond_0
    sget-object p1, Lo/drawSelectorCompat$extraCallback;->ICustomTabsCallback:Lo/drawSelectorCompat$extraCallback;

    return-object p1
.end method

.method public final onPostMessage(IIII)F
    .locals 1

    .line 145
    sget-boolean v0, Lo/drawSelectorCompat$onNavigationEvent;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 149
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 153
    :cond_0
    div-int/2addr p2, p4

    div-int/2addr p1, p3

    .line 154
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    return p2

    .line 155
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method
