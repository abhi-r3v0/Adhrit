.class public abstract Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

.field private ICustomTabsCallback$Stub:Lo/OnboardCardsDataJsonAdapter;

.field private ICustomTabsCallback$Stub$Proxy:Lo/GameWebViewFragment$MyJavascriptInterface;

.field private ICustomTabsService:Z

.field private asBinder:Ljava/lang/Integer;

.field private asInterface:Z

.field private final extraCallback:I

.field private getInterfaceDescriptor:Z

.field private newSession:Lo/setBody;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:I

.field private onRelationshipValidationResult:Z

.field private onTransact:Lo/RawBankAccount;

.field private warmup:Lo/setAspectRatio;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lo/RawBankAccount;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

    invoke-direct {v0}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asInterface:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Z

    iput-boolean v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsService:Z

    iput-boolean v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->getInterfaceDescriptor:Z

    iput-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/GameWebViewFragment$MyJavascriptInterface;

    iput p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->extraCallback:I

    iput-object p2, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/RawBankAccount;

    new-instance p1, Lo/UrgencyJsonAdapter;

    invoke-direct {p1}, Lo/UrgencyJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->warmup:Lo/setAspectRatio;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    iput v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;
    .locals 0

    iget-object p0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->extraCallback:I

    return v0
.end method

.method public final ICustomTabsCallback(Lo/GameWebViewFragment$MyJavascriptInterface;)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/GameWebViewFragment$MyJavascriptInterface;",
            ")",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/GameWebViewFragment$MyJavascriptInterface;

    return-object p0
.end method

.method public final ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 2

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/RawBankAccount;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lo/RawBankAccount;->ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->ICustomTabsCallback(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    iget-boolean v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asInterface:Z

    return v0
.end method

.method public final asBinder()Z
    .locals 2

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final asInterface()Lo/GameWebViewFragment$MyJavascriptInterface;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/GameWebViewFragment$MyJavascriptInterface;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    sget-object v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    sget-object v1, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asBinder:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asBinder:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v1}, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public extraCallback()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract extraCallback(Lo/initiateUPI;)Lo/BankAccountSyncRequestJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/initiateUPI;",
            ")",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final extraCallback(Lo/OnboardCardsDataJsonAdapter;)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/OnboardCardsDataJsonAdapter;",
            ")",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/OnboardCardsDataJsonAdapter;

    return-object p0
.end method

.method final getInterfaceDescriptor()V
    .locals 2

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->newSession:Lo/setBody;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lo/setBody;->onPostMessage(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final newSession()Z
    .locals 2

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsService:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract onMessageChannelReady(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onMessageChannelReady()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent(I)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asBinder:Ljava/lang/Integer;

    return-object p0
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage:I

    return v0
.end method

.method final onPostMessage(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/OnboardCardsDataJsonAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lo/OnboardCardsDataJsonAdapter;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)V

    :cond_0
    sget-boolean v0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lo/NBAAckResponseJsonAdapter;

    invoke-direct {v3, p0, p1, v0, v1}, Lo/NBAAckResponseJsonAdapter;-><init>(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

    invoke-virtual {v2, p1, v0, v1}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->ICustomTabsCallback(Ljava/lang/String;J)V

    iget-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

    invoke-virtual {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onPostMessage(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method final onPostMessage(Lo/BankAccountSyncRequestJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->newSession:Lo/setBody;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lo/setBody;->ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final onPostMessage(Lo/setBody;)V
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->newSession:Lo/setBody;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onRelationshipValidationResult()Lo/setAspectRatio;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->warmup:Lo/setAspectRatio;

    return-object v0
.end method

.method public final onTransact()I
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->warmup:Lo/setAspectRatio;

    invoke-interface {v0}, Lo/setAspectRatio;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0x"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "[ ] "

    iget-object v2, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    sget-object v3, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asBinder:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()V
    .locals 2

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsService:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
