.class public final Lo/getColumnConstraint;
.super Lo/getTags;
.source ""

# interfaces
.implements Lo/getTimestampSeconds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getTags;",
        "Lo/getTimestampSeconds<",
        "Lo/getColumnConstraint;",
        "Lo/CsatConfig$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getColumnConstraint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/lang/Long;

.field private onNavigationEvent:Ljava/lang/Long;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lo/setConversationId;

    invoke-direct {v0}, Lo/setConversationId;-><init>()V

    sput-object v0, Lo/getColumnConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnConstraint;->onNavigationEvent:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 7
    iput-object p1, p0, Lo/getColumnConstraint;->onPostMessage:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lo/getColumnConstraint;->ICustomTabsCallback:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lo/getColumnConstraint;->onMessageChannelReady:Ljava/lang/Long;

    .line 10
    iput-object p4, p0, Lo/getColumnConstraint;->extraCallback:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lo/getColumnConstraint;->onNavigationEvent:Ljava/lang/Long;

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Lo/getColumnConstraint;
    .locals 5

    .line 57
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance p0, Lo/getColumnConstraint;

    invoke-direct {p0}, Lo/getColumnConstraint;-><init>()V

    const-string v1, "refresh_token"

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/getColumnConstraint;->onPostMessage:Ljava/lang/String;

    const-string v1, "access_token"

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/getColumnConstraint;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "expires_in"

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lo/getColumnConstraint;->onMessageChannelReady:Ljava/lang/Long;

    const-string v1, "token_type"

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/getColumnConstraint;->extraCallback:Ljava/lang/String;

    const-string v1, "issued_at"

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnConstraint;->onNavigationEvent:Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "GetTokenResponse"

    const-string v1, "Failed to read GetTokenResponse from JSONObject"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/google/firebase/auth/api/zza;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/api/zza;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/getColumnConstraint;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "refresh_token"

    .line 48
    iget-object v2, p0, Lo/getColumnConstraint;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "access_token"

    .line 49
    iget-object v2, p0, Lo/getColumnConstraint;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expires_in"

    .line 50
    iget-object v2, p0, Lo/getColumnConstraint;->onMessageChannelReady:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token_type"

    .line 51
    iget-object v2, p0, Lo/getColumnConstraint;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "issued_at"

    .line 52
    iget-object v2, p0, Lo/getColumnConstraint;->onNavigationEvent:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GetTokenResponse"

    const-string v2, "Failed to convert GetTokenResponse to JSON"

    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Lcom/google/firebase/auth/api/zza;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/api/zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/getColumnConstraint;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getColumnConstraint;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 20
    iget-object v0, p0, Lo/getColumnConstraint;->onMessageChannelReady:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 22
    iget-object v0, p0, Lo/getColumnConstraint;->onNavigationEvent:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage()Z
    .locals 6

    .line 13
    iget-object v0, p0, Lo/getColumnConstraint;->onNavigationEvent:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lo/getColumnConstraint;->onMessageChannelReady:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 14
    invoke-static {}, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->extraCallback()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 24
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 26
    iget-object v0, p0, Lo/getColumnConstraint;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 28
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 30
    iget-object v0, p0, Lo/getColumnConstraint;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x3

    .line 32
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    invoke-virtual {p0}, Lo/getColumnConstraint;->onMessageChannelReady()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x4

    .line 35
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    .line 37
    iget-object v0, p0, Lo/getColumnConstraint;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x5

    .line 39
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lo/getColumnConstraint;->onNavigationEvent:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x6

    .line 43
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    .line 44
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final synthetic zza(Lo/access$502;)Lo/getTimestampSeconds;
    .locals 2

    .line 69
    instance-of v0, p1, Lo/CsatConfig$extraCallback;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lo/CsatConfig$extraCallback;

    .line 72
    invoke-virtual {p1}, Lo/CsatConfig$extraCallback;->newSession()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$extraCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnConstraint;->onPostMessage:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lo/CsatConfig$extraCallback;->asBinder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$extraCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnConstraint;->ICustomTabsCallback:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lo/CsatConfig$extraCallback;->asInterface()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/getColumnConstraint;->onMessageChannelReady:Ljava/lang/Long;

    .line 75
    invoke-virtual {p1}, Lo/CsatConfig$extraCallback;->onTransact()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/extraCallback$extraCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getColumnConstraint;->extraCallback:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/getColumnConstraint;->onNavigationEvent:Ljava/lang/Long;

    return-object p0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of GrantTokenResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()Lo/uploadState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/uploadState<",
            "Lo/CsatConfig$extraCallback;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lo/CsatConfig$extraCallback;->ICustomTabsCallback$Stub$Proxy()Lo/uploadState;

    move-result-object v0

    return-object v0
.end method
