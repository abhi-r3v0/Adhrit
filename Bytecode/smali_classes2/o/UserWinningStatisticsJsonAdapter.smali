.class public final Lo/UserWinningStatisticsJsonAdapter;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/UserWinningStatisticsJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final onMessageChannelReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/WheelSlab;

    invoke-direct {v0}, Lo/WheelSlab;-><init>()V

    sput-object v0, Lo/UserWinningStatisticsJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/UserWinningStatisticsJsonAdapter;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lo/UserWinningStatisticsJsonAdapter;->onMessageChannelReady:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
