.class public abstract Lo/OaidClient$Info;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OaidClient$Info$onPostMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Lo/OaidClient$Info$onPostMessage;
    .locals 2

    .line 56
    new-instance v0, Lo/Foreground$4$onMessageChannelReady;

    invoke-direct {v0}, Lo/Foreground$4$onMessageChannelReady;-><init>()V

    sget-object v1, Lo/setReferrer;->extraCallback:Lo/setReferrer;

    if-eqz v1, :cond_0

    .line 1095
    iput-object v1, v0, Lo/Foreground$4$onMessageChannelReady;->extraCallback:Lo/setReferrer;

    return-object v0

    .line 1093
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null priority"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/setReferrer;
.end method

.method public abstract extraCallback()Ljava/lang/String;
.end method

.method public abstract onPostMessage()[B
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    invoke-virtual {p0}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    invoke-virtual {p0}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    const-string v1, "TransportContext(%s, %s, %s)"

    .line 47
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
