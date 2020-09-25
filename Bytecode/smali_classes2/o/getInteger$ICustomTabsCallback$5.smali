.class public final Lo/getInteger$ICustomTabsCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BiometricPrompt$2$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInteger$ICustomTabsCallback;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/BureauReportNotFoundFragment$dobBottomSheet$2$1",
        "Lcom/dreamplug/androidapp/ui/widget/DobBottomSheet$OnBottomSheetCtaClicked;",
        "onCtaClicked",
        "",
        "dob",
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
.field private synthetic onNavigationEvent:Lo/getInteger$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getInteger$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lo/getInteger$ICustomTabsCallback$5;->onNavigationEvent:Lo/getInteger$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    const-string v0, "dob"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lo/getInteger$ICustomTabsCallback$5;->onNavigationEvent:Lo/getInteger$ICustomTabsCallback;

    iget-object v1, v1, Lo/getInteger$ICustomTabsCallback;->extraCallback:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->onPostMessage(Lo/getInteger;)Lo/getTitleMarginStart;

    move-result-object v1

    .line 1021
    iput-object p1, v1, Lo/getTitleMarginStart;->onNavigationEvent:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lo/getInteger$ICustomTabsCallback$5;->onNavigationEvent:Lo/getInteger$ICustomTabsCallback;

    iget-object p1, p1, Lo/getInteger$ICustomTabsCallback;->extraCallback:Lo/getInteger;

    invoke-static {p1}, Lo/getInteger;->onPostMessage(Lo/getInteger;)Lo/getTitleMarginStart;

    move-result-object p1

    const/4 v1, 0x0

    .line 1022
    iput-object v1, p1, Lo/getTitleMarginStart;->ICustomTabsCallback:Ljava/lang/String;

    const-string p1, "onboard_dob_submit"

    .line 43
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 44
    iget-object p1, p0, Lo/getInteger$ICustomTabsCallback$5;->onNavigationEvent:Lo/getInteger$ICustomTabsCallback;

    iget-object p1, p1, Lo/getInteger$ICustomTabsCallback;->extraCallback:Lo/getInteger;

    invoke-static {p1, v0}, Lo/getInteger;->extraCallback(Lo/getInteger;Ljava/lang/String;)V

    return-void
.end method
