.class public abstract Lo/getSignInProvider;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Landroid/os/Bundle;Ljava/lang/String;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;Lo/setMultiFactorSession;)Lo/getSignInProvider;
    .locals 10

    const-string v0, "status"

    invoke-static {v0, p1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Lo/setMultiFactorSession;->onMessageChannelReady(I)I

    move-result v3

    const-string p3, "error_code"

    invoke-static {p3, p1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string p3, "bytes_downloaded"

    invoke-static {p3, p1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string p3, "total_bytes_to_download"

    invoke-static {p3, p1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p2, p1}, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->onNavigationEvent(Ljava/lang/String;)D

    move-result-wide p2

    .line 1000
    new-instance p0, Lo/onCodeSent;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->rint(D)D

    move-result-wide p2

    double-to-int v9, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lo/onCodeSent;-><init>(Ljava/lang/String;IIJJI)V

    return-object p0
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Ljava/lang/String;
.end method

.method public abstract asInterface()I
.end method

.method public abstract extraCallback()J
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public abstract onNavigationEvent()J
.end method

.method public abstract onPostMessage()I
.end method
