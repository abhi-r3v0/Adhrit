.class public final Lo/getTotal_count;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getTotal_count;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:I

.field extraCallback:Landroid/os/Bundle;

.field onPostMessage:[Lo/setAmountRefunded;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/getMemberSince;

    invoke-direct {v0}, Lo/getMemberSince;-><init>()V

    sput-object v0, Lo/getTotal_count;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;[Lo/setAmountRefunded;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getTotal_count;->extraCallback:Landroid/os/Bundle;

    .line 3
    iput-object p2, p0, Lo/getTotal_count;->onPostMessage:[Lo/setAmountRefunded;

    .line 4
    iput p3, p0, Lo/getTotal_count;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 8
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 9
    iget-object v1, p0, Lo/getTotal_count;->extraCallback:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 10
    iget-object v1, p0, Lo/getTotal_count;->onPostMessage:[Lo/setAmountRefunded;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 11
    iget p2, p0, Lo/getTotal_count;->ICustomTabsCallback:I

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 12
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
