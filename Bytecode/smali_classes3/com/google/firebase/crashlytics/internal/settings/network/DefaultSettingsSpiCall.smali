.class public Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;
.super Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;


# static fields
.field static final BUILD_VERSION_PARAM:Ljava/lang/String; = "build_version"

.field static final DISPLAY_VERSION_PARAM:Ljava/lang/String; = "display_version"

.field static final HEADER_DEVICE_MODEL:Ljava/lang/String; = "X-CRASHLYTICS-DEVICE-MODEL"

.field static final HEADER_INSTALLATION_ID:Ljava/lang/String; = "X-CRASHLYTICS-INSTALLATION-ID"

.field static final HEADER_OS_BUILD_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-OS-BUILD-VERSION"

.field static final HEADER_OS_DISPLAY_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-OS-DISPLAY-VERSION"

.field static final INSTANCE_PARAM:Ljava/lang/String; = "instance"

.field static final SOURCE_PARAM:Ljava/lang/String; = "source"


# instance fields
.field private logger:Lcom/google/firebase/crashlytics/internal/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;)V
    .locals 6

    .line 57
    sget-object v4, Lcom/google/firebase/crashlytics/internal/network/HttpMethod;->GET:Lcom/google/firebase/crashlytics/internal/network/HttpMethod;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Lcom/google/firebase/crashlytics/internal/Logger;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Lcom/google/firebase/crashlytics/internal/Logger;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/network/HttpMethod;)V

    .line 68
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    return-void
.end method

.method private applyHeadersTo(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 2

    .line 152
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->googleAppId:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-GOOGLE-APP-ID"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    .line 153
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    .line 155
    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 157
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->deviceModel:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-DEVICE-MODEL"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->osBuildVersion:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-BUILD-VERSION"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->osDisplayVersion:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->installIdProvider:Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;

    .line 162
    invoke-interface {p2}, Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;->getCrashlyticsInstallId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 161
    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 169
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    :cond_0
    return-void
.end method

.method private getJsonObjectFrom(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 127
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 129
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse settings JSON from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Settings response "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getQueryParamsFor(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->buildVersion:Ljava/lang/String;

    const-string v2, "build_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->displayVersion:Ljava/lang/String;

    const-string v2, "display_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->source:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->instanceId:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "instance"

    .line 143
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method handleResponse(Lcom/google/firebase/crashlytics/internal/network/HttpResponse;)Lorg/json/JSONObject;
    .locals 4

    .line 100
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code()I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings result was: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->requestWasSuccessful(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getJsonObjectFrom(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to retrieve settings from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public invoke(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;Z)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_0

    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getQueryParamsFor(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Ljava/util/Map;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getHttpRequest(Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyHeadersTo(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting settings from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    const-string v1, "Settings query params were: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->execute()Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Settings request ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "X-REQUEST-ID"

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->handleResponse(Lcom/google/firebase/crashlytics/internal/network/HttpResponse;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    const-string v0, "Settings request failed."

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "An invalid data collection token was used."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method requestWasSuccessful(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xca

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
