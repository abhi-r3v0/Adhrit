.class final synthetic Lo/setMode;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LockableBottomSheetBehavior;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setMode;->ICustomTabsCallback:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/setMode;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/setMode;->ICustomTabsCallback:Ljava/lang/String;

    iget-boolean v1, p0, Lo/setMode;->onMessageChannelReady:Z

    invoke-static {v0, v1}, Lo/setOnSeekerChangeListener;->onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
