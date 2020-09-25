.class public final Lo/AutoDebitRequestBodyJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lo/AutoDebitRequestBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/AutoDebitRequestBodyJsonAdapter;->ICustomTabsCallback:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/AutoDebitRequestBodyJsonAdapter;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lo/AutoDebitRequestBodyJsonAdapter;->ICustomTabsCallback:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lo/AutoDebitRegistrationStatusResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/AutoDebitRequestBody$MandateDetail;

    invoke-direct {v0, p0, p1}, Lo/AutoDebitRequestBody$MandateDetail;-><init>(Lo/AutoDebitRequestBodyJsonAdapter;Landroid/content/Context;)V

    invoke-static {v0}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
