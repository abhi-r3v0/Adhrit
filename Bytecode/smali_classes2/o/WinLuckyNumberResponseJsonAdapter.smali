.class public final Lo/WinLuckyNumberResponseJsonAdapter;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/WinLuckyNumberResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Z

.field public final onMessageChannelReady:Z

.field public final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/WinPullDownResponse;

    invoke-direct {v0}, Lo/WinPullDownResponse;-><init>()V

    sput-object v0, Lo/WinLuckyNumberResponseJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/StatementResponse$StatementDetails;)V
    .locals 2

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails;->extraCallback()Z

    move-result v0

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails;->ICustomTabsCallback()Z

    move-result v1

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails;->onPostMessage()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lo/WinLuckyNumberResponseJsonAdapter;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-boolean p1, p0, Lo/WinLuckyNumberResponseJsonAdapter;->ICustomTabsCallback:Z

    iput-boolean p2, p0, Lo/WinLuckyNumberResponseJsonAdapter;->onPostMessage:Z

    iput-boolean p3, p0, Lo/WinLuckyNumberResponseJsonAdapter;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lo/WinLuckyNumberResponseJsonAdapter;->ICustomTabsCallback:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lo/WinLuckyNumberResponseJsonAdapter;->onPostMessage:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lo/WinLuckyNumberResponseJsonAdapter;->onMessageChannelReady:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
