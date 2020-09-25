.class public final Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/setLastItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/PropertyDataInfo;

    invoke-direct {v0}, Lo/PropertyDataInfo;-><init>()V

    sput-object v0, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/setLastItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->onMessageChannelReady:Lo/setLastItem;

    iput-object p2, p0, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->onMessageChannelReady:Lo/setLastItem;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lo/CredProtectResponse_Cards_Properties_DataJsonAdapter;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
