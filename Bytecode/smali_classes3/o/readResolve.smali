.class final Lo/readResolve;
.super Lo/setAllowAdaptiveSelections;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Lo/SplitInstallException;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    iput-object p2, p0, Lo/readResolve;->onMessageChannelReady:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Lo/setAllowAdaptiveSelections;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lo/readResolve;->onMessageChannelReady:Lo/removeBackgroundStateChangeListener;

    invoke-static {p1, v0}, Lo/addAllInternal;->onPostMessage(Lcom/google/android/gms/common/api/Status;Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method
