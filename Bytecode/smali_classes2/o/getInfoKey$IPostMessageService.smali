.class public final Lo/getInfoKey$IPostMessageService;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IPostMessageService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$IPostMessageService$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "Ljava/util/LinkedHashMap;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$IPostMessageService$onMessageChannelReady;

.field private static final extraCallback:Lo/getLastChildKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 410
    new-instance v0, Lo/getInfoKey$IPostMessageService$3;

    invoke-direct {v0}, Lo/getInfoKey$IPostMessageService$3;-><init>()V

    sput-object v0, Lo/getInfoKey$IPostMessageService;->extraCallback:Lo/getLastChildKey;

    .line 442
    new-instance v0, Lo/getInfoKey$IPostMessageService$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$IPostMessageService$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/getInfoKey$IPostMessageService;->CREATOR:Lo/getInfoKey$IPostMessageService$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 434
    sget-object v0, Lo/getInfoKey$IPostMessageService;->extraCallback:Lo/getLastChildKey;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 438
    sget-object v0, Lo/getInfoKey$IPostMessageService;->extraCallback:Lo/getLastChildKey;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 408
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 408
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
