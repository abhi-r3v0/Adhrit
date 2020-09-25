.class public final Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AutoDebitInstrumentSetupRequestBody$RegistrationDetail;

    invoke-direct {v0}, Lo/AutoDebitInstrumentSetupRequestBody$RegistrationDetail;-><init>()V

    sput-object v0, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
