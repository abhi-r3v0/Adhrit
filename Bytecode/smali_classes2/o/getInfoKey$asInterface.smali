.class public final Lo/getInfoKey$asInterface;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$asInterface$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$asInterface$onMessageChannelReady;

.field private static final ICustomTabsCallback:Lo/addIndentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addIndentation<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 992
    new-instance v0, Lo/getInfoKey$asInterface$2;

    invoke-direct {v0}, Lo/getInfoKey$asInterface$2;-><init>()V

    sput-object v0, Lo/getInfoKey$asInterface;->ICustomTabsCallback:Lo/addIndentation;

    .line 1014
    new-instance v0, Lo/getInfoKey$asInterface$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$asInterface$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/getInfoKey$asInterface;->CREATOR:Lo/getInfoKey$asInterface$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1006
    sget-object v0, Lo/getInfoKey$asInterface;->ICustomTabsCallback:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1010
    sget-object v0, Lo/getInfoKey$asInterface;->ICustomTabsCallback:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 990
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 990
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
