.class final Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lcom/android/installreferrer/api/InstallReferrerStateListener;

.field private synthetic onMessageChannelReady:Lcom/android/installreferrer/api/InstallReferrerClientImpl;


# direct methods
.method private constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;->onMessageChannelReady:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 1
    iput-object p2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;->ICustomTabsCallback:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please specify a listener to know when setup is done."

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service connected."

    .line 2
    invoke-static {p1, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;->onMessageChannelReady:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 1002
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1003
    instance-of v1, v0, Lo/StatementResponse$RewardDetails;

    if-eqz v1, :cond_1

    .line 1004
    move-object p2, v0

    check-cast p2, Lo/StatementResponse$RewardDetails;

    goto :goto_0

    :cond_1
    new-instance v0, Lo/StatementResponse$RewardDetails$extraCallback$onPostMessage;

    .line 1005
    invoke-direct {v0, p2}, Lo/StatementResponse$RewardDetails$extraCallback$onPostMessage;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 3
    :goto_0
    invoke-static {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->ICustomTabsCallback(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lo/StatementResponse$RewardDetails;)Lo/StatementResponse$RewardDetails;

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;->onMessageChannelReady:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 p2, 0x2

    .line 4
    invoke-static {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->ICustomTabsCallback(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;->ICustomTabsCallback:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service disconnected."

    .line 6
    invoke-static {p1, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;->onMessageChannelReady:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->ICustomTabsCallback(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lo/StatementResponse$RewardDetails;)Lo/StatementResponse$RewardDetails;

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;->onMessageChannelReady:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->ICustomTabsCallback(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$onNavigationEvent;->ICustomTabsCallback:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .line 9
    invoke-interface {p1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerServiceDisconnected()V

    return-void
.end method
