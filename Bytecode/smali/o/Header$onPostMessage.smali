.class public final Lo/Header$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/Header$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1356
    new-instance v0, Lo/Header$onPostMessage$4;

    invoke-direct {v0}, Lo/Header$onPostMessage$4;-><init>()V

    sput-object v0, Lo/Header$onPostMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(I[I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1281
    invoke-direct {p0, p1, p2, v0, v1}, Lo/Header$onPostMessage;-><init>(I[III)V

    return-void
.end method

.method public constructor <init>(I[III)V
    .locals 0

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    iput p1, p0, Lo/Header$onPostMessage;->ICustomTabsCallback:I

    .line 1292
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lo/Header$onPostMessage;->onPostMessage:[I

    .line 1293
    array-length p2, p2

    iput p2, p0, Lo/Header$onPostMessage;->onNavigationEvent:I

    .line 1294
    iput p3, p0, Lo/Header$onPostMessage;->extraCallback:I

    .line 1295
    iput p4, p0, Lo/Header$onPostMessage;->onMessageChannelReady:I

    .line 1296
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onPostMessage;->ICustomTabsCallback:I

    .line 1301
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lo/Header$onPostMessage;->onNavigationEvent:I

    .line 1302
    new-array v0, v0, [I

    iput-object v0, p0, Lo/Header$onPostMessage;->onPostMessage:[I

    .line 1303
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 1304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onPostMessage;->extraCallback:I

    .line 1305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/Header$onPostMessage;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1330
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1333
    :cond_1
    check-cast p1, Lo/Header$onPostMessage;

    .line 1334
    iget v2, p0, Lo/Header$onPostMessage;->ICustomTabsCallback:I

    iget v3, p1, Lo/Header$onPostMessage;->ICustomTabsCallback:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/Header$onPostMessage;->onPostMessage:[I

    iget-object v3, p1, Lo/Header$onPostMessage;->onPostMessage:[I

    .line 1335
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lo/Header$onPostMessage;->extraCallback:I

    iget v3, p1, Lo/Header$onPostMessage;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/Header$onPostMessage;->onMessageChannelReady:I

    iget p1, p1, Lo/Header$onPostMessage;->onMessageChannelReady:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final extraCallback(I)Z
    .locals 5

    .line 1310
    iget-object v0, p0, Lo/Header$onPostMessage;->onPostMessage:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1320
    iget v0, p0, Lo/Header$onPostMessage;->ICustomTabsCallback:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/Header$onPostMessage;->onPostMessage:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1321
    iget v1, p0, Lo/Header$onPostMessage;->extraCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1322
    iget v1, p0, Lo/Header$onPostMessage;->onMessageChannelReady:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1349
    iget p2, p0, Lo/Header$onPostMessage;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    iget-object p2, p0, Lo/Header$onPostMessage;->onPostMessage:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    iget-object p2, p0, Lo/Header$onPostMessage;->onPostMessage:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1352
    iget p2, p0, Lo/Header$onPostMessage;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    iget p2, p0, Lo/Header$onPostMessage;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
