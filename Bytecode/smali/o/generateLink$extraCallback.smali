.class public final Lo/generateLink$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/generateLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/generateLink$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:I

.field public final extraCallback:Z

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:[B

.field public final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 432
    new-instance v0, Lo/generateLink$extraCallback$1;

    invoke-direct {v0}, Lo/generateLink$extraCallback$1;-><init>()V

    sput-object v0, Lo/generateLink$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/generateLink$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/generateLink$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lo/generateLink$extraCallback;->onNavigationEvent:[B

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/generateLink$extraCallback;->extraCallback:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    .line 336
    iput-object p2, p0, Lo/generateLink$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 337
    invoke-static {p3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/generateLink$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 338
    iput-object p4, p0, Lo/generateLink$extraCallback;->onNavigationEvent:[B

    .line 339
    iput-boolean p5, p0, Lo/generateLink$extraCallback;->extraCallback:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, p2, p3, v0}, Lo/generateLink$extraCallback;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 318
    invoke-direct/range {v0 .. v5}, Lo/generateLink$extraCallback;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/generateLink$extraCallback;)Ljava/util/UUID;
    .locals 0

    .line 278
    iget-object p0, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 389
    instance-of v0, p1, Lo/generateLink$extraCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 395
    :cond_1
    check-cast p1, Lo/generateLink$extraCallback;

    .line 396
    iget-object v2, p0, Lo/generateLink$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    iget-object v3, p1, Lo/generateLink$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/generateLink$extraCallback;->onPostMessage:Ljava/lang/String;

    iget-object v3, p1, Lo/generateLink$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 397
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    iget-object v3, p1, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    .line 398
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/generateLink$extraCallback;->onNavigationEvent:[B

    iget-object p1, p1, Lo/generateLink$extraCallback;->onNavigationEvent:[B

    .line 399
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 404
    iget v0, p0, Lo/generateLink$extraCallback;->ICustomTabsCallback:I

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 406
    iget-object v1, p0, Lo/generateLink$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 407
    iget-object v1, p0, Lo/generateLink$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 408
    iget-object v1, p0, Lo/generateLink$extraCallback;->onNavigationEvent:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    iput v0, p0, Lo/generateLink$extraCallback;->ICustomTabsCallback:I

    .line 411
    :cond_1
    iget v0, p0, Lo/generateLink$extraCallback;->ICustomTabsCallback:I

    return v0
.end method

.method public final onNavigationEvent([B)Lo/generateLink$extraCallback;
    .locals 7

    .line 384
    new-instance v6, Lo/generateLink$extraCallback;

    iget-object v1, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    iget-object v2, p0, Lo/generateLink$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    iget-object v3, p0, Lo/generateLink$extraCallback;->onPostMessage:Ljava/lang/String;

    iget-boolean v5, p0, Lo/generateLink$extraCallback;->extraCallback:Z

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lo/generateLink$extraCallback;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-object v6
.end method

.method public final onNavigationEvent(Ljava/util/UUID;)Z
    .locals 2

    .line 357
    sget-object v0, Lo/$$c;->ICustomTabsCallback:Ljava/util/UUID;

    iget-object v1, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lo/generateLink$extraCallback;->onNavigationEvent:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 423
    iget-object p2, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 424
    iget-object p2, p0, Lo/generateLink$extraCallback;->onRelationshipValidationResult:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 425
    iget-object p2, p0, Lo/generateLink$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object p2, p0, Lo/generateLink$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object p2, p0, Lo/generateLink$extraCallback;->onNavigationEvent:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 428
    iget-boolean p2, p0, Lo/generateLink$extraCallback;->extraCallback:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
