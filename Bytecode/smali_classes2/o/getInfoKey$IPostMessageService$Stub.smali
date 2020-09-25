.class public final Lo/getInfoKey$IPostMessageService$Stub;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$IPostMessageService$Stub$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$IPostMessageService$Stub$onMessageChannelReady;

.field private static final onNavigationEvent:Lo/addIndentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addIndentation<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 752
    new-instance v0, Lo/getInfoKey$IPostMessageService$Stub$2;

    invoke-direct {v0}, Lo/getInfoKey$IPostMessageService$Stub$2;-><init>()V

    sput-object v0, Lo/getInfoKey$IPostMessageService$Stub;->onNavigationEvent:Lo/addIndentation;

    .line 774
    new-instance v0, Lo/getInfoKey$IPostMessageService$Stub$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$IPostMessageService$Stub$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/getInfoKey$IPostMessageService$Stub;->CREATOR:Lo/getInfoKey$IPostMessageService$Stub$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 766
    sget-object v0, Lo/getInfoKey$IPostMessageService$Stub;->onNavigationEvent:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    .line 770
    sget-object v0, Lo/getInfoKey$IPostMessageService$Stub;->onNavigationEvent:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 750
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 750
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
