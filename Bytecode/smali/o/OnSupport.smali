.class public final Lo/OnSupport;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final onNavigationEvent:F

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lo/OnSupport;->onPostMessage:I

    .line 62
    iput p2, p0, Lo/OnSupport;->onNavigationEvent:F

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

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    check-cast p1, Lo/OnSupport;

    .line 74
    iget v2, p0, Lo/OnSupport;->onPostMessage:I

    iget v3, p1, Lo/OnSupport;->onPostMessage:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Lo/OnSupport;->onNavigationEvent:F

    iget v2, p0, Lo/OnSupport;->onNavigationEvent:F

    .line 75
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 81
    iget v0, p0, Lo/OnSupport;->onPostMessage:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget v1, p0, Lo/OnSupport;->onNavigationEvent:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
