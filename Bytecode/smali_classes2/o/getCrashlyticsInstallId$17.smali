.class Lo/getCrashlyticsInstallId$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/removeForwardSlashesIn$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->deferredInitialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lo/getCrashlyticsInstallId$17;->this$0:Lo/getCrashlyticsInstallId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;Lo/storeDataCollectionValueInSharedPreferences;Lo/removeForwardSlashesIn$onNavigationEvent;)V
    .locals 0

    .line 150
    iget-object p2, p0, Lo/getCrashlyticsInstallId$17;->this$0:Lo/getCrashlyticsInstallId;

    new-instance p3, Lo/getCrashlyticsInstallId$17$4;

    invoke-direct {p3, p0, p1, p4}, Lo/getCrashlyticsInstallId$17$4;-><init>(Lo/getCrashlyticsInstallId$17;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/removeForwardSlashesIn$onNavigationEvent;)V

    invoke-virtual {p2, p3}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;)V
    .locals 0

    return-void
.end method
