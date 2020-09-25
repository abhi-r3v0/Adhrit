.class final Lo/getInfoKey$onMessageChannelReady$5;
.super Lo/addIndentation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/addIndentation<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1061
    invoke-direct {p0}, Lo/addIndentation;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2065
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostMessage(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 2

    .line 1061
    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 2070
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
