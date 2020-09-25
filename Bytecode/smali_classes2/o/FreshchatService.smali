.class final Lo/FreshchatService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FreshchatNetworkChangeReceiver;


# instance fields
.field private final synthetic onNavigationEvent:Lo/ac$1;


# direct methods
.method constructor <init>(Lo/ac$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/FreshchatService;->onNavigationEvent:Lo/ac$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/FreshchatService;->onNavigationEvent:Lo/ac$1;

    invoke-virtual {v0}, Lo/ac$1;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(I)B
    .locals 1

    .line 3
    iget-object v0, p0, Lo/FreshchatService;->onNavigationEvent:Lo/ac$1;

    invoke-virtual {v0, p1}, Lo/ac$1;->onNavigationEvent(I)B

    move-result p1

    return p1
.end method
