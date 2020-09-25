.class public final Lo/getInfoKey$INotificationSideChannel;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "INotificationSideChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$INotificationSideChannel$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "Ljava/util/LinkedHashSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$INotificationSideChannel$onMessageChannelReady;

.field private static final onNavigationEvent:Lo/getFirstChildKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 592
    new-instance v0, Lo/getInfoKey$INotificationSideChannel$3;

    invoke-direct {v0}, Lo/getInfoKey$INotificationSideChannel$3;-><init>()V

    sput-object v0, Lo/getInfoKey$INotificationSideChannel;->onNavigationEvent:Lo/getFirstChildKey;

    .line 614
    new-instance v0, Lo/getInfoKey$INotificationSideChannel$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$INotificationSideChannel$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/getInfoKey$INotificationSideChannel;->CREATOR:Lo/getInfoKey$INotificationSideChannel$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 606
    sget-object v0, Lo/getInfoKey$INotificationSideChannel;->onNavigationEvent:Lo/getFirstChildKey;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 2

    .line 610
    sget-object v0, Lo/getInfoKey$INotificationSideChannel;->onNavigationEvent:Lo/getFirstChildKey;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 590
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 590
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
