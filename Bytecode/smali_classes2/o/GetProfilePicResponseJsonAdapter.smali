.class final Lo/GetProfilePicResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/Flow;

.field private final synthetic onNavigationEvent:Lo/FlowJsonAdapter;


# direct methods
.method constructor <init>(Lo/setBackgroundImage;Lo/Flow;Lo/FlowJsonAdapter;)V
    .locals 0

    iput-object p2, p0, Lo/GetProfilePicResponseJsonAdapter;->extraCallback:Lo/Flow;

    iput-object p3, p0, Lo/GetProfilePicResponseJsonAdapter;->onNavigationEvent:Lo/FlowJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/GetProfilePicResponseJsonAdapter;->extraCallback:Lo/Flow;

    iget-object v1, p0, Lo/GetProfilePicResponseJsonAdapter;->onNavigationEvent:Lo/FlowJsonAdapter;

    invoke-interface {v0, v1}, Lo/Flow;->onMessageChannelReady(Lo/FlowJsonAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
