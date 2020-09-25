.class public final Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$getInterfaceDescriptor;
.super Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getInterfaceDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$getInterfaceDescriptor$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabSubMenuScreens$Win;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabSubMenuScreens;",
        "winLandingData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$WinLandingData;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$WinLandingData;)V",
        "getWinLandingData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$WinLandingData;",
        "getTag",
        "",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "win_farm"

    return-object v0
.end method
