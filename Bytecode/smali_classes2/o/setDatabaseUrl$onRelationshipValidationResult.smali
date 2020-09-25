.class public final Lo/setDatabaseUrl$onRelationshipValidationResult;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDatabaseUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onRelationshipValidationResult"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setDatabaseUrl$onRelationshipValidationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/fromMap;

    invoke-direct {v0}, Lo/fromMap;-><init>()V

    sput-object v0, Lo/setDatabaseUrl$onRelationshipValidationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput-object p1, p0, Lo/setDatabaseUrl$onRelationshipValidationResult;->onPostMessage:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo/setDatabaseUrl$onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/String;

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

    .line 8
    iget-object v1, p0, Lo/setDatabaseUrl$onRelationshipValidationResult;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    iget-object v1, p0, Lo/setDatabaseUrl$onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    add-int/lit8 v0, v0, -0x4

    .line 3013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
