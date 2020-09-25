.class public final Lo/getInteger$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ViewStubCompat$OnInflateListener$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getInteger;-><init>()V
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/BureauReportNotFoundFragment$dialogInterface$1",
        "Lcom/dreamplug/androidapp/ui/widget/BureauNotFoundDescBottomSheet$DialogInterface;",
        "onCtaClick",
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
.field private synthetic ICustomTabsCallback:Lo/getInteger;


# direct methods
.method constructor <init>(Lo/getInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lo/getInteger$onNavigationEvent;->ICustomTabsCallback:Lo/getInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/getInteger$onNavigationEvent;->ICustomTabsCallback:Lo/getInteger;

    invoke-static {v0}, Lo/getInteger;->asInterface(Lo/getInteger;)V

    const-string v0, "onboard_rnf_add_details_click"

    .line 53
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    return-void
.end method
