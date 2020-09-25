.class public final Lo/getContent;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getContent;",
            ">;"
        }
    .end annotation
.end field

.field static final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CardCtaItem$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Z

.field private asInterface:Ljava/lang/String;

.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CardCtaItem$$Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lcom/google/android/gms/location/LocationRequest;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Z

.field private onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getContent;->onNavigationEvent:Ljava/util/List;

    new-instance v0, Lo/MessageFragment;

    invoke-direct {v0}, Lo/MessageFragment;-><init>()V

    sput-object v0, Lo/getContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ljava/util/List<",
            "Lo/CardCtaItem$$Parcelable;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lo/getTags;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/getContent;->onRelationshipValidationResult:Z

    iput-object p1, p0, Lo/getContent;->onMessageChannelReady:Lcom/google/android/gms/location/LocationRequest;

    iput-object p2, p0, Lo/getContent;->extraCallback:Ljava/util/List;

    iput-object p3, p0, Lo/getContent;->onPostMessage:Ljava/lang/String;

    iput-boolean p4, p0, Lo/getContent;->ICustomTabsCallback:Z

    iput-boolean p5, p0, Lo/getContent;->onTransact:Z

    iput-boolean p6, p0, Lo/getContent;->ICustomTabsCallback$Stub:Z

    iput-object p7, p0, Lo/getContent;->asInterface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lo/getContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lo/getContent;

    iget-object v0, p0, Lo/getContent;->onMessageChannelReady:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lo/getContent;->onMessageChannelReady:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, v2}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getContent;->extraCallback:Ljava/util/List;

    iget-object v2, p1, Lo/getContent;->extraCallback:Ljava/util/List;

    invoke-static {v0, v2}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getContent;->onPostMessage:Ljava/lang/String;

    iget-object v2, p1, Lo/getContent;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v2}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/getContent;->ICustomTabsCallback:Z

    iget-boolean v2, p1, Lo/getContent;->ICustomTabsCallback:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lo/getContent;->onTransact:Z

    iget-boolean v2, p1, Lo/getContent;->onTransact:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lo/getContent;->ICustomTabsCallback$Stub:Z

    iget-boolean v2, p1, Lo/getContent;->ICustomTabsCallback$Stub:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lo/getContent;->asInterface:Ljava/lang/String;

    iget-object p1, p1, Lo/getContent;->asInterface:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lo/getContent;->onMessageChannelReady:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/getContent;->onMessageChannelReady:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getContent;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getContent;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lo/getContent;->asInterface:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " moduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getContent;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " hideAppOps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/getContent;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getContent;->extraCallback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " forceCoarseLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/getContent;->onTransact:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/getContent;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_2

    const-string v1, " exemptFromBackgroundThrottle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lo/getContent;->onMessageChannelReady:Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lo/getContent;->extraCallback:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Lo/getContent;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lo/getContent;->ICustomTabsCallback:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lo/getContent;->onTransact:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lo/getContent;->ICustomTabsCallback$Stub:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lo/getContent;->asInterface:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
