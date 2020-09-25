.class public final Lo/setReferenceId;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setReferenceId;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/setReferenceId;


# instance fields
.field private final ICustomTabsCallback:I

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Landroid/app/PendingIntent;

.field public final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Lo/setReferenceId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setReferenceId;-><init>(I)V

    sput-object v0, Lo/setReferenceId;->onPostMessage:Lo/setReferenceId;

    .line 81
    new-instance v0, Lo/component27;

    invoke-direct {v0}, Lo/component27;-><init>()V

    sput-object v0, Lo/setReferenceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v0}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/setReferenceId;->ICustomTabsCallback:I

    .line 3
    iput p2, p0, Lo/setReferenceId;->onNavigationEvent:I

    .line 4
    iput-object p3, p0, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    .line 5
    iput-object p4, p0, Lo/setReferenceId;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1, p2, p3}, Lo/setReferenceId;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static ICustomTabsCallback(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x63

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5dc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v0, 0x1f

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "API_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_1
    const-string p0, "RESTRICTED_PROFILE"

    return-object p0

    :pswitch_2
    const-string p0, "SERVICE_MISSING_PERMISSION"

    return-object p0

    :pswitch_3
    const-string p0, "SERVICE_UPDATING"

    return-object p0

    :pswitch_4
    const-string p0, "SIGN_IN_FAILED"

    return-object p0

    :pswitch_5
    const-string p0, "API_UNAVAILABLE"

    return-object p0

    :pswitch_6
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_7
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_8
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_9
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :pswitch_a
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_b
    const-string p0, "SERVICE_INVALID"

    return-object p0

    :pswitch_c
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_d
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_e
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_f
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_10
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_11
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_12
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_13
    const-string p0, "SERVICE_MISSING"

    return-object p0

    :pswitch_14
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_15
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    return-object p0

    :cond_1
    const-string p0, "UNFINISHED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 19
    iget v0, p0, Lo/setReferenceId;->onNavigationEvent:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lo/setReferenceId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 54
    :cond_1
    check-cast p1, Lo/setReferenceId;

    .line 55
    iget v1, p0, Lo/setReferenceId;->onNavigationEvent:I

    iget v3, p1, Lo/setReferenceId;->onNavigationEvent:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    iget-object v3, p1, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    .line 1001
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    .line 56
    iget-object v1, p0, Lo/setReferenceId;->extraCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/setReferenceId;->extraCallback:Ljava/lang/String;

    if-eq v1, p1, :cond_5

    if-eqz v1, :cond_4

    .line 2001
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public final extraCallback()I
    .locals 1

    .line 21
    iget v0, p0, Lo/setReferenceId;->onNavigationEvent:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget v1, p0, Lo/setReferenceId;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setReferenceId;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Landroid/app/PendingIntent;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 20
    iget v0, p0, Lo/setReferenceId;->onNavigationEvent:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2003
    new-instance v0, Lo/getPaymentData$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getPaymentData$extraCallback;-><init>(Ljava/lang/Object;B)V

    .line 60
    iget v1, p0, Lo/setReferenceId;->onNavigationEvent:I

    .line 61
    invoke-static {v1}, Lo/setReferenceId;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    const-string/jumbo v2, "resolution"

    .line 62
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/setReferenceId;->extraCallback:Ljava/lang/String;

    const-string v2, "message"

    .line 63
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 3008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 3009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 68
    iget v2, p0, Lo/setReferenceId;->ICustomTabsCallback:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 3039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4021
    iget v2, p0, Lo/setReferenceId;->onNavigationEvent:I

    const/4 v4, 0x2

    .line 4039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5022
    iget-object v2, p0, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    const/4 v4, 0x3

    .line 74
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5023
    iget-object p2, p0, Lo/setReferenceId;->extraCallback:Ljava/lang/String;

    .line 77
    invoke-static {p1, v3, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 7011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 7013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
