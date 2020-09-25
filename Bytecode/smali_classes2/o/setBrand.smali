.class public final Lo/setBrand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ICustomTabsCallback:Lo/getFarmBackgroundImage;


# instance fields
.field private final extraCallback:Lo/isUPIEnabled;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lo/getFarmBackgroundImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RevokeAccessOperation"

    invoke-direct {v0, v2, v1}, Lo/getFarmBackgroundImage;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/setBrand;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/setBrand;->onNavigationEvent:Ljava/lang/String;

    .line 3
    new-instance p1, Lo/isUPIEnabled;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lo/isUPIEnabled;-><init>(Lo/getPaymentMode;)V

    iput-object p1, p0, Lo/setBrand;->extraCallback:Lo/isUPIEnabled;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/getPaymentDueDateWeaklyTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 23
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo/getPaymentAmountTitle;->onMessageChannelReady(Lo/PaymentRequestItem;Lo/getPaymentMode;)Lo/getPaymentDueDateWeaklyTyped;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Lo/setBrand;

    invoke-direct {v0, p0}, Lo/setBrand;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 27
    iget-object p0, v0, Lo/setBrand;->extraCallback:Lo/isUPIEnabled;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->extraCallback:Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://accounts.google.com/o/oauth2/revoke?token="

    iget-object v4, p0, Lo/setBrand;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 8
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 11
    sget-object v0, Lcom/google/android/gms/common/api/Status;->onMessageChannelReady:Lcom/google/android/gms/common/api/Status;

    goto :goto_1

    .line 12
    :cond_1
    sget-object v3, Lo/setBrand;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const-string v4, "Unable to revoke access!"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lo/getFarmBackgroundImage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :goto_1
    sget-object v3, Lo/setBrand;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const/16 v4, 0x1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Response Code: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lo/getFarmBackgroundImage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 19
    sget-object v3, Lo/setBrand;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const-string v4, "Exception when revoking access: "

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lo/getFarmBackgroundImage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception v2

    .line 16
    sget-object v3, Lo/setBrand;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const-string v4, "IOException when revoking access: "

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lo/getFarmBackgroundImage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :goto_4
    iget-object v1, p0, Lo/setBrand;->extraCallback:Lo/isUPIEnabled;

    invoke-virtual {v1, v0}, Lo/isUPIEnabled;->onNavigationEvent(Lo/PaymentRequestItem;)V

    return-void
.end method
