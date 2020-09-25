.class public final Lo/onAuthStateChanged;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/signOut;


# instance fields
.field private final onPostMessage:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lo/onAuthStateChanged;->onPostMessage:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lo/onAuthStateChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 53
    :cond_1
    check-cast p1, Lo/onAuthStateChanged;

    .line 54
    iget v1, p0, Lo/onAuthStateChanged;->onPostMessage:F

    iget p1, p1, Lo/onAuthStateChanged;->onPostMessage:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget v1, p0, Lo/onAuthStateChanged;->onPostMessage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 60
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;)F
    .locals 1

    .line 42
    iget v0, p0, Lo/onAuthStateChanged;->onPostMessage:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float v0, v0, p1

    return v0
.end method
