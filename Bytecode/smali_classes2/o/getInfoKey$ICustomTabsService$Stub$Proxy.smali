.class public final Lo/getInfoKey$ICustomTabsService$Stub$Proxy;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$ICustomTabsService$Stub$Proxy$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$ICustomTabsService$Stub$Proxy$onNavigationEvent;

.field private static final ICustomTabsCallback:Lo/addIndentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addIndentation<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 952
    new-instance v0, Lo/getInfoKey$ICustomTabsService$Stub$Proxy$1;

    invoke-direct {v0}, Lo/getInfoKey$ICustomTabsService$Stub$Proxy$1;-><init>()V

    sput-object v0, Lo/getInfoKey$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/addIndentation;

    .line 974
    new-instance v0, Lo/getInfoKey$ICustomTabsService$Stub$Proxy$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$ICustomTabsService$Stub$Proxy$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/getInfoKey$ICustomTabsService$Stub$Proxy;->CREATOR:Lo/getInfoKey$ICustomTabsService$Stub$Proxy$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    .line 970
    sget-object v0, Lo/getInfoKey$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 966
    sget-object v0, Lo/getInfoKey$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 950
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 950
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
