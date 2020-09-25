.class public final Lo/getInteger$ICustomTabsCallback$Stub$Proxy$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isLayoutRtl$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInteger$ICustomTabsCallback$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$1$1",
        "Lcom/dreamplug/androidapp/ui/widget/BottomSheetAlertDialog$OnBottomSheetCtaClicked;",
        "onCtaClicked",
        "",
        "bottomSheetAlertDialog",
        "Lcom/dreamplug/androidapp/ui/widget/BottomSheetAlertDialog;",
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
.method constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/isLayoutRtl;)V
    .locals 1

    const-string v0, "bottomSheetAlertDialog"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
