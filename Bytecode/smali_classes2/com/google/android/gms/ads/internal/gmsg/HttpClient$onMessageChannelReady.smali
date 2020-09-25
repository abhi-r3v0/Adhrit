.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onMessageChannelReady;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final extraCallback:Ljava/net/URL;

.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$ICustomTabsCallback;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onMessageChannelReady;->extraCallback:Ljava/net/URL;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onMessageChannelReady;->onPostMessage:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method
