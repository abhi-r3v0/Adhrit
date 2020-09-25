.class public final Lo/getInfoKey$read;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "read"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$read$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "Ljava/util/Set;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$read$onPostMessage;

.field private static final ICustomTabsCallback:Lo/getHash;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 512
    new-instance v0, Lo/getInfoKey$read$1;

    invoke-direct {v0}, Lo/getInfoKey$read$1;-><init>()V

    sput-object v0, Lo/getInfoKey$read;->ICustomTabsCallback:Lo/getHash;

    .line 534
    new-instance v0, Lo/getInfoKey$read$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$read$onPostMessage;-><init>(B)V

    sput-object v0, Lo/getInfoKey$read;->CREATOR:Lo/getInfoKey$read$onPostMessage;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 526
    sget-object v0, Lo/getInfoKey$read;->ICustomTabsCallback:Lo/getHash;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2

    .line 530
    sget-object v0, Lo/getInfoKey$read;->ICustomTabsCallback:Lo/getHash;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 510
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 510
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
