.class final Lo/getInfoKey$mayLaunchUrl$5;
.super Lo/addIndentation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey$mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/addIndentation<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 872
    invoke-direct {p0}, Lo/addIndentation;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1876
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostMessage(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    .line 872
    check-cast p1, Ljava/lang/Float;

    .line 1881
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
