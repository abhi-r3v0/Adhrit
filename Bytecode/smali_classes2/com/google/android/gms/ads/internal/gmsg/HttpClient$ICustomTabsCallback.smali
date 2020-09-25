.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$ICustomTabsCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    return-void
.end method
