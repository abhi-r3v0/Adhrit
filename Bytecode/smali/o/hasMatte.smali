.class public final Lo/hasMatte;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hasMatte$onPostMessage;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:F

.field ICustomTabsCallback$Stub:F

.field public extraCallback:[F

.field onMessageChannelReady:Z

.field onNavigationEvent:I

.field onPostMessage:Lo/hasMatte$onPostMessage;

.field onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lo/hasMatte$onPostMessage;->ICustomTabsCallback:Lo/hasMatte$onPostMessage;

    iput-object v0, p0, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lo/hasMatte;->onMessageChannelReady:Z

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lo/hasMatte;->extraCallback:[F

    .line 47
    iput v0, p0, Lo/hasMatte;->onNavigationEvent:I

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lo/hasMatte;->ICustomTabsCallback:F

    .line 49
    iput v0, p0, Lo/hasMatte;->onTransact:I

    .line 50
    iput v1, p0, Lo/hasMatte;->ICustomTabsCallback$Stub:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    check-cast p1, Lo/hasMatte;

    .line 291
    iget-boolean v1, p0, Lo/hasMatte;->onMessageChannelReady:Z

    iget-boolean v2, p1, Lo/hasMatte;->onMessageChannelReady:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 295
    :cond_2
    iget v1, p0, Lo/hasMatte;->onNavigationEvent:I

    iget v2, p1, Lo/hasMatte;->onNavigationEvent:I

    if-eq v1, v2, :cond_3

    return v0

    .line 299
    :cond_3
    iget v1, p1, Lo/hasMatte;->ICustomTabsCallback:F

    iget v2, p0, Lo/hasMatte;->ICustomTabsCallback:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 303
    :cond_4
    iget v1, p0, Lo/hasMatte;->onTransact:I

    iget v2, p1, Lo/hasMatte;->onTransact:I

    if-eq v1, v2, :cond_5

    return v0

    .line 307
    :cond_5
    iget v1, p1, Lo/hasMatte;->ICustomTabsCallback$Stub:F

    iget v2, p0, Lo/hasMatte;->ICustomTabsCallback$Stub:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 311
    :cond_6
    iget-object v1, p0, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    iget-object v2, p1, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    if-eq v1, v2, :cond_7

    return v0

    .line 323
    :cond_7
    iget-object v0, p0, Lo/hasMatte;->extraCallback:[F

    iget-object p1, p1, Lo/hasMatte;->extraCallback:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 328
    iget-object v0, p0, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 329
    iget-boolean v2, p0, Lo/hasMatte;->onMessageChannelReady:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 330
    iget-object v2, p0, Lo/hasMatte;->extraCallback:[F

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    iget v2, p0, Lo/hasMatte;->onNavigationEvent:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 332
    iget v2, p0, Lo/hasMatte;->ICustomTabsCallback:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 333
    iget v2, p0, Lo/hasMatte;->onTransact:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    iget v2, p0, Lo/hasMatte;->ICustomTabsCallback$Stub:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
