.class public final Lo/copyMarginsFromCompat$onPostMessage;
.super Lo/run$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/copyMarginsFromCompat;->onMessageChannelReady(Lo/asBinder;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/helpers/BiometricHelper$authenticate$biometricPrompt$1",
        "Landroidx/biometric/BiometricPrompt$AuthenticationCallback;",
        "onAuthenticationError",
        "",
        "errorCode",
        "",
        "errString",
        "",
        "onAuthenticationSucceeded",
        "result",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getServerTime;

.field private synthetic onMessageChannelReady:Lo/getServerTime;

.field private synthetic onPostMessage:Lo/getServerTime;


# direct methods
.method constructor <init>(Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/copyMarginsFromCompat$onPostMessage;->onMessageChannelReady:Lo/getServerTime;

    iput-object p2, p0, Lo/copyMarginsFromCompat$onPostMessage;->extraCallback:Lo/getServerTime;

    iput-object p3, p0, Lo/copyMarginsFromCompat$onPostMessage;->onPostMessage:Lo/getServerTime;

    invoke-direct {p0}, Lo/run$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(ILjava/lang/CharSequence;)V
    .locals 7

    const-string v0, "errString"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1, p2}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    .line 30
    iget-object v1, p0, Lo/copyMarginsFromCompat$onPostMessage;->extraCallback:Lo/getServerTime;

    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lo/copyMarginsFromCompat$onPostMessage;->onMessageChannelReady:Lo/getServerTime;

    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x4

    new-array v2, v1, [Lo/addWrite;

    const/4 v3, 0x0

    .line 1043
    new-instance v4, Lo/addWrite;

    const-string v5, "authentication_type"

    const-string v6, "biometric"

    invoke-direct {v4, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "authentication_result"

    const-string v6, "failure"

    invoke-direct {v4, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "attr_authentication_error_code"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 4043
    new-instance p1, Lo/addWrite;

    const-string v3, "attr_authentication_error_message"

    invoke-direct {p1, v3, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p1, v2, v0

    const-string p1, "pairs"

    .line 34
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p2, "lock_screen_authentication_result"

    .line 33
    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onPostMessage(Lo/run$onMessageChannelReady;)V
    .locals 4

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Lo/run$onNavigationEvent;->onPostMessage(Lo/run$onMessageChannelReady;)V

    .line 42
    iget-object p1, p0, Lo/copyMarginsFromCompat$onPostMessage;->onPostMessage:Lo/getServerTime;

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    .line 5043
    new-instance v1, Lo/addWrite;

    const-string v2, "authentication_type"

    const-string v3, "biometric"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6043
    new-instance v1, Lo/addWrite;

    const-string v2, "authentication_result"

    const-string/jumbo v3, "success"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "pairs"

    .line 44
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "lock_screen_authentication_result"

    .line 43
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
