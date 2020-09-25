.class public final Lo/setDatabaseUrl$getInterfaceDescriptor;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDatabaseUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getInterfaceDescriptor"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setDatabaseUrl$getInterfaceDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:I

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/validateExperimentInfoMap;

    invoke-direct {v0}, Lo/validateExperimentInfoMap;-><init>()V

    sput-object v0, Lo/setDatabaseUrl$getInterfaceDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput-object p1, p0, Lo/setDatabaseUrl$getInterfaceDescriptor;->onPostMessage:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo/setDatabaseUrl$getInterfaceDescriptor;->onMessageChannelReady:Ljava/lang/String;

    .line 5
    iput p3, p0, Lo/setDatabaseUrl$getInterfaceDescriptor;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 9
    iget-object v1, p0, Lo/setDatabaseUrl$getInterfaceDescriptor;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    iget-object v1, p0, Lo/setDatabaseUrl$getInterfaceDescriptor;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 11
    iget p2, p0, Lo/setDatabaseUrl$getInterfaceDescriptor;->onNavigationEvent:I

    const/4 v1, 0x4

    .line 2039
    invoke-static {p1, v1, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v2, p2, v0

    sub-int/2addr v0, v1

    .line 4013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4014
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
