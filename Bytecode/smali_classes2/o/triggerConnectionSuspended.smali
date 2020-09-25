.class public final Lo/triggerConnectionSuspended;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/triggerConnectionSuspended;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Z

.field public onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/getApiOptions;

    invoke-direct {v0}, Lo/getApiOptions;-><init>()V

    sput-object v0, Lo/triggerConnectionSuspended;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput p1, p0, Lo/triggerConnectionSuspended;->onPostMessage:I

    .line 4
    iput-boolean p2, p0, Lo/triggerConnectionSuspended;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 7
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 8
    iget v0, p0, Lo/triggerConnectionSuspended;->onPostMessage:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 9
    iget-boolean v0, p0, Lo/triggerConnectionSuspended;->ICustomTabsCallback:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 10
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
