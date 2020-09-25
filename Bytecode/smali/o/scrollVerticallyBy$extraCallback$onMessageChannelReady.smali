.class final Lo/scrollVerticallyBy$extraCallback$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/scrollVerticallyBy$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/dreamplug/fabrik/ui/lending/LoanManagementFragment$loanManagementResponse$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/scrollVerticallyBy$extraCallback;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/Cta;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/scrollVerticallyBy$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/scrollVerticallyBy$extraCallback$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    iput-object p2, p0, Lo/scrollVerticallyBy$extraCallback$onMessageChannelReady;->extraCallback:Lo/scrollVerticallyBy$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 129
    sget-object p1, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    iget-object p1, p0, Lo/scrollVerticallyBy$extraCallback$onMessageChannelReady;->extraCallback:Lo/scrollVerticallyBy$extraCallback;

    iget-object p1, p1, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    check-cast p1, Landroidx/fragment/app/Fragment;

    new-instance v0, Lo/getMovementFlags$onMessageChannelReady;

    iget-object v1, p0, Lo/scrollVerticallyBy$extraCallback$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-direct {v0, v1}, Lo/getMovementFlags$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V

    invoke-static {p1, v0}, Lo/getMovementFlags;->onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getMovementFlags$onMessageChannelReady;)V

    return-void
.end method
