.class public final Lo/getInfoKey$mayLaunchUrl;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "mayLaunchUrl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$mayLaunchUrl$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$mayLaunchUrl$ICustomTabsCallback;

.field private static final onMessageChannelReady:Lo/addIndentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addIndentation<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 872
    new-instance v0, Lo/getInfoKey$mayLaunchUrl$5;

    invoke-direct {v0}, Lo/getInfoKey$mayLaunchUrl$5;-><init>()V

    sput-object v0, Lo/getInfoKey$mayLaunchUrl;->onMessageChannelReady:Lo/addIndentation;

    .line 894
    new-instance v0, Lo/getInfoKey$mayLaunchUrl$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$mayLaunchUrl$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/getInfoKey$mayLaunchUrl;->CREATOR:Lo/getInfoKey$mayLaunchUrl$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 886
    sget-object v0, Lo/getInfoKey$mayLaunchUrl;->onMessageChannelReady:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 2

    .line 890
    sget-object v0, Lo/getInfoKey$mayLaunchUrl;->onMessageChannelReady:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 870
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 870
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method