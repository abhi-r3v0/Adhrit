.class public final Lo/ComponentRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/getOnFlingListener$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Lo/getOnFlingListener$onNavigationEvent;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ComponentRegistrar;->onMessageChannelReady:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/ComponentRegistrar;->onPostMessage:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lo/ComponentRegistrar;->onMessageChannelReady:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/ComponentRegistrar;->onPostMessage:Lo/notifyEventReceivers;

    check-cast v1, Lo/validateDependencies;

    .line 1000
    iget-object v1, v1, Lo/validateDependencies;->extraCallback:Lo/setOfProvider;

    .line 3000
    iget-object v1, v1, Lo/setOfProvider;->onMessageChannelReady:Landroid/content/Context;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    if-eqz v1, :cond_1

    .line 2000
    check-cast v0, Lo/getOnFlingListener$onNavigationEvent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.play.core.assetpacks.AssetPackExtractionService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Lo/extraCallback;->onPostMessage(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 5000
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.google.android.play.core.common.PlayCoreDialogWrapperActivity"

    invoke-direct {v4, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v3, v4, v1}, Lo/extraCallback;->onPostMessage(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    if-eqz v0, :cond_0

    return-object v0

    .line 6000
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4000
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
