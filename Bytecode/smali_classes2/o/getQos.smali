.class public final Lo/getQos;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getQos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:I

.field private final onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/MoshiColorAdapter;

    invoke-direct {v0}, Lo/MoshiColorAdapter;-><init>()V

    sput-object v0, Lo/getQos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/getQos;->onNavigationEvent:I

    iput p2, p0, Lo/getQos;->onPostMessage:I

    iput p3, p0, Lo/getQos;->ICustomTabsCallback:I

    return-void
.end method

.method public static extraCallback(Lo/LoanDetailsDialog$realDismiss$$inlined$executeOnResume$1;)Lo/getQos;
    .locals 3

    new-instance v0, Lo/getQos;

    iget v1, p0, Lo/LoanDetailsDialog$realDismiss$$inlined$executeOnResume$1;->extraCallback:I

    iget v2, p0, Lo/LoanDetailsDialog$realDismiss$$inlined$executeOnResume$1;->onPostMessage:I

    iget p0, p0, Lo/LoanDetailsDialog$realDismiss$$inlined$executeOnResume$1;->ICustomTabsCallback:I

    invoke-direct {v0, v1, v2, p0}, Lo/getQos;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lo/getQos;->onNavigationEvent:I

    iget v1, p0, Lo/getQos;->onPostMessage:I

    iget v2, p0, Lo/getQos;->ICustomTabsCallback:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lo/getQos;->onNavigationEvent:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget v0, p0, Lo/getQos;->onPostMessage:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget v0, p0, Lo/getQos;->ICustomTabsCallback:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
