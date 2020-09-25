.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onPostMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field final extraCallback:Ljava/lang/String;

.field final onNavigationEvent:Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onNavigationEvent;


# direct methods
.method public constructor <init>(ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$onNavigationEvent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onPostMessage;->ICustomTabsCallback:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onPostMessage;->onNavigationEvent:Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onNavigationEvent;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$onPostMessage;->extraCallback:Ljava/lang/String;

    return-void
.end method
