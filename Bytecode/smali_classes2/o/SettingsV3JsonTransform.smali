.class final Lo/SettingsV3JsonTransform;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SettingsV3JsonTransform$onNavigationEvent;
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Ljava/lang/String; = "MixpanelAPI.InstallReferrerPlay"

.field private static onPostMessage:Ljava/util/regex/Pattern;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/regex/Pattern;

.field private ICustomTabsCallback$Stub:Lo/SettingsV3JsonTransform$onNavigationEvent;

.field private asBinder:Lcom/android/installreferrer/api/InstallReferrerClient;

.field private asInterface:I

.field private final extraCallback:Ljava/util/regex/Pattern;

.field private newSession:Ljava/util/Timer;

.field private final onNavigationEvent:Ljava/util/regex/Pattern;

.field private onRelationshipValidationResult:Landroid/content/Context;

.field private final onTransact:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(^|&)utm_source=([^&#=]*)([#&]|$)"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/SettingsV3JsonTransform;->onPostMessage:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/SettingsV3JsonTransform$onNavigationEvent;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "(^|&)utm_medium=([^&#=]*)([#&]|$)"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsV3JsonTransform;->onNavigationEvent:Ljava/util/regex/Pattern;

    const-string v0, "(^|&)utm_campaign=([^&#=]*)([#&]|$)"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsV3JsonTransform;->extraCallback:Ljava/util/regex/Pattern;

    const-string v0, "(^|&)utm_content=([^&#=]*)([#&]|$)"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsV3JsonTransform;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    const-string v0, "(^|&)utm_term=([^&#=]*)([#&]|$)"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsV3JsonTransform;->onTransact:Ljava/util/regex/Pattern;

    .line 76
    iput-object p1, p0, Lo/SettingsV3JsonTransform;->onRelationshipValidationResult:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lo/SettingsV3JsonTransform;->ICustomTabsCallback$Stub:Lo/SettingsV3JsonTransform$onNavigationEvent;

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lo/SettingsV3JsonTransform;->asInterface:I

    .line 79
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lo/SettingsV3JsonTransform;->newSession:Ljava/util/Timer;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 1

    .line 212
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 213
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 216
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 218
    :catch_0
    sget-object p0, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Could not decode a parameter into UTF-8"

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private ICustomTabsCallback()V
    .locals 4

    .line 139
    iget v0, p0, Lo/SettingsV3JsonTransform;->asInterface:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 140
    sget-object v0, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "Already retried 5 times. Disconnecting..."

    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lo/SettingsV3JsonTransform;->onPostMessage()V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lo/SettingsV3JsonTransform;->newSession:Ljava/util/Timer;

    new-instance v1, Lo/SettingsV3JsonTransform$5;

    invoke-direct {v1, p0}, Lo/SettingsV3JsonTransform$5;-><init>(Lo/SettingsV3JsonTransform;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 152
    iget v0, p0, Lo/SettingsV3JsonTransform;->asInterface:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/SettingsV3JsonTransform;->asInterface:I

    return-void
.end method

.method private onPostMessage()V
    .locals 3

    .line 156
    iget-object v0, p0, Lo/SettingsV3JsonTransform;->asBinder:Lcom/android/installreferrer/api/InstallReferrerClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lo/SettingsV3JsonTransform;->asBinder:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 160
    sget-object v1, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "Error closing referrer connection"

    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 2

    .line 123
    sget-object v0, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "Install Referrer Service Disconnected."

    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lo/SettingsV3JsonTransform;->ICustomTabsCallback()V

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_a

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 108
    :cond_0
    sget-object p1, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Unexpected error."

    invoke-static {p1, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_1
    sget-object p1, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "API not available on the current Play Store app."

    invoke-static {p1, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_2
    sget-object p1, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Service is currently unavailable."

    invoke-static {p1, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    :cond_3
    :try_start_0
    iget-object p1, p0, Lo/SettingsV3JsonTransform;->asBinder:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "referrer"

    .line 1172
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v2, Lo/SettingsV3JsonTransform;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1175
    invoke-static {v2}, Lo/SettingsV3JsonTransform;->ICustomTabsCallback(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "utm_source"

    .line 1177
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    :cond_4
    iget-object v2, p0, Lo/SettingsV3JsonTransform;->onNavigationEvent:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1181
    invoke-static {v2}, Lo/SettingsV3JsonTransform;->ICustomTabsCallback(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "utm_medium"

    .line 1183
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    :cond_5
    iget-object v2, p0, Lo/SettingsV3JsonTransform;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1187
    invoke-static {v2}, Lo/SettingsV3JsonTransform;->ICustomTabsCallback(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "utm_campaign"

    .line 1189
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    :cond_6
    iget-object v2, p0, Lo/SettingsV3JsonTransform;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1193
    invoke-static {v2}, Lo/SettingsV3JsonTransform;->ICustomTabsCallback(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "utm_content"

    .line 1195
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    :cond_7
    iget-object v2, p0, Lo/SettingsV3JsonTransform;->onTransact:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1199
    invoke-static {p1}, Lo/SettingsV3JsonTransform;->ICustomTabsCallback(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v2, "utm_term"

    .line 1201
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :cond_8
    iget-object p1, p0, Lo/SettingsV3JsonTransform;->onRelationshipValidationResult:Landroid/content/Context;

    const-string v2, "com.mixpanel.android.mpmetrics.ReferralInfo"

    invoke-static {p1, v2, v0}, Lo/AppSpiCall;->extraCallback(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1206
    iget-object p1, p0, Lo/SettingsV3JsonTransform;->ICustomTabsCallback$Stub:Lo/SettingsV3JsonTransform$onNavigationEvent;

    if-eqz p1, :cond_9

    .line 1207
    iget-object p1, p0, Lo/SettingsV3JsonTransform;->ICustomTabsCallback$Stub:Lo/SettingsV3JsonTransform$onNavigationEvent;

    invoke-interface {p1}, Lo/SettingsV3JsonTransform$onNavigationEvent;->onPostMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 92
    sget-object v0, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "There was an error fetching your referrer details."

    invoke-static {v0, v2, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    :cond_a
    sget-object p1, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Service was disconnected unexpectedly."

    invoke-static {p1, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_b

    .line 115
    invoke-direct {p0}, Lo/SettingsV3JsonTransform;->ICustomTabsCallback()V

    return-void

    .line 117
    :cond_b
    invoke-direct {p0}, Lo/SettingsV3JsonTransform;->onPostMessage()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 129
    :try_start_0
    iget-object v0, p0, Lo/SettingsV3JsonTransform;->onRelationshipValidationResult:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsV3JsonTransform;->asBinder:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 130
    invoke-virtual {v0, p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lo/SettingsV3JsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "Install referrer client could not start connection"

    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
