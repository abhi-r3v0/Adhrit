.class abstract Lcom/google/firebase/crashlytics/internal/settings/network/AbstractAppSpiCall;
.super Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/network/AppSpiCall;


# static fields
.field public static final APP_BUILD_VERSION_PARAM:Ljava/lang/String; = "app[build_version]"

.field public static final APP_BUILT_SDK_VERSION_PARAM:Ljava/lang/String; = "app[built_sdk_version]"

.field public static final APP_DISPLAY_VERSION_PARAM:Ljava/lang/String; = "app[display_version]"

.field public static final APP_IDENTIFIER_PARAM:Ljava/lang/String; = "app[identifier]"

.field public static final APP_INSTANCE_IDENTIFIER_PARAM:Ljava/lang/String; = "app[instance_identifier]"

.field public static final APP_MIN_SDK_VERSION_PARAM:Ljava/lang/String; = "app[minimum_sdk_version]"

.field public static final APP_NAME_PARAM:Ljava/lang/String; = "app[name]"

.field public static final APP_SOURCE_PARAM:Ljava/lang/String; = "app[source]"

.field public static final ORGANIZATION_ID_PARAM:Ljava/lang/String; = "org_id"


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/network/HttpMethod;)V

    .line 52
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/network/AbstractAppSpiCall;->version:Ljava/lang/String;

    return-void
.end method

.method private applyHeadersTo(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 2

    .line 85
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->organizationId:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-ORG-ID"

    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->googleAppId:Ljava/lang/String;

    const-string v0, "X-CRASHLYTICS-GOOGLE-APP-ID"

    .line 87
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    const-string p2, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v0, "android"

    .line 88
    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/AbstractAppSpiCall;->version:Ljava/lang/String;

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    .line 89
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method private applyMultipartDataTo(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 2

    .line 94
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->organizationId:Ljava/lang/String;

    const-string v1, "org_id"

    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->appId:Ljava/lang/String;

    const-string v1, "app[identifier]"

    .line 97
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->name:Ljava/lang/String;

    const-string v1, "app[name]"

    .line 98
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->displayVersion:Ljava/lang/String;

    const-string v1, "app[display_version]"

    .line 99
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->buildVersion:Ljava/lang/String;

    const-string v1, "app[build_version]"

    .line 100
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->source:I

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app[source]"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->minSdkVersion:Ljava/lang/String;

    const-string v1, "app[minimum_sdk_version]"

    .line 102
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->builtSdkVersion:Ljava/lang/String;

    const-string v1, "app[built_sdk_version]"

    .line 103
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    .line 105
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->instanceIdentifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->instanceIdentifier:Ljava/lang/String;

    const-string v0, "app[instance_identifier]"

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public invoke(Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;Z)Z
    .locals 3

    if-eqz p2, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/settings/network/AbstractAppSpiCall;->getHttpRequest()Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p2

    .line 62
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/AbstractAppSpiCall;->applyHeadersTo(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p2

    .line 63
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/AbstractAppSpiCall;->applyMultipartDataTo(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    .line 65
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending app info to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/settings/network/AbstractAppSpiCall;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->execute()Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code()I

    move-result v0

    const-string v1, "POST"

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Create"

    goto :goto_0

    :cond_0
    const-string p1, "Update"

    .line 73
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " app request ID: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "X-REQUEST-ID"

    .line 74
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string p2, "Result was "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/ResponseParser;->parse(I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 79
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    const-string v0, "HTTP request failed."

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "An invalid data collection token was used."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
