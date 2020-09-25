.class public final Lo/getInfoKey$ICustomTabsCallback;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$ICustomTabsCallback$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "[Z>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$ICustomTabsCallback$extraCallback;

.field private static final onPostMessage:Lo/isInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1032
    new-instance v0, Lo/isInt;

    invoke-direct {v0}, Lo/isInt;-><init>()V

    sput-object v0, Lo/getInfoKey$ICustomTabsCallback;->onPostMessage:Lo/isInt;

    .line 1043
    new-instance v0, Lo/getInfoKey$ICustomTabsCallback$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$ICustomTabsCallback$extraCallback;-><init>(B)V

    sput-object v0, Lo/getInfoKey$ICustomTabsCallback;->CREATOR:Lo/getInfoKey$ICustomTabsCallback$extraCallback;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1035
    sget-object v0, Lo/getInfoKey$ICustomTabsCallback;->onPostMessage:Lo/isInt;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 2

    .line 1039
    sget-object v0, Lo/getInfoKey$ICustomTabsCallback;->onPostMessage:Lo/isInt;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 1030
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1030
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
