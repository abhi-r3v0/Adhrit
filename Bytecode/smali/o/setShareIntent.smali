.class public final Lo/setShareIntent;
.super Lo/updateVoiceButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setShareIntent$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/datadog/android/tracing/internal/net/TracesOkHttpUploader;",
        "Lcom/datadog/android/core/internal/net/DataOkHttpUploader;",
        "endpoint",
        "",
        "token",
        "client",
        "Lokhttp3/OkHttpClient;",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;)V",
        "setEndpoint",
        "",
        "Companion",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/setShareIntent$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setShareIntent$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setShareIntent$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/setShareIntent;->onMessageChannelReady:Lo/setShareIntent$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/propertyName;)V
    .locals 4

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    sget-object v0, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    .line 1026
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 1025
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s/v1/input/%s"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "text/plain;charset=UTF-8"

    .line 11
    invoke-direct {p0, p1, p3, p2}, Lo/updateVoiceButton;-><init>(Ljava/lang/String;Lo/propertyName;Ljava/lang/String;)V

    return-void
.end method
