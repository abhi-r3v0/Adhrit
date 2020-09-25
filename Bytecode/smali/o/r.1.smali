.class public final Lo/r;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/r;


# instance fields
.field public final ICustomTabsCallback:F

.field public final extraCallback:Z

.field private final onMessageChannelReady:I

.field public final onNavigationEvent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lo/r;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lo/r;-><init>(F)V

    sput-object v0, Lo/r;->onPostMessage:Lo/r;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lo/r;-><init>(FFZ)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 71
    :goto_0
    invoke-static {v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 72
    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 73
    iput p1, p0, Lo/r;->ICustomTabsCallback:F

    .line 74
    iput p2, p0, Lo/r;->onNavigationEvent:F

    .line 75
    iput-boolean p3, p0, Lo/r;->extraCallback:Z

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    .line 76
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lo/r;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    check-cast p1, Lo/r;

    .line 99
    iget v2, p0, Lo/r;->ICustomTabsCallback:F

    iget v3, p1, Lo/r;->ICustomTabsCallback:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lo/r;->onNavigationEvent:F

    iget v3, p1, Lo/r;->onNavigationEvent:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lo/r;->extraCallback:Z

    iget-boolean p1, p1, Lo/r;->extraCallback:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 107
    iget v0, p0, Lo/r;->ICustomTabsCallback:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget v1, p0, Lo/r;->onNavigationEvent:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-boolean v1, p0, Lo/r;->extraCallback:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final onNavigationEvent(J)J
    .locals 2

    .line 87
    iget v0, p0, Lo/r;->onMessageChannelReady:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method
