.class public final Lo/StatementResponse$StatementDetails$CardLimits;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/StatementResponse$StatementDetails$CardLimits;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:Lo/StatisticsItemJsonAdapter;

.field private final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getPaymentDueDate;

    invoke-direct {v0}, Lo/getPaymentDueDate;-><init>()V

    sput-object v0, Lo/StatementResponse$StatementDetails$CardLimits;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZLandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-boolean p1, p0, Lo/StatementResponse$StatementDetails$CardLimits;->onPostMessage:Z

    if-eqz p2, :cond_0

    invoke-static {p2}, Lo/TemplatePropertiesMachine;->onNavigationEvent(Landroid/os/IBinder;)Lo/StatisticsItemJsonAdapter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/StatementResponse$StatementDetails$CardLimits;->onMessageChannelReady:Lo/StatisticsItemJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/StatisticsItemJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/StatementResponse$StatementDetails$CardLimits;->onMessageChannelReady:Lo/StatisticsItemJsonAdapter;

    return-object v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    iget-boolean v0, p0, Lo/StatementResponse$StatementDetails$CardLimits;->onPostMessage:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3000
    iget-boolean v1, p0, Lo/StatementResponse$StatementDetails$CardLimits;->onPostMessage:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 3020
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3021
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v3, p0, Lo/StatementResponse$StatementDetails$CardLimits;->onMessageChannelReady:Lo/StatisticsItemJsonAdapter;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lo/StatisticsItemJsonAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-static {p1, v1, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 5013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
