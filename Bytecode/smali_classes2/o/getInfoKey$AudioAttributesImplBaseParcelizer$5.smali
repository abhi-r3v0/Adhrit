.class final Lo/getInfoKey$AudioAttributesImplBaseParcelizer$5;
.super Lo/addIndentation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey$AudioAttributesImplBaseParcelizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/addIndentation<",
        "Landroid/util/SparseBooleanArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 712
    invoke-direct {p0}, Lo/addIndentation;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1716
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostMessage(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    .line 712
    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 1721
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    return-void
.end method
