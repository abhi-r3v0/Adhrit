.class public final Lcom/google/android/gms/common/api/Status;
.super Lo/getTags;
.source ""

# interfaces
.implements Lo/PaymentRequestItem;
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

.field public static final extraCallback:Lcom/google/android/gms/common/api/Status;

.field public static final onMessageChannelReady:Lcom/google/android/gms/common/api/Status;

.field public static final onNavigationEvent:Lcom/google/android/gms/common/api/Status;

.field public static final onPostMessage:Lcom/google/android/gms/common/api/Status;


# instance fields
.field public final asBinder:I

.field public final asInterface:Landroid/app/PendingIntent;

.field private final onRelationshipValidationResult:I

.field public final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->onMessageChannelReady:Lcom/google/android/gms/common/api/Status;

    .line 59
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    .line 60
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->extraCallback:Lcom/google/android/gms/common/api/Status;

    .line 61
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->onNavigationEvent:Lcom/google/android/gms/common/api/Status;

    .line 62
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->onPostMessage:Lcom/google/android/gms/common/api/Status;

    .line 63
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 64
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 65
    new-instance v0, Lo/MainActivityUtil$observer$1;

    invoke-direct {v0}, Lo/MainActivityUtil$observer$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/api/Status;->onRelationshipValidationResult:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/api/Status;->asBinder:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/common/api/Status;->asInterface:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 p1, 0x1

    const/16 p3, 0x8

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->asBinder:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 27
    instance-of v0, p1, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 29
    :cond_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 30
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->onRelationshipValidationResult:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->onRelationshipValidationResult:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->asBinder:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 2001
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->asInterface:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->asInterface:Landroid/app/PendingIntent;

    if-eq v0, p1, :cond_4

    if-eqz v0, :cond_3

    .line 3001
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method public final extraCallback()Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->onRelationshipValidationResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->asBinder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->asInterface:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->asBinder:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3003
    new-instance v0, Lo/getPaymentData$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getPaymentData$extraCallback;-><init>(Ljava/lang/Object;B)V

    .line 3034
    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3036
    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->asBinder:I

    invoke-static {v1}, Lo/getItemDelegate$asBinder;->onPostMessage(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "statusCode"

    .line 38
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->asInterface:Landroid/app/PendingIntent;

    const-string v2, "resolution"

    .line 39
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 5008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 5009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 5024
    iget v2, p0, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 5039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6019
    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    const/4 v4, 0x2

    .line 49
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 51
    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->asInterface:Landroid/app/PendingIntent;

    const/4 v4, 0x3

    .line 53
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 54
    iget p2, p0, Lcom/google/android/gms/common/api/Status;->onRelationshipValidationResult:I

    const/16 v0, 0x3e8

    .line 6039
    invoke-static {p1, v0, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 6040
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 8013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 8014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
