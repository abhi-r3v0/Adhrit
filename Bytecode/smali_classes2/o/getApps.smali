.class public final Lo/getApps;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getApps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Lo/setPaymentData;

.field private final onMessageChannelReady:Lo/setReferenceId;

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/FirebaseApp;

    invoke-direct {v0}, Lo/FirebaseApp;-><init>()V

    sput-object v0, Lo/getApps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 6
    new-instance p1, Lo/setReferenceId;

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p1, v1, v0}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1, v0}, Lo/getApps;-><init>(Lo/setReferenceId;Lo/setPaymentData;)V

    return-void
.end method

.method constructor <init>(ILo/setReferenceId;Lo/setPaymentData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/getApps;->onPostMessage:I

    .line 3
    iput-object p2, p0, Lo/getApps;->onMessageChannelReady:Lo/setReferenceId;

    .line 4
    iput-object p3, p0, Lo/getApps;->extraCallback:Lo/setPaymentData;

    return-void
.end method

.method private constructor <init>(Lo/setReferenceId;Lo/setPaymentData;)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p2, p1, v0}, Lo/getApps;-><init>(ILo/setReferenceId;Lo/setPaymentData;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setReferenceId;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/getApps;->onMessageChannelReady:Lo/setReferenceId;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/setPaymentData;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/getApps;->extraCallback:Lo/setPaymentData;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 13
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 14
    iget v1, p0, Lo/getApps;->onPostMessage:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 16
    iget-object v1, p0, Lo/getApps;->onMessageChannelReady:Lo/setReferenceId;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 18
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 20
    iget-object v1, p0, Lo/getApps;->extraCallback:Lo/setPaymentData;

    const/4 v3, 0x3

    .line 22
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 23
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
