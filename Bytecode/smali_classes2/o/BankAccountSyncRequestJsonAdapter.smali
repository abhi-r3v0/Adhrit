.class public final Lo/BankAccountSyncRequestJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/GameWebViewFragment$MyJavascriptInterface;

.field public final onMessageChannelReady:Lcom/google/android/gms/internal/ads/zzae;

.field public onNavigationEvent:Z

.field public final onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/BankAccountSyncRequestJsonAdapter;->onNavigationEvent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/BankAccountSyncRequestJsonAdapter;->onPostMessage:Ljava/lang/Object;

    iput-object v0, p0, Lo/BankAccountSyncRequestJsonAdapter;->ICustomTabsCallback:Lo/GameWebViewFragment$MyJavascriptInterface;

    iput-object p1, p0, Lo/BankAccountSyncRequestJsonAdapter;->onMessageChannelReady:Lcom/google/android/gms/internal/ads/zzae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lo/GameWebViewFragment$MyJavascriptInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/GameWebViewFragment$MyJavascriptInterface;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/BankAccountSyncRequestJsonAdapter;->onNavigationEvent:Z

    iput-object p1, p0, Lo/BankAccountSyncRequestJsonAdapter;->onPostMessage:Ljava/lang/Object;

    iput-object p2, p0, Lo/BankAccountSyncRequestJsonAdapter;->ICustomTabsCallback:Lo/GameWebViewFragment$MyJavascriptInterface;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/BankAccountSyncRequestJsonAdapter;->onMessageChannelReady:Lcom/google/android/gms/internal/ads/zzae;

    return-void
.end method

.method public static ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)Lo/BankAccountSyncRequestJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzae;",
            ")",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo/BankAccountSyncRequestJsonAdapter;

    invoke-direct {v0, p0}, Lo/BankAccountSyncRequestJsonAdapter;-><init>(Lcom/google/android/gms/internal/ads/zzae;)V

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/Object;Lo/GameWebViewFragment$MyJavascriptInterface;)Lo/BankAccountSyncRequestJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/GameWebViewFragment$MyJavascriptInterface;",
            ")",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo/BankAccountSyncRequestJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/BankAccountSyncRequestJsonAdapter;-><init>(Ljava/lang/Object;Lo/GameWebViewFragment$MyJavascriptInterface;)V

    return-object v0
.end method
