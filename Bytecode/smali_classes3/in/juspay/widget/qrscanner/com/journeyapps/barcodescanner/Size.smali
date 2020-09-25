.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    .line 12
    iput p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    return-void
.end method


# virtual methods
.method public a()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 3

    .line 22
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    iget v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    invoke-direct {v0, v1, v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 5

    .line 44
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget v1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    mul-int v2, v0, v1

    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    mul-int v4, p1, v3

    if-lt v2, v4, :cond_0

    .line 46
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    mul-int v3, v3, p1

    div-int/2addr v3, v0

    invoke-direct {v1, p1, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v1

    .line 49
    :cond_0
    new-instance p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    mul-int v0, v0, v1

    div-int/2addr v0, v3

    invoke-direct {p1, v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object p1
.end method

.method public b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 5

    .line 60
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget v1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    mul-int v2, v0, v1

    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    mul-int v4, p1, v3

    if-gt v2, v4, :cond_0

    .line 62
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    mul-int v3, v3, p1

    div-int/2addr v3, v0

    invoke-direct {v1, p1, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v1

    .line 65
    :cond_0
    new-instance p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    mul-int v0, v0, v1

    div-int/2addr v0, v3

    invoke-direct {p1, v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object p1
.end method

.method public c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)I
    .locals 2

    .line 84
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    mul-int v0, v0, v1

    .line 85
    iget v1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    mul-int v1, v1, p1

    if-ge v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-le v1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 106
    iget v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget v3, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 111
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
