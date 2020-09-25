.class public final Lo/writeSessionOs;
.super Landroid/os/ResultReceiver;


# instance fields
.field private synthetic extraCallback:Lo/doOnboarding;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lo/doOnboarding;)V
    .locals 0

    iput-object p2, p0, Lo/writeSessionOs;->extraCallback:Lo/doOnboarding;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lo/writeSessionOs;->extraCallback:Lo/doOnboarding;

    .line 1000
    iget-object p1, p1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/Onboarding;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void
.end method
