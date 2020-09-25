.class final Lo/BottomBarItem;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getBilledDate;


# instance fields
.field private final ICustomTabsCallback:Lo/applyTo;

.field private final onMessageChannelReady:Lo/SuggestedAmount;

.field private final synthetic onPostMessage:Lo/setMutableMap;


# direct methods
.method public constructor <init>(Lo/setMutableMap;Lo/applyTo;Lo/SuggestedAmount;)V
    .locals 0

    iput-object p1, p0, Lo/BottomBarItem;->onPostMessage:Lo/setMutableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/BottomBarItem;->ICustomTabsCallback:Lo/applyTo;

    iput-object p3, p0, Lo/BottomBarItem;->onMessageChannelReady:Lo/SuggestedAmount;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/BottomBarItem;->onMessageChannelReady:Lo/SuggestedAmount;

    iget-object v1, p0, Lo/BottomBarItem;->onPostMessage:Lo/setMutableMap;

    invoke-static {v1}, Lo/setMutableMap;->ICustomTabsCallback(Lo/setMutableMap;)Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->ICustomTabsCallback(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p1, p0, Lo/BottomBarItem;->ICustomTabsCallback:Lo/applyTo;

    invoke-virtual {p1}, Lo/applyTo;->extraCallback()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lo/BottomBarItem;->onMessageChannelReady:Lo/SuggestedAmount;

    invoke-virtual {v0, p1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lo/BottomBarItem;->ICustomTabsCallback:Lo/applyTo;

    invoke-virtual {v0}, Lo/applyTo;->extraCallback()V

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lo/BottomBarItem;->onMessageChannelReady:Lo/SuggestedAmount;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwe;-><init>()V

    invoke-virtual {p1, v0}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/BottomBarItem;->onMessageChannelReady:Lo/SuggestedAmount;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p1, p0, Lo/BottomBarItem;->ICustomTabsCallback:Lo/applyTo;

    invoke-virtual {p1}, Lo/applyTo;->extraCallback()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/BottomBarItem;->ICustomTabsCallback:Lo/applyTo;

    invoke-virtual {v0}, Lo/applyTo;->extraCallback()V

    throw p1
.end method
