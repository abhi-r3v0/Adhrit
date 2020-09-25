.class public Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildHttpRequest(Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;->buildHttpRequest(Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public buildHttpRequest(Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/network/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/network/HttpRequest;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;-><init>(Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
