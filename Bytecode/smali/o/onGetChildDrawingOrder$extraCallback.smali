.class public final Lo/onGetChildDrawingOrder$extraCallback;
.super Lo/onGetChildDrawingOrder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onGetChildDrawingOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$AddAutoDebitAddAccountDialog;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$AutoDebitAddAccountExtra;",
        "(Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$AutoDebitAddAccountExtra;)V",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$AutoDebitAddAccountExtra;",
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
.field private final onNavigationEvent:Lo/onDetach$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/onGetChildDrawingOrder$extraCallback;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 338
    invoke-direct {p0, p1}, Lo/onGetChildDrawingOrder$extraCallback;-><init>(Lo/onDetach$ICustomTabsCallback;)V

    return-void
.end method

.method public constructor <init>(Lo/onDetach$ICustomTabsCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, v0}, Lo/onGetChildDrawingOrder;-><init>(B)V

    iput-object p1, p0, Lo/onGetChildDrawingOrder$extraCallback;->onNavigationEvent:Lo/onDetach$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/onDetach$ICustomTabsCallback;
    .locals 1

    .line 338
    iget-object v0, p0, Lo/onGetChildDrawingOrder$extraCallback;->onNavigationEvent:Lo/onDetach$ICustomTabsCallback;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "AddAutoDebitAddAccountDialog"

    return-object v0
.end method
