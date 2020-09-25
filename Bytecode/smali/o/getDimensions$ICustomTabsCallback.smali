.class public final Lo/getDimensions$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Lo/getDimensions$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 203
    iput-wide p2, p0, Lo/getDimensions$ICustomTabsCallback;->onMessageChannelReady:J

    return-void
.end method

.method synthetic constructor <init>(IJLo/getDimensions$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lo/getDimensions$ICustomTabsCallback;-><init>(IJ)V

    return-void
.end method

.method static synthetic extraCallback(Landroid/os/Parcel;)Lo/getDimensions$ICustomTabsCallback;
    .locals 0

    .line 196
    invoke-static {p0}, Lo/getDimensions$ICustomTabsCallback;->onPostMessage(Landroid/os/Parcel;)Lo/getDimensions$ICustomTabsCallback;

    move-result-object p0

    return-object p0
.end method

.method private onMessageChannelReady(Landroid/os/Parcel;)V
    .locals 2

    .line 211
    iget v0, p0, Lo/getDimensions$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-wide v0, p0, Lo/getDimensions$ICustomTabsCallback;->onMessageChannelReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/getDimensions$ICustomTabsCallback;Landroid/os/Parcel;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lo/getDimensions$ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Parcel;)V

    return-void
.end method

.method private static onPostMessage(Landroid/os/Parcel;)Lo/getDimensions$ICustomTabsCallback;
    .locals 4

    .line 207
    new-instance v0, Lo/getDimensions$ICustomTabsCallback;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lo/getDimensions$ICustomTabsCallback;-><init>(IJ)V

    return-object v0
.end method
