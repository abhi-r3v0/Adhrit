.class public final Lo/computeHorizontalScrollRange$extraCallback;
.super Lo/computeHorizontalScrollRange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeHorizontalScrollRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computeHorizontalScrollRange$extraCallback$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0008H\u00d6\u0001J\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/StashRouteScreen$DisbursalStatus;",
        "Lcom/dreamplug/fabrik/ui/lending/StashRouteScreen;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashOrderStatusExtra;",
        "(Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashOrderStatusExtra;)V",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashOrderStatusExtra;",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final onMessageChannelReady:Lo/onDetach$INotificationSideChannel$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/computeHorizontalScrollRange$extraCallback$onNavigationEvent;

    invoke-direct {v0}, Lo/computeHorizontalScrollRange$extraCallback$onNavigationEvent;-><init>()V

    sput-object v0, Lo/computeHorizontalScrollRange$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/onDetach$INotificationSideChannel$Stub;)V
    .locals 1

    const-string v0, "extra"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lo/computeHorizontalScrollRange;-><init>(B)V

    iput-object p1, p0, Lo/computeHorizontalScrollRange$extraCallback;->onMessageChannelReady:Lo/onDetach$INotificationSideChannel$Stub;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/computeHorizontalScrollRange$extraCallback;->onMessageChannelReady:Lo/onDetach$INotificationSideChannel$Stub;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
