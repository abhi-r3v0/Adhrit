.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha$onNavigationEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "in"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarInfo;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CaptchaInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CaptchaInput;

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarInfo;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CaptchaInput;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    return-object p1
.end method
