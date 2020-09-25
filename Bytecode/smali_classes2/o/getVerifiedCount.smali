.class final Lo/getVerifiedCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;


# instance fields
.field private final synthetic ICustomTabsCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field private final synthetic extraCallback:Lo/AmexWebViewInterface;


# direct methods
.method constructor <init>(Lo/AmexWebViewInterface;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getVerifiedCount;->extraCallback:Lo/AmexWebViewInterface;

    iput-object p2, p0, Lo/getVerifiedCount;->ICustomTabsCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lo/getVerifiedCount;->extraCallback:Lo/AmexWebViewInterface;

    invoke-static {p1}, Lo/AmexWebViewInterface;->ICustomTabsCallback(Lo/AmexWebViewInterface;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/getVerifiedCount;->ICustomTabsCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
