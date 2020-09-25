.class final Lo/getTotalCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPaymentItem$onNavigationEvent;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;
    .locals 0

    .line 2
    invoke-static {p1}, Lo/replaceAllInsert$extraCallback;->onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    return-object p1
.end method
