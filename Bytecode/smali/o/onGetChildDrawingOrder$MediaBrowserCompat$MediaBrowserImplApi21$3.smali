.class public final Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;
.super Lo/onGetChildDrawingOrder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onGetChildDrawingOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "3"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$WinDetails;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens;",
        "winDetailsExtra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$WinDetailsData;",
        "(Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$WinDetailsData;)V",
        "getWinDetailsExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$WinDetailsData;",
        "getTag",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onPostMessage:Lo/onDetach$IconCompatParcelizer;


# direct methods
.method public constructor <init>(Lo/onDetach$IconCompatParcelizer;)V
    .locals 1

    const-string/jumbo v0, "winDetailsExtra"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lo/onGetChildDrawingOrder;-><init>(B)V

    iput-object p1, p0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage:Lo/onDetach$IconCompatParcelizer;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "WIN_DETAILS"

    return-object v0
.end method
