.class Lo/ICustomTabsService$extraCallback;
.super Lo/ICustomTabsService$onRelationshipValidationResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ICustomTabsService;

.field private final onPostMessage:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;Landroid/content/Context;)V
    .locals 0

    .line 3270
    iput-object p1, p0, Lo/ICustomTabsService$extraCallback;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-direct {p0, p1}, Lo/ICustomTabsService$onRelationshipValidationResult;-><init>(Lo/ICustomTabsService;)V

    .line 3271
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    .line 3272
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lo/ICustomTabsService$extraCallback;->onPostMessage:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 1

    .line 3286
    iget-object v0, p0, Lo/ICustomTabsService$extraCallback;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-virtual {v0}, Lo/ICustomTabsService;->ICustomTabsService$Stub$Proxy()Z

    return-void
.end method

.method onMessageChannelReady()Landroid/content/IntentFilter;
    .locals 2

    .line 3291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3292
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 3293
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNavigationEvent()I
    .locals 3

    .line 3278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 3279
    iget-object v0, p0, Lo/ICustomTabsService$extraCallback;->onPostMessage:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1
.end method
