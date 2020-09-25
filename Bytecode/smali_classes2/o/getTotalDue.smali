.class public final Lo/getTotalDue;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getTotalDue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:Ljava/lang/String;

.field ICustomTabsCallback$Stub:[Lo/setAmountRefunded;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private asBinder:I

.field private final asInterface:I

.field extraCallback:Landroid/accounts/Account;

.field private newSession:I

.field onMessageChannelReady:Landroid/os/Bundle;

.field onNavigationEvent:[Lcom/google/android/gms/common/api/Scope;

.field onPostMessage:Landroid/os/IBinder;

.field private final onRelationshipValidationResult:I

.field onTransact:[Lo/setAmountRefunded;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lo/getRefereeName;

    invoke-direct {v0}, Lo/getRefereeName;-><init>()V

    sput-object v0, Lo/getTotalDue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lo/getTotalDue;->asInterface:I

    const v0, 0xbdfcb8

    .line 3
    iput v0, p0, Lo/getTotalDue;->asBinder:I

    .line 4
    iput p1, p0, Lo/getTotalDue;->onRelationshipValidationResult:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lo/getTotalDue;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lo/setAmountRefunded;[Lo/setAmountRefunded;ZI)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 8
    iput p1, p0, Lo/getTotalDue;->asInterface:I

    .line 9
    iput p2, p0, Lo/getTotalDue;->onRelationshipValidationResult:I

    .line 10
    iput p3, p0, Lo/getTotalDue;->asBinder:I

    const-string p2, "com.google.android.gms"

    .line 11
    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 12
    iput-object p2, p0, Lo/getTotalDue;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    iput-object p4, p0, Lo/getTotalDue;->ICustomTabsCallback:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    .line 19
    invoke-static {p5}, Lo/setTotalPaid$onMessageChannelReady;->ICustomTabsCallback(Landroid/os/IBinder;)Lo/setTotalPaid;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lo/getSecondaryAction;->ICustomTabsCallback(Lo/setTotalPaid;)Landroid/accounts/Account;

    move-result-object p1

    .line 22
    :cond_1
    iput-object p1, p0, Lo/getTotalDue;->extraCallback:Landroid/accounts/Account;

    goto :goto_1

    .line 23
    :cond_2
    iput-object p5, p0, Lo/getTotalDue;->onPostMessage:Landroid/os/IBinder;

    .line 24
    iput-object p8, p0, Lo/getTotalDue;->extraCallback:Landroid/accounts/Account;

    .line 25
    :goto_1
    iput-object p6, p0, Lo/getTotalDue;->onNavigationEvent:[Lcom/google/android/gms/common/api/Scope;

    .line 26
    iput-object p7, p0, Lo/getTotalDue;->onMessageChannelReady:Landroid/os/Bundle;

    .line 27
    iput-object p9, p0, Lo/getTotalDue;->onTransact:[Lo/setAmountRefunded;

    .line 28
    iput-object p10, p0, Lo/getTotalDue;->ICustomTabsCallback$Stub:[Lo/setAmountRefunded;

    .line 29
    iput-boolean p11, p0, Lo/getTotalDue;->ICustomTabsCallback$Stub$Proxy:Z

    .line 30
    iput p12, p0, Lo/getTotalDue;->newSession:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 2008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 35
    iget v2, p0, Lo/getTotalDue;->asInterface:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 2039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v2, p0, Lo/getTotalDue;->onRelationshipValidationResult:I

    const/4 v4, 0x2

    .line 3039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v2, p0, Lo/getTotalDue;->asBinder:I

    const/4 v4, 0x3

    .line 4039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v2, p0, Lo/getTotalDue;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 39
    iget-object v2, p0, Lo/getTotalDue;->onPostMessage:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 40
    iget-object v2, p0, Lo/getTotalDue;->onNavigationEvent:[Lcom/google/android/gms/common/api/Scope;

    const/4 v4, 0x6

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 41
    iget-object v2, p0, Lo/getTotalDue;->onMessageChannelReady:Landroid/os/Bundle;

    const/4 v4, 0x7

    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 42
    iget-object v2, p0, Lo/getTotalDue;->extraCallback:Landroid/accounts/Account;

    const/16 v4, 0x8

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 43
    iget-object v2, p0, Lo/getTotalDue;->onTransact:[Lo/setAmountRefunded;

    const/16 v4, 0xa

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 44
    iget-object v2, p0, Lo/getTotalDue;->ICustomTabsCallback$Stub:[Lo/setAmountRefunded;

    const/16 v4, 0xb

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 45
    iget-boolean p2, p0, Lo/getTotalDue;->ICustomTabsCallback$Stub$Proxy:Z

    const/16 v0, 0xc

    .line 5020
    invoke-static {p1, v0, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lo/getTotalDue;->newSession:I

    const/16 v0, 0xd

    .line 5039
    invoke-static {p1, v0, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5040
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 7013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
