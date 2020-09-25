.class public final Lo/activateCredProtect;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/activateCredProtect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Z

.field public final asBinder:Lo/WinLuckyNumberResponseJsonAdapter;

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Z

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/goBack;

    invoke-direct {v0}, Lo/goBack;-><init>()V

    sput-object v0, Lo/activateCredProtect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILo/WinLuckyNumberResponseJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/activateCredProtect;->extraCallback:I

    iput-boolean p2, p0, Lo/activateCredProtect;->onNavigationEvent:Z

    iput p3, p0, Lo/activateCredProtect;->onPostMessage:I

    iput-boolean p4, p0, Lo/activateCredProtect;->ICustomTabsCallback:Z

    iput p5, p0, Lo/activateCredProtect;->onMessageChannelReady:I

    iput-object p6, p0, Lo/activateCredProtect;->asBinder:Lo/WinLuckyNumberResponseJsonAdapter;

    return-void
.end method

.method public constructor <init>(Lo/getPreviousBalance;)V
    .locals 7

    invoke-virtual {p1}, Lo/getPreviousBalance;->ICustomTabsCallback()Z

    move-result v2

    invoke-virtual {p1}, Lo/getPreviousBalance;->onPostMessage()I

    move-result v3

    invoke-virtual {p1}, Lo/getPreviousBalance;->onMessageChannelReady()Z

    move-result v4

    invoke-virtual {p1}, Lo/getPreviousBalance;->extraCallback()I

    move-result v5

    invoke-virtual {p1}, Lo/getPreviousBalance;->onNavigationEvent()Lo/StatementResponse$StatementDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/WinLuckyNumberResponseJsonAdapter;

    invoke-virtual {p1}, Lo/getPreviousBalance;->onNavigationEvent()Lo/StatementResponse$StatementDetails;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/WinLuckyNumberResponseJsonAdapter;-><init>(Lo/StatementResponse$StatementDetails;)V

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object v6, p1

    :goto_0
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lo/activateCredProtect;-><init>(IZIZILo/WinLuckyNumberResponseJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lo/activateCredProtect;->extraCallback:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lo/activateCredProtect;->onNavigationEvent:Z

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lo/activateCredProtect;->onPostMessage:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lo/activateCredProtect;->ICustomTabsCallback:Z

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lo/activateCredProtect;->onMessageChannelReady:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lo/activateCredProtect;->asBinder:Lo/WinLuckyNumberResponseJsonAdapter;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
