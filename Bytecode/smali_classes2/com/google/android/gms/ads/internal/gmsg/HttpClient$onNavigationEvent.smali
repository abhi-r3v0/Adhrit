.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onNavigationEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:I

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$ICustomTabsCallback;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onNavigationEvent;->onNavigationEvent:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method
