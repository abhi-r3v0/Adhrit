.class public final Lo/getInfoKey$getRoot;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$getRoot$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$getRoot$onNavigationEvent;

.field private static final onMessageChannelReady:Lo/fromNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 461
    new-instance v0, Lo/getInfoKey$getRoot$2;

    invoke-direct {v0}, Lo/getInfoKey$getRoot$2;-><init>()V

    sput-object v0, Lo/getInfoKey$getRoot;->onMessageChannelReady:Lo/fromNode;

    .line 493
    new-instance v0, Lo/getInfoKey$getRoot$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$getRoot$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/getInfoKey$getRoot;->CREATOR:Lo/getInfoKey$getRoot$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 485
    sget-object v0, Lo/getInfoKey$getRoot;->onMessageChannelReady:Lo/fromNode;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 489
    sget-object v0, Lo/getInfoKey$getRoot;->onMessageChannelReady:Lo/fromNode;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 459
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 459
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method