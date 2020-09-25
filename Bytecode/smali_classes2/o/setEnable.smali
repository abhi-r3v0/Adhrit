.class public final Lo/setEnable;
.super Lo/CacheLoader$InvalidCacheLoadException;
.source ""

# interfaces
.implements Lo/getPaymentMode$onPostMessage;
.implements Lo/getPaymentMode$ICustomTabsCallback;


# static fields
.field private static onPostMessage:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "+",
            "Lo/FirebaseApiNotAvailableException;",
            "Lo/LocalTestingException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/ReminderResponse;

.field private asBinder:Lo/getMinDue;

.field private final extraCallback:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "+",
            "Lo/FirebaseApiNotAvailableException;",
            "Lo/LocalTestingException;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Landroid/os/Handler;

.field private final onNavigationEvent:Landroid/content/Context;

.field private onTransact:Lo/FirebaseApiNotAvailableException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Lo/initializeApp;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    sput-object v0, Lo/setEnable;->onPostMessage:Lo/setCustomAmount$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/getMinDue;)V
    .locals 1

    .line 1
    sget-object v0, Lo/setEnable;->onPostMessage:Lo/setCustomAmount$onNavigationEvent;

    invoke-direct {p0, p1, p2, p3, v0}, Lo/setEnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/getMinDue;Lo/setCustomAmount$onNavigationEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/getMinDue;Lo/setCustomAmount$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lo/getMinDue;",
            "Lo/setCustomAmount$onNavigationEvent<",
            "+",
            "Lo/FirebaseApiNotAvailableException;",
            "Lo/LocalTestingException;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lo/CacheLoader$InvalidCacheLoadException;-><init>()V

    .line 4
    iput-object p1, p0, Lo/setEnable;->onNavigationEvent:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lo/setEnable;->onMessageChannelReady:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 6
    invoke-static {p3, p1}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMinDue;

    iput-object p1, p0, Lo/setEnable;->asBinder:Lo/getMinDue;

    .line 7
    invoke-virtual {p3}, Lo/getMinDue;->onMessageChannelReady()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/setEnable;->ICustomTabsCallback:Ljava/util/Set;

    .line 8
    iput-object p4, p0, Lo/setEnable;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    return-void
.end method

.method static synthetic extraCallback(Lo/setEnable;Lo/getApps;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lo/setEnable;->onNavigationEvent(Lo/getApps;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setEnable;)Lo/ReminderResponse;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/setEnable;->ICustomTabsCallback$Stub:Lo/ReminderResponse;

    return-object p0
.end method

.method private final onNavigationEvent(Lo/getApps;)V
    .locals 3

    .line 34
    invoke-virtual {p1}, Lo/getApps;->ICustomTabsCallback()Lo/setReferenceId;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lo/setReferenceId;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {p1}, Lo/getApps;->onNavigationEvent()Lo/setPaymentData;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lo/setPaymentData;->extraCallback()Lo/setReferenceId;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lo/setReferenceId;->onPostMessage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    iget-object p1, p0, Lo/setEnable;->ICustomTabsCallback$Stub:Lo/ReminderResponse;

    invoke-interface {p1, v0}, Lo/ReminderResponse;->onPostMessage(Lo/setReferenceId;)V

    .line 41
    iget-object p1, p0, Lo/setEnable;->onTransact:Lo/FirebaseApiNotAvailableException;

    invoke-interface {p1}, Lo/FirebaseApiNotAvailableException;->disconnect()V

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lo/setEnable;->ICustomTabsCallback$Stub:Lo/ReminderResponse;

    invoke-virtual {p1}, Lo/setPaymentData;->onPostMessage()Lo/setTotalPaid;

    move-result-object p1

    iget-object v1, p0, Lo/setEnable;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lo/ReminderResponse;->onNavigationEvent(Lo/setTotalPaid;Ljava/util/Set;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lo/setEnable;->ICustomTabsCallback$Stub:Lo/ReminderResponse;

    invoke-interface {p1, v0}, Lo/ReminderResponse;->onPostMessage(Lo/setReferenceId;)V

    .line 46
    :goto_0
    iget-object p1, p0, Lo/setEnable;->onTransact:Lo/FirebaseApiNotAvailableException;

    invoke-interface {p1}, Lo/FirebaseApiNotAvailableException;->disconnect()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getApps;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lo/setEnable;->onMessageChannelReady:Landroid/os/Handler;

    new-instance v1, Lo/getEnable;

    invoke-direct {v1, p0, p1}, Lo/getEnable;-><init>(Lo/setEnable;Lo/getApps;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lo/setEnable;->onTransact:Lo/FirebaseApiNotAvailableException;

    invoke-interface {p1, p0}, Lo/FirebaseApiNotAvailableException;->onNavigationEvent(Lo/CacheLoader$UnsupportedLoadingOperationException;)V

    return-void
.end method

.method public final onConnectionFailed(Lo/setReferenceId;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/setEnable;->ICustomTabsCallback$Stub:Lo/ReminderResponse;

    invoke-interface {v0, p1}, Lo/ReminderResponse;->onPostMessage(Lo/setReferenceId;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    .line 28
    iget-object p1, p0, Lo/setEnable;->onTransact:Lo/FirebaseApiNotAvailableException;

    invoke-interface {p1}, Lo/FirebaseApiNotAvailableException;->disconnect()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 23
    iget-object v0, p0, Lo/setEnable;->onTransact:Lo/FirebaseApiNotAvailableException;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0}, Lo/FirebaseApiNotAvailableException;->disconnect()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/ReminderResponse;)V
    .locals 9

    .line 10
    iget-object v0, p0, Lo/setEnable;->onTransact:Lo/FirebaseApiNotAvailableException;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0}, Lo/FirebaseApiNotAvailableException;->disconnect()V

    .line 12
    :cond_0
    iget-object v0, p0, Lo/setEnable;->asBinder:Lo/getMinDue;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getMinDue;->ICustomTabsCallback(Ljava/lang/Integer;)V

    .line 13
    iget-object v2, p0, Lo/setEnable;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    iget-object v3, p0, Lo/setEnable;->onNavigationEvent:Landroid/content/Context;

    iget-object v0, p0, Lo/setEnable;->onMessageChannelReady:Landroid/os/Handler;

    .line 14
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lo/setEnable;->asBinder:Lo/getMinDue;

    .line 15
    invoke-virtual {v5}, Lo/getMinDue;->asBinder()Lo/LocalTestingException;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 16
    invoke-virtual/range {v2 .. v8}, Lo/setCustomAmount$onNavigationEvent;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object v0

    check-cast v0, Lo/FirebaseApiNotAvailableException;

    iput-object v0, p0, Lo/setEnable;->onTransact:Lo/FirebaseApiNotAvailableException;

    .line 17
    iput-object p1, p0, Lo/setEnable;->ICustomTabsCallback$Stub:Lo/ReminderResponse;

    .line 18
    iget-object p1, p0, Lo/setEnable;->ICustomTabsCallback:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lo/setEnable;->onTransact:Lo/FirebaseApiNotAvailableException;

    invoke-interface {p1}, Lo/FirebaseApiNotAvailableException;->ICustomTabsCallback()V

    return-void

    .line 19
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/setEnable;->onMessageChannelReady:Landroid/os/Handler;

    new-instance v0, Lo/getShareData;

    invoke-direct {v0, p0}, Lo/getShareData;-><init>(Lo/setEnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
